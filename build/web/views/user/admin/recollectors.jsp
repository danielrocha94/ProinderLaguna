<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Recolectores</title>
        <meta charset="utf-8">
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
        <link rel="stylesheet" href="/RecycleMapApp/assets/css/style.css">
        <link rel="stylesheet" href="/RecycleMapApp/assets/css/button.css">
        <link rel="stylesheet" href="/RecycleMapApp/assets/css/recollector.css">
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
    <body style="background-color: #f2f2f2;padding: 0px;">
        <jsp:include page="/views/shared/header.jsp"/>
        <header style="width: 90%;margin: auto;">
            <h2>
                Recolectores
                <button class="btn btn-default" data-toggle="modal" data-target="#newRecollectorModal" style="padding-right: 15px;"> Agregar Nuevo</button>
            </h2>
        </header>
        <div class="recollectorsContainer" style="padding-top: 50px;">
            <jsp:include page="/views/user/admin/addRecollector.jsp"/>
            <br>
            <br>
            <jsp:include page="/views/user/admin/displayRecollectors.jsp"/>
            <jsp:include page="/views/user/admin/newRecollector.jsp"/>
            <jsp:include page="/views/user/admin/editRecollector.jsp"/>

        </div>        
    </body>
</html>
