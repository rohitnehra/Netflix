<?php
require 'static/php/system/database.php';
require 'static/php/system/config.php';
?>
<?php
if(isset($_COOKIE['iduser']) and (isset($_COOKIE['inisession']))){
	
	
			$iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
			$user = DBRead('user', "WHERE id = '{$iduser}' LIMIT 1 ");
		
		if($user){
			$user = $user[0];
			}else{
			echo '<script>location.href="dashboard.php";</script>';	
			}
			
			
	if(isset($_COOKIE['usuario'])){
		$idperfil = DBEscape( strip_tags(trim($_COOKIE['usuario']) ) );
		$perfil = DBRead('profiles', "WHERE id = '{$idperfil}' LIMIT 1 ");

		if($perfil){
			$perfil = $perfil[0];
			}else{
			echo '<script>location.href="account.php?error";</script>';	
			}
			if($perfil['iduser'] <> $user['id']){
				setcookie("iduser" , "");
				setcookie("inisession" , "");
				setcookie("perfil" , "");
				setcookie("usuario" , "");
				header("location: account.php?error");
			}

		
		
	}
	}

	if(empty($_COOKIE['iduser']) and (empty($_COOKIE['inisession']))){
		echo '<script>location.href="account.php";</script>';
	}
	if(empty($_COOKIE['inisession'])){
		echo '<script>location.href="account.php";</script>';
	}
	if(empty($_COOKIE['iduser'])){
		echo '<script>location.href="account.php";</script>';
	}
	if($user['configurado'] == 0){
		echo '<script>location.href="configure.php";</script>';
	}

	?>
<head>
<title>
<?php
ob_start();
if(empty($_COOKIE['usuario'])){
    echo 'Change Profile';
}
else{
	echo 'Netflix';
}

?>
</title>
<link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico"/>
</head>

<style>
*{
	margin: 0;
	padding: 0;
	font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;
	outline: none;
    list-style:none;
}
</style>

