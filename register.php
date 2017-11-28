<?php
require '/static/php/system/database.php';
require '/static/php/system/config.php';
$email = $_POST['email'];
$senha = DBEscape(strip_tags(trim(sha1($_POST['senha']))));
$user = $_POST['user'];
$pinpost = $_POST['pin'];

function validaEmail($email) {
	$conta = "^[a-zA-Z0-9\._-]+@";
	$domino = "[a-zA-Z0-9\._-]+.";
	$extensao = "([a-zA-Z]{2,4})$";
	$pattern = $conta.$domino.$extensao;
	if (ereg($pattern, $email))
	return true;
	else
	return false;
	}

if (!($email) || !($senha) ){
    print "Preencha todos os campos!"; exit();
}
if(!validaEmail($email)){
	print "E-mail invalido"; exit();
}
$dbCheck = DBRead( 'user', "WHERE email = '". $email."'" );
if( $dbCheck ){
	print "^Já utilizaram esse email"; exit();
}
else{
//Abrindo Conexao com o banco de dados
$conexao = mysql_pconnect($hostp,$userp,$passwrdp) or die (mysql_error());
$banco = mysql_select_db($dbp);

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
$limite = date('Y-m-d H:i:s', strtotime('+43800 min'));
$ip=mysql_real_escape_string($_SERVER['REMOTE_ADDR']);
mysql_query("SET NAMES 'utf8'");
mysql_query('SET character_set_connection=utf8');
mysql_query('SET character_set_client=utf8');
mysql_query('SET character_set_results=utf8');
$insert = mysql_query("insert into netflix_user (idcry,email,password,inisession,datec,lastlogin,configurado,ip,expirado) values ('{$antispam}','{$email5}','{$senha}','{$inisession}','{$datec}','{$lastlogin}','{$configurado}','{$ip}','{$limite}')");
$busca  = "SELECT id FROM netflix_user WHERE email = '".$email."'";
$identificacao = mysql_query($busca);
$retorno = mysql_fetch_array($identificacao);
$iduser = $retorno['id'];
setcookie("iduser", $iduser);
setcookie("inisession", $inisession);
$busca2  = "SELECT idcry FROM netflix_user WHERE email = '".$email."'";
$identificacao2 = mysql_query($busca2);
$retorno2 = mysql_fetch_array($identificacao2);
$idcry = $retorno2['idcry'];
setcookie("thecry", $idcry, time()+3600 * 24 * 365);
mysql_close($conexao);
if($insert) {
	print "Cadastrado com sucesso!";
    echo '<script>location.href="dashboard";</script>';
}else {
    print "Ocorreu um erro!";
}
}
?>