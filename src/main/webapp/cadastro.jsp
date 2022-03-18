<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mão Na Roda</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
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
              <a class="nav-link js-scroll-trigger" href="login" style="color: black">Entrar</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in" style="color: black">Cadastre-se!</div>
        </div>
      </div>
    </header>
    
<!-- Main Content -->
    <div class="container">
        <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                        <p></p>
                        <b>${msg}</b>
                        <form>
                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Nome</label>
                              <input type="text" class="form-control" placeholder="Nome" id="nome" name="nome" required data-validation-required-message="Digite seu nome.">
                              <p class="help-block text-danger"></p>
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
                            <button name="operacao" value="cadastrar" class="btn btn-secondary">Cadastrar</button>
                          </div>
                        </form>
                      </div>
        </div>
    </div>


    
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
<!--     <script src="js/contact_me.js"></script> -->

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>

  </body>

</html>