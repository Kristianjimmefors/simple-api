<?php

try {
    //lägg till charset=utf8 när man har med å ä ö i databasen
    $dbh = new PDO('mysql:host=localhost;dbname=fish_truck; charset=utf8', 'fishowner', 'fish');
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}