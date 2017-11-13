<?php
require 'static/php/system/database.php';
require 'static/php/system/config.php';
$nome = $_POST['name'];

if (!($nome) ){
    print "Preencha todos os campos!"; exit();
}
else{
//Abrindo Conexao com o banco de dados
$conexao = mysql_pconnect("localhost","root","") or die (mysql_error());
$banco = mysql_select_db("netflix");

//Utilizando o  mysql_real_escape_string voce se protege o seu código contra SQL Injection.
$email5 = mysql_real_escape_string($email);
$senha = mysql_real_escape_string($senha);
$inisession = date('Y-m-d H:i:s');
$datec = date('Y-m-d H:i:s');
$lastlogin = date('Y-m-d H:i:s');
$configurado = '0';
$num1 = rand(15, 50);
$num2 = rand(121235321, 20);
$antispam5 = $num1 * $num2;
$antispam = DBEscape(strip_tags(trim(sha1($antispam5))));
$ip=mysql_real_escape_string($_SERVER['REMOTE_ADDR']);
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
$insert = mysql_query("insert into netflix_profiles (nome,datec,iduser) values ('{$nome}','{$datec}','{$iduser}')");
mysql_close($conexao);
if($insert) {
    $iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
    $userUP['configurado'] = 1;
    if( DBUpdate( 'user', $userUP, "id = '{$iduser}'" ) ){
        echo '';
    } 
	print "Perfil criado com sucesso";
    echo '<script>location.href="dashboard.php";</script>';
}else {
    print "Ocorreu um erro!";
}
}
?>