<html>
<?php 
if(empty($_COOKIE['usuario'])){
?>
<style>
body{
	background: #141414;
}

.center{
	margin: 0px auto;
	position: relative;
}

.change-profile{
	width: 100%;
	height: 25vw;
	margin-top: 9.5vw;
	}

	.alc{
		text-align: center;
	}

	.who{
		color: #fff;
		font-size: 3.5vw;
		line-height: 1.15;
	}

	.header{
		width: 100%;
		height: 3.5vw;
		background-image: -webkit-linear-gradient(top,rgba(0,0,0,.7) 10%,rgba(0,0,0,0));
	}

	.header svg{
		height: 3vw;
		margin-top: 1.1vw;
		margin-left: 3vw;
		opacity: .8;
		cursor: pointer;
	}

	.header svg:hover{
		opacity: 1;
	}

	.people1{
		background-image: url(/static/avatar/user1.png);
	}


	.peopleplus{
		background-image: url(/static/avatar/plus.png);
	}

	.people2{
		background-image: url(/static/avatar/user2.png);
	}

	.people3{
		background-image: url(/static/avatar/user3.png);
	}

	.people4{
		background-image: url(/static/avatar/user4.png);
	}

	.kids{
		background-image: url(/static/avatar/kids.png);
	}

	.avatar1{
		height: 10vw;
		width: 10vw;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
		position: relative;
		text-decoration: none;
		border: 0.3vw solid rgba(0,0,0,.4);
		background-repeat: no-repeat;
		-moz-background-size: cover;
		background-size: cover;
		background-color: #333;
		margin-top: 2vw;
		display: inline-block;
		margin-left: -8vw;
		cursor: pointer;
		left: 13.6vw;
	}

	.avatar1:hover{
		border: 0.3vw solid #fff;
	}

	.avatar2{
		height: 8vw;
		width: 8vw;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
		position: relative;
		text-decoration: none;
		border: 0.3vw solid rgba(0,0,0,.4);
		background-repeat: no-repeat;
		-moz-background-size: cover;
		background-size: cover;
		background-color: #333;
		margin-top: 2vw;
		display: inline-block;
		margin-left: 1vw;
		cursor: pointer;
		
	}

	.avatar2:hover{
		border: 0.3vw solid #fff;
	}

	.avatar2:focus{
		border: 0.3vw solid #fff;
	}


	.ava-who{
		color: grey;
		font-size: 1.3vw;
		position: relative;
		text-align: center;
	}

	button:hover + .pessoas .ava-who{
		color: #fff;
	}

	.pessoas{
		display: inline-block;
		width: 9.6vw;
		left: 0;
		position: relative;
		top: 2.2vw;
		left: 3.6vw;
	}

	.what{
		width: 70vw;
	}

</style>
<body>


<div class="header">

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 81.387"><g fill="#b81d24"><path d="M256.09 76.212c4.178.405 8.354.84 12.52 1.29l9.198-22.712 8.743 24.807c4.486.562 8.97 1.152 13.44 1.768l-15.328-43.501L299.996 0H287.01l-.135.186-8.283 20.455L271.32.003h-12.822l13.237 37.565-15.644 38.644zM246.393 75.322V0h-12.817v74.265c4.275.33 8.552.684 12.817 1.056M150.113 71.11c3.46 0 6.916.026 10.366.054V43.492h15.397V31.708H160.48v-19.91h17.733V0h-30.6v71.12c.831 0 1.666-.013 2.5-.01M110.319 71.83c4.27-.152 8.544-.28 12.824-.384V11.8h11.98V.003H98.339V11.8h11.982v60.03h-.002zM12.295 79.772V34.897L27.471 77.96c4.667-.524 9.341-1.017 14.028-1.483V.001H29.201v46.483L12.825.001H0v81.384h.077c4.063-.562 8.14-1.096 12.218-1.613M85.98 11.797V.001H55.377V75.202a1100.584 1100.584 0 0 1 30.578-2.211V61.184c-5.916.344-11.82.74-17.71 1.181V43.497h15.397V31.706H68.245V11.797H85.98zM203.614 60.62V-.003h-12.873v71.876c10.24.376 20.44.9 30.606 1.56V61.619c-5.9-.381-11.81-.712-17.733-1"/></g></svg>
</div>

<div class="change-profile center">

<div class="who alc">Quem está assistindo?</div>
<div class="what center">
<?php
$peoples = DBRead( 'profiles', "WHERE id and iduser = '".$user['id']."'  ORDER BY id DESC LIMIT 5" );
if (!$peoples)
echo '';	
else  
	foreach ($peoples as $people):	 
?>
<button style="border:none; background: transparent;" name="people">
<a style="color: transparent" href="swift.php?id=<?php echo $people['id'] ?>&user=<?php echo $user['id']; ?>&what=<?Php echo $user['idcry']; ?>">
<div class="avatar1 people<?Php echo $people['foto'] ?>"></div></a>
</button>
<div class="pessoas"><p class="ava-who"><?php echo $people['nome']; ?></p></div>




	<?php endforeach;?>

	<style>
	.ata{
		background: transparent;
	}
	</style>
<?php
require 'db.php';
$totaldepost = mysql_query("SELECT * FROM netflix_profiles WHERE iduser = $iduser ");
$totaldepost = mysql_num_rows($totaldepost);
if($totaldepost < 5){
?>
	<button style="border:none; background: transparent;" name="people">
<div class="avatar1 peopleplus" id="addpeople2"></div>
</button>

<div class="pessoas"><p class="ava-who">Adicionar perfil</p></div>
<?php } ?>
	<style>
	.ger{
	border: 1px solid grey;
    color: grey;
    text-transform: uppercase;
    padding: .5em 1.5em;
    letter-spacing: 2px;
    cursor: pointer;
    font-size: 1.2vw;
	background: transparent;
	position: relative;
	top: 7vw;
	}

	.ger:hover{
		color: #fff;
		border: 1px solid #fff;
	}
	</style>	
	<center><button class="ger">GERENCIAR PERFIS</button></center>

	<style>
	.addprofile{
		width: 100%;
		position: fixed;
		height: 100%;
		background: rgba(0,0,0,.50);
		top: 0;
		left: 0;
	}

	.tabadd{
		position: relative;
		margin: 0px auto;
		width: 50%;
		height: 30vw;
		background: #141414;
		top: 10vw;
		border-radius: 0.2vw;
	}

	.close{
		float: right;
		right: 1vw;
		top: 1vw;
		position: relative;
	 	width: 2.5vw;
		height: 2.5vw;
		cursor: pointer;
		padding: 0.3vw;
	}

	.close:hover{
		background: rgba(0,0,0,.50);
	}

	.close svg{
		fill: #fff;
	}

	input[type="radio"]{
		display:none;
	 }
	 #postadd{
		 display: none;
	 }
	</style>
	<div class="addprofile" id="postadd">

	<div class="tabadd">
	<div class="close" id="close">
	<svg height="2.5vw"  width:"2.5vw" id="Layer_1" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M437.5,386.6L306.9,256l130.6-130.6c14.1-14.1,14.1-36.8,0-50.9c-14.1-14.1-36.8-14.1-50.9,0L256,205.1L125.4,74.5  c-14.1-14.1-36.8-14.1-50.9,0c-14.1,14.1-14.1,36.8,0,50.9L205.1,256L74.5,386.6c-14.1,14.1-14.1,36.8,0,50.9  c14.1,14.1,36.8,14.1,50.9,0L256,306.9l130.6,130.6c14.1,14.1,36.8,14.1,50.9,0C451.5,423.4,451.5,400.6,437.5,386.6z"/></svg>
	</div>
		<center>
		<h1 style="color: #fff; font-size: 2vw;padding: 1vw;">Adicionar perfil</h1>

		 <style>

