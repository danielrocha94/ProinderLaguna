<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="padding: 0px;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reciclaje inclusivo</title>
        
        <link rel="stylesheet" href="/RecycleMapApp/assets/css/contact.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="assets/css/application.css"/>
    </head>
    <body class="map__body" style="height: 80vh;padding: 0px;">
        <jsp:include page="/views/shared/header.jsp"/>
        <div style="padding-top: 25px;">
          <h1> Formulario de contacto</h1>
            <form class="cf">
              <div class="half left cf">
                <input type="text" id="input-name" placeholder="Nombre">
                <input type="email" id="input-email" placeholder="Direccion de Email">
                <input type="text" id="input-subject" placeholder="Tema">
              </div>
              <div class="half right cf">
                <textarea name="message" type="text" id="input-message" placeholder="Mensaje"></textarea>
              </div>  
              <input type="submit" value="Enviar" id="input-submit">
            </form>
        </div>
        <jsp:include page="/views/shared/footer.jsp"/>
    </body>
</html>
