
<?php
  include '../banco/conexao.php';
  $conectar = getConnection();
?>

<?php
  $sql = "ROLLBACK";
 
//Prepare the SQL query.
$statement = $conectar->prepare($sql);
 
//Execute the statement.
$statement->execute();

//Redirecionado para a pagina de Listagem
        header("Location: ../view/listagem.php");
?>