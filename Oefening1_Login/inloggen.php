<?php
session_start();

    if (!isset($_POST['btnsubmit'])) {
        header('location:index.html?msg=ramp');
        exit();
    }

    if (empty($_POST['user']) AND empty($_POST['password'])) {
        header('location:index.html?msg=Nico');
        exit();
    }
    else {
        $login=trim($_POST['user']);
        $pwd=trim($_POST['password']);
    }

    include_once('include/connection.php');

    $STH=$DBH->prepare("SELECT * FROM tbluser WHERE UserEmail = :login");
    $STH->bindParam(':login',$login);
    $STH->execute();
    $STH->setFetchMode(PDO::FETCH_OBJ);

    while ($row=$STH->fetch()) {
        $userid=$row->UserID;
        $username=$row->UserNaam;
        $useremail=$row->UserEmail;
        $userpassword=$row->UserPassword;
    }

    if (password_verify($pwd,$userpassword)) {
        $_SESSION['userid'] = $userid;
        $_SESSION['username'] = $username;
        $_SESSION['useremail'] = $useremail;
        $_SESSION['userpassword'] = $userpassword;

        header('location:succes.php');
        exit();
    }
    else {
        header('location:index.html?msg=wrongpass');
        exit();
    }
?>
