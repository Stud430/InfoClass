
<?php

	include_once '../banco/conexao.php';
  	$conectar = getConnection();

?>



<!DOCTYPE html>
<html>
<head>
	<title> Cadastro </title>
	 <meta charset="utf-8"> <!--
  <meta http-equiv="refresh" content="2"> -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


   <!-- Link Bootstrap -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 

  <nav class="navbar navbar-expand-lg navbar-light bg-light">    
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="navbar-brand">
        <img src="../img/user_mulher.png" width="30" height="30" alt="">
        </a>

        <a class="nav-item nav-link active" href="cursos.php">
          Cadastrar Curso 
          <span class="sr-only">(current)</span></a>

        <a class="nav-item nav-link active" href="listagem.php">
          Listagem 
          <span class="sr-only">(current)</span>
        </a>

        <a class="nav-item nav-link active" href="concluidos.php">
          Cursos Concluídos 
          <span class="sr-only">(current)</span>
        </a>
      </div>
    </div>
  </nav>



<style> 
  div.formulario{
    width: 800px;
    padding-left: 180px;
    margin-left: -150px;
    margin-top: 30px;
    margin-bottom: 30px;
    background-color: transparent; 
    font-size: 25px;
  }

  .form-control{
   /* margin-left: 60px; */
   height: 35px;
  }

 div.form-group{
  margin: 0 auto;
  width: 150%; /* Valor da Largura */
  float: center;
  } 

  div.contexto{
    float: center;
    width: 600px;
  }

  div.col-auto{
    float: center;
    width: 500px;
  }

  div.curso{
    float: center;
    width: 210px;
    padding-left: 15px;
  }
  
  div.duracao{
    float: center;
    width: 200px;
    padding-left: 15px;
  }  
  
  
  label.lblsenha{
    padding-left: 15px;
  }

  label.lbltermino{
    padding-left: -05px;
  }

  label.lblduracao{
    padding-left: 10px;
  }

  label.lblstatus{
    padding-left: 10px;
  }  

  label.lblplataforma{
    width: 50px;
    padding-left: 10px;
  }


  div.plataforma{
    width: 252px;    
    padding-left: 55px;
  }

  div.endereco{
    width: 600px;
    padding-left: 15px;
  }

  div.usuario{
    width: 180px;
    padding-left: 15px;
  }

  div.senha{
    width: 180px;
    padding-left: 15px;
  }

  div.datainicio{
    width: 200px;
    padding-left: 15px;
  }

  div.datatermino{
    width: 200px;
    padding-left: 15px;
  }

  #data_inicio{
    width: 208px;
    margin-left: 5px;
  }

  #data_termino{
    width: 208px;
    margin-left: 5px;
  }


  #cadastrar, #limpar{
/*    background-color: #B6FF80; */
    background-color: #024959;
    /*border-color: #B6FF80;*/
    font-size: 20px;
  
    color: white;
    font-family: verdana;
    margin-top: 10px;    
    border: 0;
  }

  #cadastrar:hover, #limpar:hover{
   /* background-color: #024959; */
   background-color: #B6FF80;
   border: 0;
    color: black;
    font-family: verdana;
  }

  hr{
    background-color: #92AFB3; 
    border-color: #92AFB3;
    border-width: 5px;
    width: 600px;
    color: black;
  }

  #hr-login{
    width: 600px;
    margin-bottom: 35px;
    margin-left: 18px; 
    border-width: 1px;
    border-color: lightgray;
  }

  #usuario_senha{
    width: 215px;
    margin-left: -5px;
  }

  fieldset{
    border: 1px solid black;
    width: 700px;
    height: 620px;
    margin-left: 650px;

    margin-top: 70px;
  }

 legend{
    width: 380px;
    font-size: 25px;

    margin-left: 25px;
    padding-left: 10px;

    background-color: #B6FF80;
    border-radius: 5px;
 }

</style> 


