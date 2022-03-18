<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jpa.Usuario"%>

<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/estilos.css"/>
	<! -- Incluindo CSS Bootstrap -->	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" 		crossorigin="anonymous">
	<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <link href="css/agency.min.css" rel="stylesheet">

</head>
<body id="page-top">

 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="/trabalho-pw">Mão Na Roda</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
              <a class="nav-link js-scroll-trigger" style="color: black" href="#page-top">Minha Conta</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" style="color: black" href="#editarusuarios">Usuários Cadastrados</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#alterarsenha" style="color: black">Alterar Senha</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login" style="color: black">Sair</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<br>
<br>
<br>
<br>
<hr>	
<div class=container>
<div class="usuario">
	<img src="img/user.png"/>	
		<a href="#">Minha Conta</a>
		<a href="#">Orçamentos</a>
    </div>
</div>
<hr>
<section id="editarusuarios">
<div class="container">
        
        <div class="row">
        <div class="col-lg-6 col-md-10 mx-auto">
		<h2>Lista de Usuários Cadastrados</h2>
		<br>
		<table style="width:100%">
      	<tr>
        <th>Login</th> 
        <th>Nome</th>
        <th>Tipo</th>
        <th>Ações</th>
        <th>Alterar Tipo</th>
      </tr>
      <%
      ArrayList<Usuario> usuarios =
        (ArrayList<Usuario>) request.getAttribute("usuarios");
      for (Usuario usuario : usuarios) {
      %>
      <tr>
        <td nome=loginencontrado value="<%=usuario.getLogin()%>"><%=usuario.getLogin()%></td>
        <td><%=usuario.getNome()%></td>
        <td><%=usuario.getTipo()%></td>
        <td><a href="login?operacao=excluir&login=<%=usuario.getLogin()%>">Excluir</a></td>
        <td>
        	<form>
        	<input name="loginencontrado" type="hidden" readonly="true" value="<%=usuario.getLogin()%> ">
        	<select name="tipo">
    		<option value="adm" >Administrador</option>
    		<option value="padrao" selected="selected">Comum</option>
			</select> 
			<button name="operacao" value="tipar" class="btn btn-secondary">Alterar</button>
			</form>
		</td>
        
      </tr>
      <%}%>
    </table>
       </div>
    </div>
    </div>
    </section>
<hr>
<section id="alterarsenha">
<div class="container">
        <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                        <p></p>
                        <b>${msg}</b>
                        <form>
                          
                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Altere Sua Senha!</label>
                            </div>
                          </div>
                          
                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Login</label>
                              <input type="text" class="form-control" placeholder="Usuario" id="login" name="login" required data-validation-required-message="Digite o seu login.">
                              <p class="help-block text-danger"></p>
                            </div>
                          </div>

                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Senha</label>
                              <input type="password" class="form-control" placeholder="Senha" id="senha" name="senha"required data-validation-required-message="Digite sua senha..">
                              <p class="help-block text-danger"></p>
                            </div>
                          </div>

                          <br>
                          <div id="success"></div>
                          <div class="form-group">
                            <button name="operacao" value="alterar" class="btn btn-secondary">Alterar</button>
                          </div>
                        </form>
                      </div>
        </div>
    </div>
    </section>

	<!-- Incluindo JQuery e BootStrap-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

	 <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>


    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>
</body>
</html>