input[type="radio"] + label
{
    cursor:pointer;
}

input[type="radio"]:checked + label .avatar2 {
    border: 3px solid #fff;
}
		 </style>
		
<?php
		$iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
		$totaldeperfil2 = mysql_query("SELECT * FROM netflix_profiles WHERE iduser = $iduser ");
		$totaldeperfil = mysql_num_rows($totaldeperfil2);
?>
	  <form action="#" method="post">
		<div id="radio">
		<input type="radio" id="radio1" class="radios" name="radio" checked="checked" value="1">
		<label for="radio1">
		<div class="avatar2 people<?php
		if($totaldeperfil == 0){
			echo '1';
		}
		else if($totaldeperfil == 1){
			echo '2';
		}
		else if($totaldeperfil == 2){
			echo '3';
		}
		else if($totaldeperfil == 3){
			echo '4';
		}
		else if($totaldeperfil == 4){
			echo '2';
		}
		?>"></div>
		</label>
	  </div>
<input type="text" name="name" id="name" placeholder="Nome do perfil" style="font-size: 1vw; border: none;width: 90%; padding: 0.5vw; border-radius: 0.1vw; position: relative; top: 2vw; height: 2.5vw;"/>
<button class="config-btn" id="concluido">Concluido</button>
</form>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $("#concluido").click(function() {
        var name = $("#name");
        var namePost = name.val();
		var radio = $(".radios");
        var radioPost = radio.val();
        $.post("configurando.php?addprofile=<?Php echo $user['idcry']; ?>", {name: namePost,radio: radioPost},
        function(data){
         $("#resposta").html(data);
         }
         , "html");
         return false;
    });
});
</script>

<script>
  $('#addpeople2').click(function(){
	  $("#postadd").fadeIn(600);
    });
	$('#close').click(function(){
	  $("#postadd").fadeOut(600);
    });
</script>

<div id="resposta">

</div>
<style>
#resposta{
    width: 30vw;
    color: red;
    position: relative;
    top: 6vw;
    height: auto;
    margin: 0px auto;
    text-align: center;
    border-radius: 0.3vw;
    font-size: 1.5vw;
}
</style>

<style>
.config-btn{
                display: inline-block;
                text-decoration: none;
                line-height: 1rem;
                vertical-align: middle;
                cursor: pointer;
                font-weight: 700;
                letter-spacing: .025rem;
                -webkit-border-radius: 2px;
                -moz-border-radius: 2px;
                border-radius: 2px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                text-align: center;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border: none;
                position: relative;
                min-height: 3.6vw;
                -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.25);
                -moz-box-shadow: 0 1px 1px rgba(0,0,0,.25);
                box-shadow: 0 1px 1px rgba(0,0,0,.25);
                color: #fff;
                width: 30vw;
                background: #e50914;
                font-size: 1.5vw;
				top: 5vw;
            }
