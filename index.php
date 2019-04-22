<!doctype html>
<html lang="da">
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<!--her linker jeg til bootstrap via en cdn  en minify udgav, så siden loader hurtigere-->
<link rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!--her linker jeg til animate.css via en cdn i en minify udgav, så siden loader hurtigere.*/-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<!--animate on scroll kilde:https://michalsnik.github.io/aos/-->
<!--<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">-->

</head>
<link href="scss/style.css" rel="stylesheet">
<body>


<nav>
	<ul>
		<!--<li><a href="#">Dit liv</a></li>
		<li><a href="#">Produkter</a></li>
		<li><a href="#">Det sker</a></li>
		<li><a href="#">Selvbetjening</a></li>
		<li><a href="#">Kontakt</a></li>-->
		<?php include 'header.php';?>
	</ul>
</nav>

<h1>hello world!! vol. 3</h1>
<div class="row">
<div class="col-3" style="background-color: green;">hej </div>
<div class="col-3" style="background-color: red;"></div>
<div class="col-6" style="background-color: blue"></div>
</div> 

<button class="button ctabtn"><p>jeg er en knap</p></button>
<div class="col-12 ctabtn" > <p class="ctabtn">hej med dig</p></div>
<button class="button"><p>knap</p></button>
<div class="row">
<div class="col-12">
     <h1>test hehe ejej 3</h1>
</div>
</div>
<?php include 'footer.php';?>

<!--animate on scroll kilde: https://michalsnik.github.io/aos/-->
<!--<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  AOS.init();
</script>-->

</body>
</html>
