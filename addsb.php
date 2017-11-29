<?php
require 'static/php/system/database.php';
require 'static/php/system/config.php';
$tiposa = $_POST['tiposa'];
$ep = $_POST['ep'];
$mp4 = $_POST['mp4'];


$iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
$user = DBRead('user', "WHERE id = '{$iduser}' LIMIT 1 ");

if($user){
$user = $user[0];
}else{
echo '<script>location.href="dashboard";</script>';	
}
if($user['admin'] == 0){
 echo '';
}
else{

if (!($tiposa) || !($ep) || !($mp4) ){
    print "Preencha todos os campos!"; exit();
}


else{
//Abrindo Conexao com o banco de dados
$conexao = mysql_pconnect($hostp,$userp,$passwrdp) or die (mysql_error());
$banco = mysql_select_db($dbp);

//Utilizando o  mysql_real_escape_string voce se protege o seu código contra SQL Injection.
$epb = mysql_real_escape_string($ep);
$tipob = mysql_real_escape_string($tiposa);
$mp4b = mysql_real_escape_string($mp4);
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$insert = mysql_query("insert into netflix_videos (idserie,ep,video) values ('{$tipob}','{$epb}','{$mp4b}')");
mysql_close($conexao);
if($insert) {
	print "Episodio adicionado com sucesso";
    echo '<script>location.href="admin.php?action=filme";</script>';
}else {
    print "Ocorreu um erro!";
}
}
}
?>