</style>


		</center>
	</div>

	</div>



<!-- <button style="border:none; background: transparent;" name="people2"><div class="avatar1 people2"></div></button>
<div class="pessoas"><p class="ava-who">Vitor</p></div>

<button style="border:none; background: transparent;" name="people3"><div class="avatar1 people3"></div></button>
<div class="pessoas"><p class="ava-who">LucasAD</p></div>

<button style="border:none; background: transparent;" name="people4"><div class="avatar1 people4"></div></button>
<div class="pessoas"><p class="ava-who">Salviti</p></div>

<button style="border:none; background: transparent;" name="kids"><div class="avatar1 kids"></div></button>
<div class="pessoas"><p class="ava-who">Kids</p></div>
</div> -->


</div>
</body>
<?php } else{?>

	<style>
body{
	background: #141414;
}

.header{
	width: 100%;
	height: 3.8vw;
	background: rgba(0, 0, 0, 0.7);
	position: relative;
	left: 0;
	top: 0;
	z-index: 10000;
}

	.header svg{
		height: 1.8vw;
		margin-top: 1.1vw;
		margin-left: 3vw;
		opacity: .8;
		cursor: pointer;
	}

	.header svg:hover{
		opacity: 1;
	}

	.right-user{
		float: right;
		width: 20%;
		height: inherit;
		right: 3vw;
		position: relative;
	}

	.people1{
		background-image: url(/static/avatar/user1.png);
	}

	.people2{
		background-image: url(/static/avatar/user2.png);
	}

	.people3{
		background-image: url(/static/avatar/user3.png);
	}

	.people4{
		background-image: url(/static/avatar/user4.png);
	}

	.kids{
		background-image: url(/static/avatar/kids.png);
	}

	.avatar{
		height: 1.8vw;
		width: 1.8vw;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
		position: relative;
		text-decoration: none;
		background-repeat: no-repeat;
		-moz-background-size: cover;
		background-size: cover;
		background-color: #333;
		margin-top: 1vw;
		display: inline-block;
		cursor: pointer;
		float: right;
		right: 5vw;
	}

	.people{
		width: 5vw;
		height: 2vw;
		top: 1vw;
		position: absolute;
		float: right;
		right: 0;
		cursor: pointer;
	}

	.seta1{
	position: relative;
    border-style: solid;
    border-width: 0.3vw 0.3vw 0 0.3vw;
    border-color: #fff transparent transparent transparent;
	top: 1vw;
	right: -0.5vw;
	float: right;
	}

	.apresent{
		width: 100%;
		height: 50vw;
		top: 0vw;
		background-size: cover;
		position: relative;
	}

	.aaa{
		background: linear-gradient(to bottom, #14141494, #141414);
		width: 100%;
		position: absolute;
		bottom: 0;
		height: 7vw;
	}

	.logo-serie{
		height: 12vw;
		width: 30vw;
		position: relative;
		z-index: 1000;
		top: 17vw;
		left: 5vw;
	}

	.apresent-info{
		width: 30vw;
		height: 9vw;
		position: absolute;
		bottom: 11vw;
		left: 5vw;
	}

	.apresent-info p{
		color: #fff;
		font-size: 1.7vw;
		font-weight: 700;
		text-shadow: 1px 1px 1px #000;s
	}

	.apresent-info p2{
		color: #fff;
		font-size: 1.3vw;
		font-weight: 700;
		line-height: 1.2;
		text-shadow: 1px 1px 1px #000;
	}

	.videos-tab{
		width: 100%;
		height: 8vw;
		position: relative;
		top: -7vw;
	}

	.videos-tab cont{
		font-size: 1.4vw;
    color: #e5e5e5;
    font-weight: 700;
    margin: 0 4% .5em 4%;
    text-decoration: none;
    display: inline-block;
    min-width: 6em;
	margin-top: 1vw;
	}
	</style>
<body class="logado" style="overflow-x: hidden; overflow-y: auto;">

<?php 
$inicio = $user['datec'];
$expirado = date('Y-m-d', strtotime('+43700 min'));
if (strtotime($inicio) >= strtotime($expirado)) {
	?>

<style>

.logado{
	overflow-x: hidden;
	overflow-y: auto;
}

.error-msg{
	width: 100%;
	background: #000;
	height: 12.5vw;
	position: relative;
	top: 0;
	left: 0;
	color: #fff;
}

.error-h1{
	color: #fff;
    position: relative;
    vertical-align: middle;
    font-size: 1.5vw;
    font-weight: 400;
	top: 2.5vw;
	left: 2vw;
}

.error-msg p{
	position: relative;
	top: 3vw;
	left: 2vw;
	font-size: 1.1vw;
}

.pagar{
	float: left;
	position: relative;
	width: 15vw;
	height: 2.5vw;
	top: 4vw;
	left: 2vw;
	border: none;
	cursor: pointer;
	-webkit-box-shadow: 0 1px 1px rgba(0,0,0,.25);
	-moz-box-shadow: 0 1px 1px rgba(0,0,0,.25);
    box-shadow: 0 1px 1px rgba(0,0,0,.25);
	color: #fff;
    background: #e50914;
	font-size: 1.2vw;
}

.center-error{
	max-width: 50vw;
	height: inherit;
	margin: 0px auto;
}
</style>

<div class="error-msg">

<div class="center-error">
<h1 class="error-h1">Parece que seu mês grátis acabou.</h1>
<p>Para efetuar efetuar pagamento, clique no botão abaixo!</p>

<button class="pagar">Efetuar pagamento</button>
</div>
</div>

<?php } ?>

<div class="header" id="headera" style="z-index: 10000000;">

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 81.387"><g fill="#b81d24"><path d="M256.09 76.212c4.178.405 8.354.84 12.52 1.29l9.198-22.712 8.743 24.807c4.486.562 8.97 1.152 13.44 1.768l-15.328-43.501L299.996 0H287.01l-.135.186-8.283 20.455L271.32.003h-12.822l13.237 37.565-15.644 38.644zM246.393 75.322V0h-12.817v74.265c4.275.33 8.552.684 12.817 1.056M150.113 71.11c3.46 0 6.916.026 10.366.054V43.492h15.397V31.708H160.48v-19.91h17.733V0h-30.6v71.12c.831 0 1.666-.013 2.5-.01M110.319 71.83c4.27-.152 8.544-.28 12.824-.384V11.8h11.98V.003H98.339V11.8h11.982v60.03h-.002zM12.295 79.772V34.897L27.471 77.96c4.667-.524 9.341-1.017 14.028-1.483V.001H29.201v46.483L12.825.001H0v81.384h.077c4.063-.562 8.14-1.096 12.218-1.613M85.98 11.797V.001H55.377V75.202a1100.584 1100.584 0 0 1 30.578-2.211V61.184c-5.916.344-11.82.74-17.71 1.181V43.497h15.397V31.706H68.245V11.797H85.98zM203.614 60.62V-.003h-12.873v71.876c10.24.376 20.44.9 30.606 1.56V61.619c-5.9-.381-11.81-.712-17.733-1"/></g></svg>

<div class="right-user">

<?php
$peoples = DBRead( 'profiles', "WHERE id = '".$_COOKIE['usuario']."' and iduser = '".$user['id']."'  ORDER BY id DESC LIMIT 1" );
if (!$peoples)
echo '';	
else  
	foreach ($peoples as $people):	 
?>
<div class="avatar people<?php echo $people['foto'] ?>"></div>
	<div class="people">
	<p style="color: #fff; position: relative; float: left;left: 0.5vw;margin-top:0.5vw;font-size: 0.8vw;"><?Php echo $people['nome']; ?>	<span class="seta"></span></p>
	</div>

	<?php endforeach;?>
</div>

</div>

<script>
var headerstyle = document.getElementById('headera');
window.onscroll = function(){
var top = window.pageYOffset || document.documentElement.scrollTop
if( top > 100 ) {
headerstyle.style = 'background: rgba(0, 0, 0, 0.7); position: fixed;';
}else{
headerstyle.style = 'position: relative; background-image: linear-gradient(#000 0%, transparent 100%);';
}
}
</script>



<div class="apresent">
<?php
$animels2 = DBRead( 'series', "WHERE id ORDER BY id DESC LIMIT 1" );
 if (!$animels2)
	echo "";
else 
	foreach ($animels2 as $animel):
 ?>
<img src="static/videos/<?php echo $animel['logo']; ?>" class="logo-serie"></img>
<div class="aaa"></div>
<div class="apresent-info">

<style>

.apresent{
	background-image: url(static/videos/<?php echo $animel['fotoback']; ?>);
}

</style>

<p><?php echo $animel['name']; ?></p>
<p2>
<?php
	$str2 = nl2br( $animel['desct'] );
	$len2 = strlen( $str2 );
	$max2 = 200;
   if( $len2 <= $max2 )
   echo $str2;
	else    
   echo substr( $str2, 0, $max2 ) . '...'?>
</p2><?php endforeach; ?>
</div>
</div>





<?php
$animels52 = DBRead( 'history', "WHERE id and idpeople = '". $user['id'] ."' and perfil = '". $perfil['id'] ."'ORDER BY id ASC LIMIT 1" );
 if (!$animels52)
	echo "
		<p style='width: auto;color: #fff; font-size: 1.5vw; position: relative; left: 3.5vw; top: -3vw;'>Que pena você não assistiu nada ainda, assista algo para aparecer aqui</p>
	";
else 
	foreach ($animels52 as $animel5):
 ?>



<div class="videos-tab" style="top: -8vw; position: relative;">
<cont>Continuar assistindo como <?php echo $perfil['nome'];  ?></cont>
<style>
.videos-tab{
	width: 100%;
}
.video-a{
	position: relative;
	height: auto;
	overflow: hidden;
	display: flex;
	-webkit-transition: all 1s; /* Safari */
    transition: all 1s;
}
.video{
	margin-left: 0.8vw;
	display: inline-block;
	left: 2.5vw;
	position: relative;
	cursor: pointer;
	box-sizing: border-box;
	webkit-transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
    -o-transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
    -moz-transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
    transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
	opacity: 0.7;
}

.video .focus{
	height: 9vw;
    width: 16vw;
	position: relative;
}

.video:hover{
	-ms-transform: scale(1.3, 1.3); /* IE 9 */
    -webkit-transform: scale(1.3, 1.3); /* Safari */
    transform: scale(1.3, 1.3);
	position: relative;
	z-index: 2500;
	opacity: 1;
}


.left-i{
	float: left;
	height: 9vw;
	width: 2.5vw;
	left: 0.2vw;
	background: rgba(0,0,0,.50);
	position: absolute;
	cursor: pointer;
	z-index: 3000;
}

.left-i svg{
	fill: #fff;
	position: absolute;
	top: 3vw;
}

.right-i{
	float: right;
	height: 9vw;
	width: 2.5vw;
	right: 0vw;
	background: rgba(0,0,0,.50);
	position: absolute;
	z-index: 3000;
	cursor: pointer;
}

.right-i svg{
	fill: #fff;
	position: absolute;
	top: 3vw;
}

.shiftLeft { 
  transform: translate3d(-40px, 0, 0);
}

.shiftRight { 
  transform: translate3d(40px, 0, 0);
}

#scroll{
	transition:all 0.3s ease;
}
</style>
<?php
require 'db.php';
$totaldepost = mysql_query("SELECT * FROM netflix_series WHERE id ");
$totaldepost = mysql_num_rows($totaldepost);
if($totaldepost >= 6){
?>
<div class="left-i" onclick="ScrollByRight()">
<svg enable-background="new 0 0 32 32" height="32px" id="Layer_1" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M7.701,14.276l9.586-9.585c0.879-0.878,2.317-0.878,3.195,0l0.801,0.8c0.878,0.877,0.878,2.316,0,3.194  L13.968,16l7.315,7.315c0.878,0.878,0.878,2.317,0,3.194l-0.801,0.8c-0.878,0.879-2.316,0.879-3.195,0l-9.586-9.587  C7.229,17.252,7.02,16.62,7.054,16C7.02,15.38,7.229,14.748,7.701,14.276z" fill="#fff"/></svg>
</div>

<div class="right-i" onclick="ScrollByLeft()">
<svg enable-background="new 0 0 32 32" height="32px" id="Layer_1" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M24.291,14.276L14.705,4.69c-0.878-0.878-2.317-0.878-3.195,0l-0.8,0.8c-0.878,0.877-0.878,2.316,0,3.194  L18.024,16l-7.315,7.315c-0.878,0.878-0.878,2.317,0,3.194l0.8,0.8c0.878,0.879,2.317,0.879,3.195,0l9.586-9.587  c0.472-0.471,0.682-1.103,0.647-1.723C24.973,15.38,24.763,14.748,24.291,14.276z" fill="#fff"/></svg>
</div>

<?php } ?>

<div class="video-a" id="scroll">

<?php
$animels52 = DBRead( 'history', "WHERE id and idpeople = '". $user['id'] ."' and perfil = '". $perfil['id'] ."'ORDER BY id ASC LIMIT 40" );
 if (!$animels52)
	echo "";
else 
	foreach ($animels52 as $animel5):
 ?>


<?php
$videoh = $animel5['idserie'];
$animels2 = DBRead( 'series', "WHERE id = $videoh ORDER BY id ASC LIMIT 1" );
 if (!$animels2)
	echo "";
else 
	foreach ($animels2 as $animel):
 ?>
<a href="watch.php?id=<?php echo $animel5['idvideo'];?>">
<div class="video">
<img src="static/videos/<?php echo $animel['foto']; ?>" class="focus"/>
</div>
</a>






<?php endforeach; endforeach;?>
</div>


	<?php endforeach; ?>





<div class="videos-tab" style="position: relative; top: 2vw;">
<cont>Em alta</cont>
<style>
.videos-tab{
	width: 100%;
}
.video-a{
	position: relative;
	height: auto;
	overflow: hidden;
	display: flex;
	-webkit-transition: all 1s; /* Safari */
    transition: all 1s;
}
.video{
	margin-left: 0.8vw;
	display: inline-block;
	left: 2.5vw;
	position: relative;
	cursor: pointer;
	box-sizing: border-box;
	webkit-transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
    -o-transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
    -moz-transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
    transition: all .54s cubic-bezier(.5,0,.1,1) 0s,opacity .44s cubic-bezier(.5,0,.1,1) .1s;
	opacity: 0.7;
}

.video .focus{
	height: 9vw;
    width: 16vw;
	position: relative;
}

.video:hover{
	-ms-transform: scale(1.3, 1.3); /* IE 9 */
    -webkit-transform: scale(1.3, 1.3); /* Safari */
    transform: scale(1.3, 1.3);
	position: relative;
	z-index: 2500;
	opacity: 1;
}


.left-i{
	float: left;
	height: 9vw;
	width: 2.5vw;
	left: 0.2vw;
	background: rgba(0,0,0,.50);
	position: absolute;
	cursor: pointer;
	z-index: 3000;
}

.left-i svg{
	fill: #fff;
	position: absolute;
	top: 3vw;
}

.right-i{
	float: right;
	height: 9vw;
	width: 2.5vw;
	right: 0vw;
	background: rgba(0,0,0,.50);
	position: absolute;
	z-index: 3000;
	cursor: pointer;
}

.right-i svg{
	fill: #fff;
	position: absolute;
	top: 3vw;
}

.shiftLeft { 
  transform: translate3d(-40px, 0, 0);
}

.shiftRight { 
  transform: translate3d(40px, 0, 0);
}

#scroll{
	transition:all 0.3s ease;
}
</style>
<?php
require 'db.php';
$totaldepost = mysql_query("SELECT * FROM netflix_series WHERE id ");
$totaldepost = mysql_num_rows($totaldepost);
if($totaldepost >= 6){
?>
<div class="left-i" onclick="ScrollByRight()">
<svg enable-background="new 0 0 32 32" height="32px" id="Layer_1" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M7.701,14.276l9.586-9.585c0.879-0.878,2.317-0.878,3.195,0l0.801,0.8c0.878,0.877,0.878,2.316,0,3.194  L13.968,16l7.315,7.315c0.878,0.878,0.878,2.317,0,3.194l-0.801,0.8c-0.878,0.879-2.316,0.879-3.195,0l-9.586-9.587  C7.229,17.252,7.02,16.62,7.054,16C7.02,15.38,7.229,14.748,7.701,14.276z" fill="#fff"/></svg>
</div>

<div class="right-i" onclick="ScrollByLeft()">
<svg enable-background="new 0 0 32 32" height="32px" id="Layer_1" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M24.291,14.276L14.705,4.69c-0.878-0.878-2.317-0.878-3.195,0l-0.8,0.8c-0.878,0.877-0.878,2.316,0,3.194  L18.024,16l-7.315,7.315c-0.878,0.878-0.878,2.317,0,3.194l0.8,0.8c0.878,0.879,2.317,0.879,3.195,0l9.586-9.587  c0.472-0.471,0.682-1.103,0.647-1.723C24.973,15.38,24.763,14.748,24.291,14.276z" fill="#fff"/></svg>
</div>

<?php } ?>

