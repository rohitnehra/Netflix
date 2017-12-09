<?php
if(empty($_COOKIE['iduser']) and (empty($_COOKIE['inisession']))){?>
<head>
<title>
Wooby Animes
</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/static/ico/default.ico"/>
</head>
<html>

<style>
*{
	margin: 0;
	padding: 0;
	font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;
	outline: none;
    list-style:none;
}

body{
    background: #000;
}

.header-al-home-a{
    width: 100%;
    height: 5vw;
    left: 0;
    top: 0;
    position: absolute;
    z-index: 5000;
}

.header-al-home-a .logo{
		height: 4vw;
		margin-top: 1.1vw;
		margin-left: 3vw;
		opacity: .8;
		cursor: pointer;
	}

    .header-al-home-a .logo:hover{
        opacity: 1;
	}

.body-oa-tod{
    position: relative;
    -webkit-transform: translate(0,-50%);
    -moz-transform: translate(0,-50%);
    -ms-transform: translate(0,-50%);
    -o-transform: translate(0,-50%);
    transform: translate(0,-50%);
    width: 100%;
    height: 85vw;
    top: 15vw;
    background-size: cover;
	background-image: url(/static/back.jpg);
}

.eo{
    background-image: -webkit-gradient(linear,left top,right top,color-stop(20%,rgba(0,0,0,.8)),color-stop(85%,rgba(0,0,0,0)));
    background-image: -webkit-linear-gradient(left,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    background-image: -moz-linear-gradient(left,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    background-image: -o-linear-gradient(left,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    background-image: linear-gradient(to right,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    width: 80%;
    height: 100%;
    position: absolute;
    z-index: 1000;
}

.login-b{
    color: #fff;
    background-color: #5e09e5;
    line-height: normal;
    margin: 18px 3% 0;
    padding: 7px 17px;
    font-weight: 400;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    font-size: 1vw;
    height: 2.2vw;
    width: 5vw;
    border: none;
    float: right;
    cursor: pointer;
}

.apresentation{
    position: absolute;
    color: #fff;
    bottom: 15vw;
    width: 50vw;
    height: 20vw;
    left: 2vw;
}

.apresentation h1{
    font-size: 4.5vw;
    padding: 0.9vw;
    text-shadow: 0.2vw 0.2vw #000;
}

.apresentation p{
    padding: 1.3vw;
    font-size: 1.5vw;
    font-weight: bold;
}

.apresentation .btn-free {
    color: #fff;
    font-size: 1.2vw;
    background-color: #5e09e5;
    background-image: -webkit-gradient(linear,left top,left bottom,from(#5e09e5),to(#055bdb));
    background-image: -webkit-linear-gradient(top,#5e09e5,#055bdb);
    background-image: -moz-linear-gradient(top,#5e09e5,#055bdb);
    background-image: -o-linear-gradient(top,#5e09e5,#055bdb);
    background-image: linear-gradient(to bottom,#5e09e5,#055bdb);
    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.45);
    -moz-box-shadow: 0 1px 0 rgba(0,0,0,.45);
    box-shadow: 0 1px 0 rgba(0,0,0,.45);
    border: none;
    height: 3vw;
    width: 19vw;
    cursor: pointer;
}

</style>

<body>

<div class="header-al-home-a">
<a href="/">
<img src="/static/logo.png" class="logo"/>
</a><a href="account">
<button class="login-b">
Entrar
</button>
</a>
</div>

<div class="eo"></div>
<video src="http://woobyanimes.com/static/loop.mp4" style="display: none;" class="body-oa-tod" autoplay muted loop>
</video>

<div class="body-oa-tod"></div>

<div class="apresentation" style="z-index: 10000;">
<h1>Seu próximo anime, agora.</h1>
<p>VEJA SEUS ANIMES FAVORITOS, QUANDO QUISER!<p>
<a href="/account/1">
<button class="btn-free">ASSISTA UM MÊS GRÁTIS</button>
</a>
</div>

</div>

<style>
.baladinha{
    background-color: #141414;
    border-right: none;
    width: 100%;
    height: 11vw;
    position: relative;
    top: -42vw;
    border-bottom: 0.1vw solid #4c4545;
    padding-top: 0vw;
	z-index: 1000000;
}


#icon-cancel{
    width: 4vw;
    height: 4vw;
    position: relative;
    top: 1vw;
    fill: #fff;
}

#icon-cross-device-screens-desktop{
    fill: #fff;
    width: 9vw;
    height: 4vw;
    top: 1vw !important;
    position: relative;
}

#icon-price-tag{
    fill: #fff;
    width: 8vw;
    height: 4vw;
}

.baladinha li{
    width: 20%;
    height: inherit;
    display: inline-block;
    left: 40%;
    position: relative;
    margin-left: 0.5vw;
    top: 0;
    height: 9vw;
    cursor: pointer;
    opacity: 0.6;
    padding-top: 1.8vw;
}

.baladinha li:hover{
    opacity: 1;
}

.baladinha p{
    color: #fff;
    position: relative;
    top: 2vw;
    font-weight: bold;
    font-size: 1.2vw;
}

.time{
    top: 1vw !important;
}

.ta{
    height: 7.65vw !important;
}

.ativo{
    border-bottom: 0.2vw solid #5e09e5;
    opacity: 1 !important;
}

</style>

<div class="baladinha">

<li class="ativo">
<center>
<svg viewBox="0 0 40 48" style="fill:#fff;" id="icon-cancel"><path d="M29.55 18.7v-4.6c-5.2.4-4.6 2.8-4.6 2.8.3 1.7 2.35 2.35 2.35 2.35.6-.35 2.25-.55 2.25-.55zm3.7 1L33 21.3c-9.15-.3-8.7-3.75-8.7-3.75l.15 5.2c1.1 4.05 8.35 4.2 8.2 4.2l-.2 1.5 6.9-3.8-6.1-4.95zm-20.3 6.25c-.5-.5-1.3-.45-1.8.05-.45.5-.45 1.25.05 1.75s1.3.45 1.75-.05c.5-.5.5-1.25 0-1.75zm2.35-15.9L1.5 1.45V38.9l2.6 1.45 11.2 6.2v-36.5zM1.5 40.35C.4 39.85 0 39.7 0 38.9l1.5 1.45zM28.05 28.1h1.45v10.8c0 .8-.65 1.45-1.45 1.45H16.8v6.15c0 .849-.65 1.5-1.45 1.5L1.5 40.35 0 38.9V1.45C0 .65.65 0 1.5 0h26.55c.8 0 1.45.65 1.45 1.45v11.2h-1.45V1.45H4.1L15.6 8.6c.95.35 1.2.65 1.2 1.45V38.9h11.25V28.1z"></path></svg>
<p>Sem compromisso
Cancele online quando quiser</p>
</center>
</li>


</div>

<style>
.cancel{
    background: #000;
    width: 100%;
    position: absolute;
    height: 28vw;
    top: 53.5vw;
    display: block;
}

.onde{
    background: #000;
    width: 100%;
    position: absolute;
    height: 28vw;
    top: 53.5vw;
    display: none;
}
</style>


<div class="cancel">
<center>
<style>
.left{
    width: 35vw;
    float: left;
    left: 15vw;
    position: relative;
    top: 5vw;
    padding: 2vw;
}

.left span{
    font-size: 2vw;
}

.red-free{
    color: #fff;
    background-color: #5e09e5;
    background-image: -webkit-gradient(linear,left top,left bottom,from(#5e09e5),to(#055bdb));
    background-image: -webkit-linear-gradient(top,#5e09e5,#055bdb);
    background-image: -moz-linear-gradient(top,#5e09e5,#055bdb);
    background-image: -o-linear-gradient(top,#5e09e5,#055bdb);
    background-image: linear-gradient(to bottom,#5e09e5,#055bdb);
    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.45);
    -moz-box-shadow: 0 1px 0 rgba(0,0,0,.45);
    box-shadow: 0 1px 0 rgba(0,0,0,.45);
    border: none;
    width: 15vw;
    height: 3vw;
    cursor: pointer;
    position: relative;
    top: 1vw;
    font-size: 1vw;
}
</style>
<div class="left">
<span style="color: #fff;">Se você decidir não continuar a assinatura, tudo bem Sem compromisso Cancel online quando quiser.</span>
<br><a href="/account/1"><button class="red-free">ASSISTA O MÊS GRÁTIS</button></a>
</div>
<img src="/static/cancel.png" style="width: 30vw; padding: 2vw;"/>
</center>
</div>

<div class="onde">
<div class="left">
<span style="color: #fff;">Se você decidir não continuar a assinatura, tudo bem Sem compromisso Cancel online quando quiser.</span>
<br><button class="red-free">ASSISTA O MÊS GRÁTIS</button>
</div>
<img src="/static/cancel.png" style="width: 30vw; padding: 2vw;position: relative; left: 10vw;"/>
</center>
</div>


</body>
<?php } else{
    include 'dashboard.php';
}
    ?>
</html>
