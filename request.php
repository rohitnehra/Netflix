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

<div class="left-de">
</div>
<?php
$animels2 = DBRead( 'series', "WHERE id ORDER BY id ASC LIMIT 20" );
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
	background-image: url(<?php echo $animel['fotoback']; ?>);
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

<div class="baixo-desc">

<center>
<p class="feels feels-ativo">VISÃO GERAL</p>
<p class="feels">EPISÓDIOS</p>
</center>

</div>

</div>

	<?php } ?>