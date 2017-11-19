<?php
require 'static/php/system/database.php';
require 'static/php/system/config.php';
date_default_timezone_set("America/Sao_Paulo");
if(!isset($_GET['id']) || empty($_GET['id']))
echo '<script>location.href="http://localhost/";</script>';
else{
$id = DBEscape( strip_tags(trim($_GET['id']) ) );
$video = DBRead('videos', "WHERE id = '{$id}' LIMIT 1 ");
if(!$video)
echo '<script>location.href="/";</script>';
if($video){
$video = $video[0];
$upVisits = array(
'views' => $video['views'] + 1);
DBUpDate( 'videos', $upVisits, "id = '{$id}'" );
}
}
$idwatch = $video['idserie'];
$anime = DBRead( 'series', "WHERE id = '{$idwatch}'  LIMIT 1" );
if(!$anime)
echo '<script>location.href=/";</script>';
else{
$anime = $anime[0];
}

if(isset($_COOKIE['iduser']) and (isset($_COOKIE['inisession']))){
	
		$iduser = DBEscape( strip_tags(trim($_COOKIE['iduser']) ) );
		$user = DBRead('user', "WHERE id = '{$iduser}' LIMIT 1 ");
		$user = $user[0];
		
		if($user['configurado'] == 0){
			echo '<script>location.href="configure.php?error";</script>';
		}
		
	
	if(empty($_COOKIE['usuario'])){
	echo '<script>location.href="dashboard.php?error";</script>';
}
}

?>

<head>
<title>Netflix</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
<meta charset="utf-8">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico"/>
</head>
<html>
<body>

<div id="player2">
<div class="header">
<div class="voltar">
<img class="net_back" src="img/voltar.png"/>
<img class="net_back2" src="img/voltar_ativo.png"/>

<div class="hover-back">
<img class="seta" src="img/v.png"/>
<p>Voltar à navegação</p>
</div>

</div>
</div>
</div>


<div id="align">
<div class="player" id="player">


<div id="baixo">
<div class="playbtn">
<button id="buttonpp" style="display:none;"><img class="play" src="img/play.png"/></button>
<button id="buttonpmp"><img class="play" src="img/pause.png"/></button>

</div>
<div id="line-left"></div>
<div class="volume">
<button id="mute">
<img class="volume" src="img/volume.png"/>
</button>
<button id="muted" style="display:none;">
<img class="volume" src="img/mute.png"
</button>
</div>
<div id="line-left2"></div>
<h1><?php echo $anime['name'];?></h1>
<div class="right">
<button id="help">
<img class="nextep" src="img/ajuda.png"/>
</button>

<div id="helphover">
<img src="img/baixo.png">
<a>Encontrou alguma coisa errada? Relate aqui:</a>
</div>

<div id="line-left3"></div>


<?php
$idwatch = $anime['id'];
$resultsearchs2 = DBRead( 'series', "WHERE id = '{$idwatch}'  LIMIT 1" );
 if (!$resultsearchs2)
 echo '';
else
foreach ($resultsearchs2 as $resultsearch2):
?>
<?php
$idwatch = $resultsearch2['id'];
$videoa = $video['id'];
$animes = DBRead( 'series', "WHERE id = '{$idwatch}'  LIMIT 1" );
$resultsearchs = DBRead( 'videos', "WHERE id <> '{$videoa}' and idserie = '{$idwatch}'  LIMIT 1" );
 if (!$resultsearchs)
 echo '';
else
foreach ($resultsearchs as $resultsearch):
?>
<a href="watch.php?id=<?php echo $resultsearch['id']; ?>" style="color:transparent;">
<button id="nextep">
<img class="nextep" src="img/ep.png"/>
</button>
</a>


<div id="hoverep">
<img src="img/baixo.png">
<h1>Próximo episódio</h1>
<div id="img"></div>

<style>
#img{
  background-image: url(static/videos/<?php echo $resultsearch2['foto']; ?>);
  background-size: cover;
}
</style>

