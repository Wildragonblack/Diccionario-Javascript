<!DOCTYPE html>
<html>
<head>
	<title>IA</title>
</head>
<body>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome-4.7.0/css/font-awesome.css">
<meta content="width=device-width, shrink-to-fit=no, initial-scale=1" name="viewport">
<meta charset="UTF-8">
<style type="text/css">
	.btn-circle.btn-xl {
  width: 150px;
  height: 150px;
  padding: 30px 26px;
  font-size: 24px;
  border-radius: 90px;
}
</style>

<script type="text/javascript">
	var recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition || window.mozSpeechRecognition || window.msSpeechRecognition)();
recognition.lang = 'es-MX';
recognition.interimResults = false;
recognition.maxAlternatives = 15;

recognition.onresult = function(event) {
	var texto_voz = event.results[0][0].transcript;
	texto_voz = texto_voz.replace(/á/gi,"a");
	texto_voz = texto_voz.replace(/é/gi,"e");
	texto_voz = texto_voz.replace(/í/gi,"i");
	texto_voz = texto_voz.replace(/ó/gi,"o");
	texto_voz = texto_voz.replace(/ú/gi,"u");
	texto_voz = texto_voz.replace(/ñ/gi,"n");
    $("#texto").val(texto_voz);
    voz()
};

function cargar() {
	recognition.start();
}
</script>
<div class="container">
	<h1 class="page-header text-center">Lenguajes y autónomas</h1>
	<p>De click en el boton para preguntar acerca de los siguientes puntos:</p>
	<ul>
		<li>Chistes</li>
		<li>Adivinanzas</li>
		<li>Poemas</li>
	</ul>
	<div>
	<form role = "form" class="form-horizontal">
		<div class="form-group">
		<div class="col-md-5"></div>
			<input class="form-control" type="hidden" id = "texto">
			<button class="btn btn-danger btn-circle btn-xl" type="button" onclick="cargar()" id = "btn"><i class="fa fa-microphone" aria-hidden="true"></i></button>
		</div>
	</form>
</div>
<script type="text/javascript" src = "js/jquery-2.1.4.min.js"></script>

<?php 
	require_once('DB/database.php');
	//Con esta funcion llenamos el array con los datos de la DB
	function llenarArray($array,$link,$id) {
		$SQL = "SELECT * FROM datos WHERE TIPO = '$id'";
		$sentencia = mysqli_query($link,$SQL);

		while($dato=mysqli_fetch_assoc($sentencia)) {
			$array[$dato['PALABRA']] = utf8_encode($dato['CONTENIDO']);
		}
		return $array;
	}
	//Creamos unos array
	$arrayChistes = array();
	$arrayAdivinanza = array();
	$arrayPoema = array();
	//Llenamos los arrays con la funcion creada anteriormente
	$arrayChistes = llenarArray($arrayChistes,$link,0);
	$arrayAdivinanza = llenarArray($arrayAdivinanza,$link,1);
	$arrayPoema = llenarArray($arrayPoema,$link,2);
?>

<script type="text/javascript">
	//Funcion para hacer que el navegador hable
    function convertir_letra($dato) {
    	var speechSynthesisUtterance = new SpeechSynthesisUtterance($dato); 
		window.speechSynthesis.speak(speechSynthesisUtterance);

    }
    //Funcion para rrecorer las palabras existentes en la base de datos
    function recorrerArray(array,texto,palabra) {
    	for(var item in array) {
			if(texto.indexOf(item) != -1)
				palabra+=array[item];
		}
		if(palabra!="")
			return palabra;
		else
			return "Lo siento no se encontró nada con su búsqueda de "+texto;
    }
    //Esta función es para llenar los arrays con los datos de la DB
    function voz() {

    var palabra = "";

    var arrayChistes = new Array();
   	arrayChistes = <?php echo json_encode($arrayChistes); ?>;

    var arrayAdivinanza = new Array();
    arrayAdivinanza = <?php echo json_encode($arrayAdivinanza); ?>;

    var arrayPoema = new Array();
    arrayPoema = <?php echo json_encode($arrayPoema); ?>;

    var texto = $('#texto').val();
    texto = texto.toLowerCase();

    if(/chiste/.test(texto))
		palabra = recorrerArray(arrayChistes,texto,palabra)
	else if(/adivinanza/.test(texto))
		palabra = recorrerArray(arrayAdivinanza,texto,palabra)
	else if(/poema/.test(texto))
		palabra = recorrerArray(arrayPoema,texto,palabra)
	else
		palabra = "Lo siento solo estoy programada para decir chistes, adivinanzas y poemas";
	convertir_letra(palabra);
}
</script>

</body>
</html>