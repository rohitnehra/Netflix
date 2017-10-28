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
		height: 1.8vw;
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
<form method="post">
<div class="what center">
<button style="border:none; background: transparent;" name="people1"><div class="avatar1 people1"></div></button>
<div class="pessoas"><p class="ava-who">Alexandre</p></div>

<button style="border:none; background: transparent;" name="people2"><div class="avatar1 people2"></div></button>
<div class="pessoas"><p class="ava-who">Vitor</p></div>

<button style="border:none; background: transparent;" name="people3"><div class="avatar1 people3"></div></button>
<div class="pessoas"><p class="ava-who">LucasAD</p></div>

<button style="border:none; background: transparent;" name="people4"><div class="avatar1 people4"></div></button>
<div class="pessoas"><p class="ava-who">Salviti</p></div>

<button style="border:none; background: transparent;" name="kids"><div class="avatar1 kids"></div></button>
<div class="pessoas"><p class="ava-who">Kids</p></div>
</div>
</form>

<?php
if (isset($_POST['people1'])) {
	setcookie("usuario", 1);
	header("/");
	exit();
}
if (isset($_POST['people2'])) {
	setcookie("usuario", 2);
	header("/");
	exit();
}

if (isset($_POST['people3'])) {
	setcookie("usuario", 3);
	header("/");
	exit();
}

if (isset($_POST['people4'])) {
	setcookie("usuario", 4);
	header("/");
	exit();
}

if (isset($_POST['kids'])) {
	setcookie("usuario", 5);
	header("/");
	exit();
}
?>

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
	background: rgba(0,0,0,.50);
	position: fixed;
	left: 0;
	top: 0;
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
	}

	</style>
<body class="logado">

<div class="header">

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 81.387"><g fill="#b81d24"><path d="M256.09 76.212c4.178.405 8.354.84 12.52 1.29l9.198-22.712 8.743 24.807c4.486.562 8.97 1.152 13.44 1.768l-15.328-43.501L299.996 0H287.01l-.135.186-8.283 20.455L271.32.003h-12.822l13.237 37.565-15.644 38.644zM246.393 75.322V0h-12.817v74.265c4.275.33 8.552.684 12.817 1.056M150.113 71.11c3.46 0 6.916.026 10.366.054V43.492h15.397V31.708H160.48v-19.91h17.733V0h-30.6v71.12c.831 0 1.666-.013 2.5-.01M110.319 71.83c4.27-.152 8.544-.28 12.824-.384V11.8h11.98V.003H98.339V11.8h11.982v60.03h-.002zM12.295 79.772V34.897L27.471 77.96c4.667-.524 9.341-1.017 14.028-1.483V.001H29.201v46.483L12.825.001H0v81.384h.077c4.063-.562 8.14-1.096 12.218-1.613M85.98 11.797V.001H55.377V75.202a1100.584 1100.584 0 0 1 30.578-2.211V61.184c-5.916.344-11.82.74-17.71 1.181V43.497h15.397V31.706H68.245V11.797H85.98zM203.614 60.62V-.003h-12.873v71.876c10.24.376 20.44.9 30.606 1.56V61.619c-5.9-.381-11.81-.712-17.733-1"/></g></svg>

<div class="right-user">
<?php
  if($_COOKIE['usuario'] == 1){?>
	<div class="avatar people1"></div>
	<div class="people">
	<p style="color: #fff; position: relative; float: left;left: 0.5vw;margin-top:0.5vw;font-size: 0.8vw;">Alexandre</p>
	</div>
<?php } ?>

<?php
  if($_COOKIE['usuario'] == 2){?>
	<div class="avatar people2"></div>
	<div class="people">
	<p style="color: #fff; position: relative; float: left;left: 0.5vw;margin-top:0.5vw;font-size: 0.8vw;">Vitor</p>
	</div>
<?php } ?>

<?php
  if($_COOKIE['usuario'] == 3){?>
	<div class="avatar people3"></div>
	<div class="people">
	<p style="color: #fff; position: relative; float: left;left: 0.5vw;margin-top:0.5vw;font-size: 0.8vw;">LucasAD</p>
	</div>
<?php } ?>

<?php
  if($_COOKIE['usuario'] == 4){?>
	<div class="avatar people5"></div>
	<div class="people">
	<p style="color: #fff; position: relative; float: left;left: 0.5vw;margin-top:0.5vw;font-size: 0.8vw;">Salviti</p>
	</div>
<?php } ?>

<?php
  if($_COOKIE['usuario'] == 5){?>
	<div class="avatar people4"></div>
	<div class="people">
	<p style="color: #fff; position: relative; float: left;left: 0.5vw;margin-top:0.5vw;font-size: 0.8vw;">Kids</p>
	</div>
<?php } ?>
</div>

</div>

</body>

<?php } ?>
</html>