<?php
require 'static/php/system/database.php';
require 'static/php/system/config.php';
?>
<?php
if(isset($_COOKIE['iduser']) and (isset($_COOKIE['inisession']))){
	
		$iduser2 = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
		$user2 = DBRead('user', "WHERE id = '{$iduser2}' LIMIT 1 ");
		$user2 = $user2[0];
	
	
			$iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
            $user = DBRead('user', "WHERE id = '{$iduser}' LIMIT 1 ");
}
	if(empty($_COOKIE['iduser']) and (empty($_COOKIE['inisession']))){
		echo '<script>location.href="account";</script>';
	}
	if(empty($_COOKIE['inisession'])){
		echo '<script>location.href="account";</script>';
	}
	if(empty($_COOKIE['iduser'])){
		echo '<script>location.href="account";</script>';
	}
?>

<head>
<title>
Netflix
</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico"/>
</head>

<?php 
if($user['configurado'] == 0){
?>
 <html>
        <style>
body {
    background: #081421;
    color: #d3d7de;
    font-family: "Courier new";
    font-size: 18px;
    line-height: 1.5em;
	cursor: default;
}

.code-area {
    position: absolute;
    width: 320px;
	min-width: 320px;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}

.code-area > span {
    display: block;
}

@media screen and (max-width: 320px) {
    .code-area {
		font-size: 5vw;
		min-width: auto;
        width: 95%;
		margin: auto;
		padding: 5px;
		padding-left: 10px;
		line-height: 6.5vw;
    }
}

        </style>
        <body>
        <div class="code-area">
  <span style="color: #777;font-style:italic;">
    // 404 page not found.
  </span>
  <span>
    <span style="color:#d65562;">
      if
    </span>
	  (<span style="color:#4ca8ef;">!</span><span style="font-style: italic;color:#bdbdbd;">found</span>)
    {
  </span>
  <span>
    <span style="padding-left: 15px;color:#2796ec">
       <i style="width: 10px;display:inline-block"></i>throw
    </span>
    <span>
      (<span style="color: #a6a61f">"(╯°□°)╯︵ ┻━┻"</span>);
    </span>
	  <span style="display:block">}</span>
  </span>
</div>
        </body>

        </html>

<?php } else { ?>

<style>
*{
	margin: 0;
	padding: 0;
	font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;
	outline: none;
    list-style:none;
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
</style>

<html>
<body style="background: #141414;">

<div class="header-al-home-a">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 81.387"><g fill="#b81d24"><path d="M256.09 76.212c4.178.405 8.354.84 12.52 1.29l9.198-22.712 8.743 24.807c4.486.562 8.97 1.152 13.44 1.768l-15.328-43.501L299.996 0H287.01l-.135.186-8.283 20.455L271.32.003h-12.822l13.237 37.565-15.644 38.644zM246.393 75.322V0h-12.817v74.265c4.275.33 8.552.684 12.817 1.056M150.113 71.11c3.46 0 6.916.026 10.366.054V43.492h15.397V31.708H160.48v-19.91h17.733V0h-30.6v71.12c.831 0 1.666-.013 2.5-.01M110.319 71.83c4.27-.152 8.544-.28 12.824-.384V11.8h11.98V.003H98.339V11.8h11.982v60.03h-.002zM12.295 79.772V34.897L27.471 77.96c4.667-.524 9.341-1.017 14.028-1.483V.001H29.201v46.483L12.825.001H0v81.384h.077c4.063-.562 8.14-1.096 12.218-1.613M85.98 11.797V.001H55.377V75.202a1100.584 1100.584 0 0 1 30.578-2.211V61.184c-5.916.344-11.82.74-17.71 1.181V43.497h15.397V31.706H68.245V11.797H85.98zM203.614 60.62V-.003h-12.873v71.876c10.24.376 20.44.9 30.606 1.56V61.619c-5.9-.381-11.81-.712-17.733-1"/></g></svg>
</div>

<style>
.config-perfil{
    position: relative;
    margin: 0px auto;
    width: 30vw;
    text-align: center;
    color: #fff;
    top: 3vw;
    font-size: 1.2vw;
    padding-top: 0.5vw;
}
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
                top: 2vw;
                -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.25);
                -moz-box-shadow: 0 1px 1px rgba(0,0,0,.25);
                box-shadow: 0 1px 1px rgba(0,0,0,.25);
                color: #fff;
                width: 30vw;
                background: #e50914;
                font-size: 1.5vw;
            }
</style>

<div class="config-perfil">

<h1>Configure seu perfil</h1>

<img src="/static/avatar/user1.png" style="width: 8vw; padding-top: 1vw;"/>

<form action="#" method="post">
<input type="text" name="name" id="name" placeholder="Nome de quem vai usar a conta" style="font-size: 1vw; border: none;width: 100%; padding: 0.5vw; border-radius: 0.1vw; position: relative; top: 0.5vw;"/>
<button class="config-btn" id="concluido">Concluido</button>
</form>

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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script>
$(document).ready(function() {
    $("#concluido").click(function() {
        var name = $("#name");
        var namePost = name.val();
        $.post("configurando.php", {name: namePost},
        function(data){
         $("#resposta").html(data);
         }
         , "html");
         return false;
    });
});
</script>

</div>


</body>
</html>
<?php } ?>