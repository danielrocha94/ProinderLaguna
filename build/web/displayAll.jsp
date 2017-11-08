<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <html >
        <head>
            <meta charset="UTF-8">
            <title>Display Users</title>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
            <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
            <link rel="stylesheet" href="css/style.css">
            <link rel="stylesheet" href="css/button.css">
          <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
            <script type="text/javascript" charset="utf8" src="/js/jquery.dataTables.js"></script></head>
 <script  src="js/index.js"></script>
             <script  src="js/usersDataTable.js"></script>
        <body>
            <div class="container">
                <img src="/PRO-INDER/img/logo.png" height="90" width="120" style="float: right"> 
                <br><br><br><br><br><br>
                
            
                    <table border="2" id="usersTable"class="cell-border hover compact" cellspacing="0" width="100%">
                        <thead>
                    <tr>
                        <th>Email</th>
                        <th>Contraseña</th>
                        <th>Nombre Completo</th>
                        <th>Telefono</th>
                    </tr>
                        </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}" >
                        
                        <div class="row" id="projectInfo">
                        <tr>
                            <td>${user.email}</td>
                            <td>${user.password}</td>
                            <td>${user.fullName}</td>
                            <td>${user.telephone}</td>
                        </tr>   
                    </c:forEach>
                        </tbody>
                </table>
               
            </div>
           
        </body>
    </html>