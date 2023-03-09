<?php

//session_start(); // Iniciar a sessão

// Limpar o buffer
//ob_start();

// Incluir a conexão com BD
   include_once("../banco/conexao.php");
   $conectar = getConnection();

// QUERY para recuperar os registros do banco de dados
   /*
$sql = "SELECT a.id_aluno, a.nome_aluno, a.matricula, a.idade, a.data_nascimento, c.curso FROM aluno a INNER JOIN curso c on a.id_curso = c.id_curso";*/
$sql = "SELECT id,curso, plataforma, status_curso, usuario, senha, inicio, termino FROM cursos ORDER BY id";

// Preparar a QUERY
$listagem = $conectar->prepare($sql);

// Executar a QUERY
$listagem->execute();

// Acessa o IF quando encontrar registro no banco de dados
if(($listagem) and ($listagem->rowCount() != 0)){

    // Aceitar csv ou texto 
    header('Content-Type: text/csv; charset=utf-8');

    // Nome arquivo
    header('Content-Disposition: attachment; filename=Cursos.csv');

    // Gravar no buffer
    $resultado = fopen("php://output", 'w');

    // Criar o cabeçalho do Excel - Usar a função mb_convert_encoding para converter carateres especiais
    $cabecalho = ['ID', mb_convert_encoding('Curso', 'ISO-8859-1', 'UTF-8'),'Plataforma',mb_convert_encoding('Status', 'ISO-8859-1', 'UTF-8'),mb_convert_encoding('usuario', 'ISO-8859-1', 'UTF-8'),mb_convert_encoding('senha', 'ISO-8859-1', 'UTF-8'), mb_convert_encoding('Início', 'ISO-8859-1', 'UTF-8'), mb_convert_encoding('Término', 'ISO-8859-1', 'UTF-8')]; 
   /* $cabecalho = ['ID', 'Curso','Plataforma','Status',mb_convert_encoding('usuario', 'ISO-8859-1', 'UTF-8'),mb_convert_encoding('senha', 'ISO-8859-1', 'UTF-8'), 'Início', 'Término']; */

    // Escrever o cabeçalho no arquivo
    fputcsv($resultado, $cabecalho, ';');

    // Ler os registros retornado do banco de dados
    while($linha = $listagem->fetch(PDO::FETCH_ASSOC)){

        // Escrever o conteúdo no arquivo
        fputcsv($resultado, $linha, ';');
        /*
        fputcsv($resultado, $linha['id_aluno'], ';');
        fputcsv($resultado, $linha['nome_aluno'], ';');
        fputcsv($resultado, $linha['idade'], ';');
        fputcsv($resultado, $linha['data_nascimento'], ';');
        fputcsv($resultado, $linha['matricula'], ';');
        fputcsv($resultado, $linha['id_curso'], ';');
        fputcsv($resultado, $linha['data_registro'], ';'); */
    }

    // Fechar arquivo
    //fclose($resultado);
}else{   
    header("Location: listagem.php");
}