<div id="right-ep">
<h2>Ep. <?php echo $resultsearch['ep']; ?> Episódio <?php echo $resultsearch['ep']; ?></h2>
<p><?php
	$str2 = nl2br( $resultsearch2['desct'] );
	$len2 = strlen( $str2 );
	$max2 = 57;
   if( $len2 <= $max2 )
   echo $str2;
	else    
   echo substr( $str2, 0, $max2 ) . '...'?></p>
<?php endforeach; endforeach; ?>
</div>
</div>
<img class="nextep" src="img/eps.png"/>
<img class="nextep" src="img/sub.png"/>
<button id="fullscreenico">
<img class="nextep" src="img/full.png"/>
</button>
<button id="fullscreenedico" style="display:none;">
<img class="nextep" src="img/desfull.png"/>
</button>
</div>

<div id="current">
<div id="defaultBar">
</div>
<div id="progressBar">
</div>
</div>
<div id="currtime">0:00</div>

</div>

</div>
</div>
<video id="playerwatchpri" muted src="<?php echo $video['video']; ?>" preload="metadata" autoplay>

</video>

<script type="text/javascript">
document.getElementById("playerwatchpri").onclick = function() {vidplay()};
document.getElementById("buttonpp").onclick = function() {vidplay()};
document.getElementById("buttonpmp").onclick = function() {vidplay()};
document.getElementById("playerwatchpri").onclick = function() {vidplay()};
document.getElementById("playerwatchpri").ondblclick = function() {goFullscreen()};
document.getElementById("player").onmouseover = function() {showplayer()};
document.getElementById("baixo").onmouseover = function() {showplayer()};
document.getElementById("mute").onclick = function() {mute()};
document.getElementById("muted").onclick = function() {mute()}
document.getElementById("fullscreenico").onclick = function() {goFullscreen()};
document.getElementById("fullscreenedico").onclick = function() {goFullscreen()}
document.getElementById("fullscreenedico").onclick = function() {goFullscreen()};
document.getElementById("help").onmouseover = function() {help()};
document.getElementById("nextep").onmouseover = function() {ep()};

function help(){
document.getElementById("helphover").style.display = "block";
document.getElementById("current").style.display = "none";
document.getElementById("currtime").style.display = "none";
document.getElementById("hoverep").style.display = "none";
}

function ep(){
document.getElementById("hoverep").style.display = "block";
document.getElementById("current").style.display = "none";
document.getElementById("currtime").style.display = "none";
document.getElementById("helphover").style.display = "none";
}


var video = document.getElementById("playerwatchpri");
var bar = document.getElementById("current");
bar.addEventListener("click", seek);
var progressBar = document.getElementById("progressBar");


function seek(e) {
var percent = e.offsetX / this.offsetWidth;
video.currentTime = percent * video.duration;
progressBar.value = percent / 100;
}

video.addEventListener('progress', function() {
var bufferedEnd = video.buffered.end(video.buffered.length - 1);
var duration =  video.duration;
if (duration >= 0) {
      document.getElementById('defaultBar').style.width = ((bufferedEnd / duration)*100) + "%";
}
});

video.addEventListener('timeupdate', function() {
var duration =  video.duration;
if (duration > 0) {
	var bufferedEnd = video.buffered.end(video.buffered.length - 1);
document.getElementById('progressBar').style.width = ((video.currentTime / duration)*100) + "%";

var videotimer = document.getElementById('defaultBar').style.width = ((bufferedEnd / duration)*100) + "%";
video.ontimeupdate = function() {myFunction()};

}
});	

function vidplay() {	
if (video.paused) {
video.play();
document.getElementById("buttonpmp").style.display = "block";
document.getElementById("buttonpp").style.display = "none";
} else {	
video.pause();
document.getElementById("buttonpp").style.display = "block";
document.getElementById("buttonpmp").style.display = "none";
}
}

function skip(value) {
var video = document.getElementById("playerwatchpri");
video.currentTime += value;
video.play();
}

