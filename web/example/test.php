<?php

$host = 'localhost';
$user = 'root';
$pwd = 'root'

if (function_exists('mysqli_connect')) {
    $link = mysqli_connect($host, $user, $pwd);
    if (!$link) {
        die('Could not connect: ' . mysqli_connect_error());
    }
    echo 'Connected successfully';
    mysqli_close($link);
} else {
    $link = mysql_connect($host, $user, $pwd);
    if (!$link) {
        die('Could not connect: ' . mysql_error());
    }
    echo 'Connected successfully';
    mysql_close($link);
}
