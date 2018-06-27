<?php
session_start();

    if(!isset($_SESSION['userid']) or !isset($_SESSION['useremail']) or !isset($_SESSION['userpassword']) or !isset($_SESSION['username'])) {
        header('location:index.html?msg=notloggedin');
        exit();
    }
    else {
        $naam = $_SESSION['username'];
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <h1>
            Welkom,
            <?php
                echo $naam;
            ?>
        </h1>
    </body>
</html>
