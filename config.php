<?php

$name = $_POST['name'];
$surname = $_POST['surname'];
$age = $_POST['age'];
$db = new PDO("mysql:dbname=vz413309_form;host=vz413309.mysql.tools", 'vz413309_form', '^3iN2K4)ge');
$sql = "INSERT INTO tbl_form (name, surname, age) VALUES ('$name', '$surname', '$age')";

$db->query($sql);
