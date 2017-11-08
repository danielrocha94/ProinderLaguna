<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign Up Form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="/RecycleMapApp/assets/css/style.css">
  <link rel="stylesheet" href="/RecycleMapApp/assets/css/button.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
</head>

<body style="background-color: #f2f2f2;padding: 0px;">
<jsp:include page="/views/shared/header.jsp"/>
<div class="container" style="padding-top: 50px;">
<img src="/RecycleMapApp/assets/images/logo.png" height="90" width="120" style="float: right"> 
  <form action="/RecycleMapApp/user" method="post">
       <input type="hidden" name="action" value="addUser">
       <h4>Registro de cuenta</h4>
       <label>&nbsp;</label>
    <div class="row" style="padding-left: 15px;">
        <label>&nbsp;</label><label>&nbsp;</label>
      <div class="input-group input-group-icon">
        <input type="email" placeholder="Email" name="email" required/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="password" placeholder="Contraseña" name="password" required/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
      <div class="input-group input-group-icon">
          <input type="text" placeholder="Nombre Completo" name="fullName" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
          <input type="tel" placeholder="Telefono" name="telephone" required/>
        <div class="input-icon"><i class="fa fa-phone"></i></div>
      </div>
    </div>
        <label>&nbsp;</label><label>&nbsp;</label>
 <button type="submit" class="btn btn-success" >Registrar</button>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="/RecycleMapApp/assets/javascripts/index.js"></script>

</body>
</html>
