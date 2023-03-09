<?php
	include_once("../banco/conexao.php");
	$conectar = getConnection();
?>

<?php

	$relatorio = "SELECT id,curso, plataforma, endereco, usuario, senha FROM cursos order by id";
	$resultado = $conectar->prepare($relatorio);
	$resultado->execute();

	$html = "<table>";
	$html .= "<body>";

	while ($consulta = $resultado->fetch(PDO::FETCH_ASSOC)) {
		
	$html .= "<tr>" . "<td>" . "<br><br> ID: " . "</td>" . "<td> <br><br>" . $consulta["id"] . "</td></tr>";
	$html .= "<tr>" . "<td>" . "Curso: " . "</td>" . "<td>" . $consulta["curso"] . "</td></tr>";
	$html .= "<tr>" . "<td>" . "Plataforma: " . "</td>" . "<td>" . $consulta["plataforma"] . "</td></tr>";
	$html .= "<tr>" . "<td>" . "Site: " . "</td>" . "<td>" . $consulta["endereco"] . "</td></tr>";
	$html .= "<tr>" . "<td>" . "Usuário: " . "</td>" . "<td>" . $consulta["usuario"] . "</td>";
	$html .= "<tr>" . "<td>" . "Senha: " . "</td>" . "<td>" . $consulta["senha"] ."</td></tr>";
		
	}

	$html .= "</body>";
	$html .= "</table>";

	use Dompdf\Dompdf;

	require 'dompdf/vendor/autoload.php';

	$dompdf = new DOMPDF();
	$dompdf->setPaper('A4','portrait');
	$dompdf->load_html('<center><h2> Cursos </h2><br> <h4>A Fazer - Em Andamento</h4></center>' . $html . ' ');
	$dompdf->render();
	$dompdf->stream("descrevendo.pdf",
					 array(
					       "Attachment" => false
					 )
					);

?>