</head>



<body>	<br><br><br>

<fieldset>
<legend>Cadastro de Cursos para Estudar</legend> 

<form action="../model/salvar.php" method="POST" enctype="multipart/form-data">

<div class="formulario">

	
	<div class="form-group row" style="margin-bottom: -15px;">
		<label><font color="red">*</font>Curso: </label>
		<div class="curso">
			<input type="text" name="curso"  class="form-control form-control-sm" placeholder="Nome do Curso" style="margin-left: 5px; width: 530px;"> <br>
		</div>
	</div>

	<div class="form-group row" style="margin-left: -10px;">

		<label class="lblplataforma"><font color="red">*</font>Plataforma: </label>
      <div class="plataforma">
  		<input type="text" name="plataforma" class="form-control form-control-sm" placeholder="Plataforma do Curso" style="margin-left: 48px; width: 180px;"> <br>
		</div>

		<label class="lblduracao" style="margin-left: 35px;">Duracao: </label>
    <div class="duracao">
		<input type="text" name="duracao" class="form-control form-control-sm" placeholder="Duracao do Curso" style="margin-left: -5px;"> <br>
		</div>

	</div>


			
	<div class="form-group row">
		<label><font color="red">*</font>Endereco: </label>
    		
    	<div class="endereco">
			<input type="text" name="endereco" class="form-control form-control-sm" placeholder="Site do Curso" style="width: 492px; margin-left: 5px;"> <br>
		</div>
	</div>	

		<div class="form-group row">

			<label class="lblinicio">Início: </label>
        <div class="datainicio">
  			<input type="date" name="inicio" class="form-control form-control-sm"> 
        <br>
  			</div>

      <label class="lbltermino" style="margin-left: 46px;">Término: </label>
        <div class="datatermino">
  			<input type="date" name="termino" class="form-control form-control-sm">
        <br>
		    </div>

     </div>   

		<div class="form-group row">
      <label class="lblstatus" style="margin-left: -10px;"><font color="red">*</font>Status: </label>
      <div class="form-check">       
          <label class="radio-inline"> 
          <input type="radio" name="status" value="A Fazer">
            <span class="label label-success" style="font-size: 23px;">
              A Fazer
            </span> 
          </label>
      </div>

      <div class="form-check">
        <label class="radio-inline"> 
          <input type="radio" name="status" value="Em Andamento">
            <span class="label label-success" style="font-size: 23px;">
              Em Andamento
            </span> 
        </label>
      </div>

      <div class="form-check">  
        <label class="radio-inline"> 
          <input type="radio" name="status" value="Concluído">
            <span class="label label-success" style="font-size: 23px;">
                Concluído
            </span> 
        </label>
      </div>  
    </p>
</div>


		<div class="form-group row" style="margin-top: 15px;">
      <label class="lblCertificado">Certificado </label>
      <div class="arquivo">
  			<input class="form-control" type="file" id="formFileMultiple" name="arquivo" style="margin-left: 15px; height: 45px; padding-left: 5px; padding-right: 0px;">
  		</div>	
	</div>

<hr id="hr-login">

<div class="form-group row" style="margin-top: 20px;">

	<label><font color="red">*</font> Usuário: </label>
    <div class="usuario">
    <input type="text" name="usuario" class="form-control form-control-sm" placeholder="Usuário" id="usuario_senha">
  </div>

  <label class="lblsenha" style="margin-left: 40px;"><font color="red">*</font>Senha: </label>
    <div class="senha">
    <input type="text" name="senha" class="form-control form-control-sm" placeholder="Senha" id="usuario_senha">
  </div>
  
</div>	

	<br>
<center>
<button type="submit" name="cadastrar" class="btn btn-info" id="cadastrar">Cadastrar</button>
<button type="reset" class="btn btn-info" id="limpar">Limpar</button>
</center>

</div>



</div>
</form>

</fieldset>



</body>






</html>