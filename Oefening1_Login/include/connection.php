<?php
    try{
        $host = 'localhost';
        $database = 'oef1';
        $user = 'root';
        $password = 'root';

        $DBH = new PDO("mysql:host=$host;dbname=$database",$user,$password);
        $DBH->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
    }
    catch(PDOException $e){
        echo $e->getMessage();
    }
