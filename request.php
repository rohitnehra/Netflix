<?php
require 'static/php/system/database.php';
require 'static/php/system/config.php';
	if(isset($_GET['serie'])){
		?>
<div class="informa">

<script>
  $('#close').click(function(){
	$("#infor").fadeOut(600);
    });
</script>

<div class="close" id="close">
	<svg height="2vw"  width:"2vw" id="Layer_1" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M437.5,386.6L306.9,256l130.6-130.6c14.1-14.1,14.1-36.8,0-50.9c-14.1-14.1-36.8-14.1-50.9,0L256,205.1L125.4,74.5  c-14.1-14.1-36.8-14.1-50.9,0c-14.1,14.1-14.1,36.8,0,50.9L205.1,256L74.5,386.6c-14.1,14.1-14.1,36.8,0,50.9  c14.1,14.1,36.8,14.1,50.9,0L256,306.9l130.6,130.6c14.1,14.1,36.8,14.1,50.9,0C451.5,423.4,451.5,400.6,437.5,386.6z"/></svg>
</div>

<style>
.left-de{
	display: block;
}

.ep-info{
	width: 100%;
	height: 100%;
	display: none;
	opacity: 0.9;
	background: #000;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1050;
}
</style>

<div class="left-de" id="info-c">

<?php
$animels2 = DBRead( 'series', "WHERE id ORDER BY id = '{$_GET['serie']}' DESC LIMIT 1" );
 if (!$animels2)
	echo "";
else 
	foreach ($animels2 as $animel):
 ?>
<h1><?php echo $animel['name']; ?></h1>
<p class="desct">
<?php
	$str2 = nl2br( $animel['desct'] );
	$len2 = strlen( $str2 );
	$max2 = 300;
   if( $len2 <= $max2 )
   echo $str2;
	else    
   echo substr( $str2, 0, $max2 ) . '...'?>
</p>
	<?php endforeach; ?>
<style>
.over-back{
	width: 55%;
	background-size: cover;
	height: 100%;
	background-image: url(static/videos/<?php echo $animel['fotoback']; ?>);
	position: absolute;
	display: flex;
	top: 0;
	float: right;
	right: 0;
	z-index: 2;
}
</style>

<div class="over-back">

</div>
</div>


<div class="ep-info" id="epc">

<div class="left-i" onclick="ScrollByRight()" style="position: relative; top: 7vw;">
<svg enable-background="new 0 0 32 32" height="32px" id="Layer_1" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M7.701,14.276l9.586-9.585c0.879-0.878,2.317-0.878,3.195,0l0.801,0.8c0.878,0.877,0.878,2.316,0,3.194  L13.968,16l7.315,7.315c0.878,0.878,0.878,2.317,0,3.194l-0.801,0.8c-0.878,0.879-2.316,0.879-3.195,0l-9.586-9.587  C7.229,17.252,7.02,16.62,7.054,16C7.02,15.38,7.229,14.748,7.701,14.276z" fill="#fff"/></svg>
</div>

<div class="right-i" onclick="ScrollByLeft()" style="position: relative; top: 7vw;">
<svg enable-background="new 0 0 32 32" height="32px" id="Layer_1" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M24.291,14.276L14.705,4.69c-0.878-0.878-2.317-0.878-3.195,0l-0.8,0.8c-0.878,0.877-0.878,2.316,0,3.194  L18.024,16l-7.315,7.315c-0.878,0.878-0.878,2.317,0,3.194l0.8,0.8c0.878,0.879,2.317,0.879,3.195,0l9.586-9.587  c0.472-0.471,0.682-1.103,0.647-1.723C24.973,15.38,24.763,14.748,24.291,14.276z" fill="#fff"/></svg>
</div>


<div class="video-a" id="scrollep" style="position: relative; top: 7vw;">

<?php
$idwatch = $_GET['serie'];
$resultsearchs2 = DBRead( 'series', "WHERE id = '{$idwatch}'  LIMIT 1" );
 if (!$resultsearchs2)
 echo '';
else
foreach ($resultsearchs2 as $resultsearch2):
?>
	<?php
$idwatch = $resultsearch2['id'];
$animes = DBRead( 'series', "WHERE id = '{$idwatch}'  LIMIT 10" );
$resultsearchs = DBRead( 'videos', "WHERE idserie = '{$idwatch}'  LIMIT 10" );
 if (!$resultsearchs)
 echo '';
else
foreach ($resultsearchs as $resultsearch):
?>

<a href="watch.php?id=<?php echo $resultsearch['id'] ?>&href=dashboard?serieinfo=<?php echo $resultsearch['id'] ?>">
<div class="video" id="click<?php echo $resultsearch2['id']; ?>">
<img src="static/videos/<?php echo $resultsearch2['foto']; ?>" class="focus"/>
<p style="color: #fff; text-align: center; font-size: 1.3vw;">Ep <?php echo $resultsearch['ep']; ?></p>
</div>
</a>

	<?php endforeach; endforeach; ?>

</div>
</div>

<div class="baixo-desc">

<center>
<p class="feels feels-ativo" id="infob">VISÃO GERAL</p>
<p class="feels" id="infoc">EPISÓDIOS</p>
</center>

<script>
var info = document.getElementById('infob');
var ep = document.getElementById('infoc');
  $('#infoc').click(function(){
	info.style = 'border-bottom: 0.2vw solid transparent;';
	ep.style = 'border-bottom: 0.2vw solid red;';
	$("#epc").fadeIn(600);
    });

	$('#infob').click(function(){
	$("#epc").fadeOut(600);
	info.style = 'border-bottom: 0.2vw solid red;';
	ep.style = 'border-bottom: 0.2vw solid transparent;';
    });

</script>

</div>

</div>

	<?php } ?>