<div class="video-a" id="scroll">

<?php
$animels2 = DBRead( 'series', "WHERE id ORDER BY id ASC LIMIT 40" );
 if (!$animels2)
	echo "";
else 
	foreach ($animels2 as $animel):
 ?>

<div class="video" id="click<?php echo $animel['id']; ?>">
<img src="static/videos/<?php echo $animel['foto']; ?>" class="focus"/>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
  $('#click<?php echo $animel['id']; ?>').click(function(){
	$("#infor").fadeIn(600);
				$.post('request.php?serie=<?php echo $animel['id']; ?>>', function (html) {
				$('#infor').html(html);
				});
    });
</script>





<?php endforeach;?>
</div>














</div>

<style>

.conteudo-info{
	width: 100%;
	position: relative;
	height: 26vw;
	background: #000;
	top: 7vw;
	display: none;
	color: #fff;
}

.informa h1{
	padding: 2vw;
	font-size: 2.2vw;
}

.informa .desct{
	width: 35vw;
	padding-left: 2vw;
	z-index: 50;
}

.baixo-desc{
	width: 100%;
	position: absolute;
	bottom: 0;
	height: 3vw;
	background: rgba(0,0,0,.50);
	z-index: 1060;
}

.feels{
	width: 9vw;
	position: relative;
	top: 1.3vw;
	text-align: center;
	display: inline-block;
	margin-left: 2vw;
	cursor: pointer;
	z-index: 50;
}

.feels:hover{
	border-bottom: 0.2vw solid red;
}

.feels-ativo{
	border-bottom: 0.2vw solid red;
}

.close{
		float: right;
		right: 1vw;
		top: 1vw;
		position: relative;
	 	width: 2vw;
		height: 2vw;
		cursor: pointer;
		padding: 0.3vw;
		z-index: 1250;
	}

	.close:hover{
		background: rgba(0,0,0,.50);
	}

	.close svg{
		fill: #fff;
	}
</style>


<div class="conteudo-info" id="infor">

</div>

<script type="text/javascript" src="assets/info/js/mod_xhr.js"></script>
<script type="text/javascript" src="assets/info/js/info.js"></script>


<div style="padding-bottom: 3vw;"></div>

</div>

<script>
 function ScrollByLeft() {
	document.getElementById("scroll").scrollBy(1500, 0);
}
function ScrollByRight() {
	document.getElementById("scroll").scrollBy(-1500, 0);
}

function ScrollLeft() {
	document.getElementById("scroll").scrollLeft=1500;
}
function ScrollRight() {
	document.getElementById("scroll").scrollLeft=-1500;
}


</script>

</body>

<?php } ?>
</html>