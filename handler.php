<?php

/**
 * Connexion simple à la base de données via PDO !
 */
$db = new PDO('mysql:host=chat;dbname=chat-db;charset=utf8', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);

/**
 * Analyse de la demande faite via l'URL (GET) afin de déterminer si on doit récupérer les messages ou en écrire un message
 */
$task = "list";

if(array_key_exists("task", $_GET)){
  $task = $_GET['task'];
}

if($task == "write"){
  postMessage();
} else {
  getMessages();
}

/**
 * Pour la reccupération des messages, il faut envoyer du JSON
 */
function getMessages(){
  global $db;

  // 1. Envoie une requête à la base de données pour sortir les 15 derniers messages
  $resultats = $db->query("SELECT * FROM messages ORDER BY created_at DESC LIMIT 15");
  
  // 2. Traitement des résultats
  $messages = $resultats->fetchAll();
  
  // 3. Affichage des données sous forme de JSON
  echo json_encode($messages);
}
/**
 * Pour écrire un message, il faut analyser les paramètres envoyés en POST et les sauvegarder dans la base de données
 */
function postMessage(){
  global $db;
  // 1. Analyse des paramètres passés en POST (author, content)
  
  if(!array_key_exists('author', $_POST) || !array_key_exists('content', $_POST)){

    echo json_encode(["status" => "error", "message" => "One field or many have not been sent"]);
    return;

  }

  $author = $_POST['author'];
  $content = $_POST['content'];

  // 2. Création d'une requête qui permettra d'insérer ces données
  $query = $db->prepare('INSERT INTO messages SET author = :author, content = :content, created_at = NOW()');

  $query->execute([
    "author" => $author,
    "content" => $content
  ]);

  // 3. Donner un statut de succes ou d'erreur au format JSON
  echo json_encode(["status" => "success"]);
}