function mute(){
if (video.muted) {
video.muted = false;
document.getElementById("mute").style.display = "block";
document.getElementById("muted").style.display = "none";
}else{
video.muted = true;
document.getElementById("muted").style.display = "block";
document.getElementById("mute").style.display = "none";	
}
}
	
function goFullscreen() {
if (!document.fullscreenElement &&    // alternative standard method
      !document.mozFullScreenElement && !document.webkitFullscreenElement && !document.msFullscreenElement ) {  // current working methods
    if (document.documentElement.requestFullscreen) {
      document.documentElement.requestFullscreen();
    } else if (document.documentElement.msRequestFullscreen) {
      document.documentElement.msRequestFullscreen();
    } else if (document.documentElement.mozRequestFullScreen) {
      document.documentElement.mozRequestFullScreen();
    } else if (document.documentElement.webkitRequestFullscreen) {
      document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
    }
document.getElementById("normal").setAttribute("id","full");
document.getElementById("header").style.display = "none";
document.getElementById("inikopy").setAttribute("id","fullscreen");
document.getElementById("fullscreenedico").style.display = "block";
document.getElementById("fullscreenico").style.display = "none";
	} else {
    if (document.exitFullscreen) {
      document.exitFullscreen();
    } else if (document.msExitFullscreen) {
      document.msExitFullscreen();
    } else if (document.mozCancelFullScreen) {
      document.mozCancelFullScreen();
    } else if (document.webkitExitFullscreen) {
      document.webkitExitFullscreen();
    }
document.getElementById("fullscreenico").style.display = "block";
document.getElementById("fullscreenedico").style.display = "none";	
}
}

document.onkeyup = function(evt) {
evt = evt || window.event;
if (evt.keyCode == 27 || evt.keyCode == 122) {
if (document.exitFullscreen) {
document.exitFullscreen();
} else if (document.msExitFullscreen) {
      document.msExitFullscreen();
    } else if (document.mozCancelFullScreen) {
      document.mozCancelFullScreen();
    } else if (document.webkitExitFullscreen) {
      document.webkitExitFullscreen();
    }
document.getElementById("full").setAttribute("id","normal");
document.getElementById("header").style.display = "block";
document.getElementById("fullscreen").setAttribute("id","inikopy");
document.getElementById("fullscreenico").style.display = "block";
document.getElementById("fullscreenedico").style.display = "none";	
}
}

document.getElementById("playerwatchpri").addEventListener('timeupdate', function() {
var video = document.getElementById("playerwatchpri");
	var nt = video.currentTime * (100 / video.duration);
	var curmins = Math.floor(video.currentTime / 60);
	var cursecs = Math.floor(video.currentTime - curmins * 60);
	var durmins = Math.floor(video.duration / 60);
	var dursecs = Math.floor(video.duration - durmins * 60);
	if(cursecs < 10){ cursecs = "0"+cursecs; }
	if(dursecs < 10){ dursecs = "0"+dursecs; }
	if(curmins < 10){ curmins = "0"+curmins; }
	if(durmins < 10){ durmins = "0"+durmins; }
	document.getElementById("currtime").innerHTML = curmins+":"+cursecs;
});

var timeout;
document.getElementById("playerwatchpri").onmousemove = function(){
  clearTimeout(timeout);
  timeout = setTimeout(function(){
document.getElementById("playerwatchpri").style.cursor = "none";	
document.getElementById("player").style.opacity = "0";
document.getElementById("player2").style.opacity = "0";
  }, 2000);
document.getElementById("playerwatchpri").style.cursor = "auto";
document.getElementById("player").style.opacity = "1";	
document.getElementById("player2").style.opacity = "1"; 	
document.getElementById("helphover").style.display = "none";
document.getElementById("hoverep").style.display = "none";
document.getElementById("current").style.display = "block";
document.getElementById("currtime").style.display = "block";
}
function showplayer(){
document.getElementById("player").style.opacity = "1";	 
document.getElementById("player2").style.opacity = "1"; 	
}
</script>

</body>
</html>