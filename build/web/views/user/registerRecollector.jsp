<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign Up Form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="/RecycleMapApp/assets/css/style.css">
  <link rel="stylesheet" href="/RecycleMapApp/assets/css/button.css">


  
</head>

<body>

<div class="container">
<img src="/PRO-INDER/img/logo.png" height="90" width="120" style="float: right"> 
  <form action="recollector" method="post">
       <input type="hidden" name="action" value="addRecollector">
       <h4>Registro de cuenta</h4>
       <label>&nbsp;</label>
    <div class="row">
        <label>&nbsp;</label><label>&nbsp;</label>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="ID" name="id" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
          <input type="text" placeholder="Nombre Completo" name="fullName" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
          <input type="tel" placeholder="Teléfono" name="telephone" required/>
        <div class="input-icon"><i class="fa fa-phone"></i></div>
      </div>
        <div class="input-group input-group-icon">
          <input type="text" placeholder="Latitude" name="latitude" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
         <div class="input-group input-group-icon">
          <input type="text" placeholder="Longitude" name="longitude" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
    </div>
        <label>&nbsp;</label><label>&nbsp;</label>
 <button type="submit" class="btn btn-success" >Registrar</button>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="js/index.js"></script>

</body>
</html>
