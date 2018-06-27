<?php
    $ww = "test";
    $hash = password_hash($ww,PASSWORD_DEFAULT);

    echo $hash;

?>
