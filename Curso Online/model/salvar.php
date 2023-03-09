
<?php
  include '../banco/conexao.php';
  $conectar = getConnection();
?>

<?php
function data($data){
    return date("d/m/Y",strtotime($data));
    // Y = Ano inteiro (ex: 2020)
    // y = Ano pelo metade (ex: 20) 
}

    //$sql = 'INSERT INTO produto (descricao,qtd,valor) VALUES (:desc,:qtd,:valor)';
    $sql = 'INSERT INTO cursos (curso,plataforma,duracao,endereco,inicio, termino, usuario,senha,status_curso,certificado,created) VALUES (:curso,:plataforma,:duracao,:endereco,:data_inicio, :data_termino,:usuario,:senha,:status_curso,:certificado,:created)';

    date_default_timezone_set('America/Sao_Paulo');
    setlocale(LC_TIME, "pt_BR");
            
    $agora = getdate();

    $a = $agora["year"];
    $m = $agora["mon"];//utf8_encode(strftime("%B"));
    $d = $agora["mday"];
 
    $created = $d . "/" . $m . "/" . $a;

    $curso = $_POST["curso"];
    $plataforma = $_POST["plataforma"];
    $duracao = $_POST["duracao"];
    $endereco = $_POST["endereco"];

    if ( $_POST["inicio"] == null) {
        $data_inicio = ""; //$data_inicio = "00/00/0000";
    } else {
        $di = $_POST["inicio"];
        $data_inicio = data($di);
    }
    
    if ( $_POST["termino"] == null) {
        $data_termino = ""; //$data_termino = "00/00/0000";
    } else {
        $dt = $_POST["termino"];
        $data_termino = data($dt);
    }
    
    

    $usuario = $_POST["usuario"];
    $senha = $_POST["senha"];
    $status_curso = $_POST["status"];

    // Recebendo os dados do arquivo
    $nome_arquivo = empty($_FILES['arquivo']['name']) ? null : $_FILES['arquivo']['name'];
    $tmp_arquivo = empty($_FILES['arquivo']['tmp_name']) ? null : $_FILES['arquivo']['tmp_name'];

    $diretorio = empty($_FILES['arquivo']['name']) ? null : '../uploads/';
    $pasta = $diretorio . $nome_arquivo;

    /* **************************************** */
 

    $stmt = $conectar->prepare($sql);
    $stmt->bindParam(':curso', $curso);
    $stmt->bindParam(':plataforma', $plataforma);
    $stmt->bindParam(':duracao', $duracao);
    $stmt->bindParam(':endereco', $endereco);
    $stmt->bindParam(':data_inicio', $data_inicio);
    $stmt->bindParam(':data_termino', $data_termino);
    $stmt->bindParam(':usuario', $usuario);
    $stmt->bindParam(':senha', $senha);
    $stmt->bindParam(':status_curso', $status_curso);
    $stmt->bindParam(':certificado',$pasta);
    $stmt->bindParam(':created', $created);
   
/*
    if($stmt->execute()){
       header("location:../view/cursos2.php");
    }else{
       // header("location: ../view/cursos.php");
        //echo ' Erro ao salvar!';
        //die($stmt->execute());
    }
*/

    if($stmt->execute()){
        if (move_uploaded_file($_FILES['arquivo']['tmp_name'], $pasta)) {
            header("location: ../view/cursos.php");
        } else {
            header("location: ../view/listagem.php");
        }
        //echo 'Salvo com sucesso!';        
       // header("location:../view/tela_cadastro.php");
    }else{
        header("location: ../view/listagem.php");
        //echo ' Erro ao salvar!';
        //die($stmt->execute());
    }


?>
