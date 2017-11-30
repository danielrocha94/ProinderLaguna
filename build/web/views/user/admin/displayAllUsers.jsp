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
        <script  src="js/index.js"></script>
        <link rel="stylesheet" href="css/tableStyle.css">
        <link rel="stylesheet" href="css/dropdown.css">

    <body>
        <div class="container">
            <div class="dropdown">
                <span style='color:black; font-weight: bold'>|Recolectores|</span>
                <div class="dropdown-content">
                    <form action="registerRecollector.html" method="post">
                        <button type="submit" class="btn btn-link" >Agregar</button>
                    </form>

                    <form action="recollector" method="post">
                        <input type="hidden" name="action" value="displayRecollectors">
                        <button type="submit" class="btn btn-link" > Mostrar Todos</button>
                    </form>

                </div>
            </div>

            <div class="dropdown" >
                <span style='color:black; font-weight: bold'>  |Usuarios|</span>
                <div class="dropdown-content">
                    <form action="registerUser.html" method="post">
                        <button type="submit" class="btn btn-link" >Agregar</button>
                    </form>

                    <form action="user" method="post">
                        <input type="hidden" name="action" value="displayUsrrs">
                        <button type="submit" class="btn btn-link" >Mostrar Todos</button>
                    </form>

                </div>
            </div>
            <br>
            <img src="/PRO-INDER/img/logo.png" height="90" width="120" style="float: right"> 
            <h4 style='font-size: 22px'>Usuarios</h4>
            <br><br>


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

                    <div class="row">
                        <tr contenteditable='true'>
                            <td>${user.email}</td>
                            <td>${user.password}</td>
                            <td>${user.fullName}</td>
                            <td>${user.telephone}</td>
                        </tr>   
                    </c:forEach>
                    </tbody>
            </table>
            <br><br>
            <input type="hidden" name="action" value="updateUser">
            <div style='text-align: center'>
                <button type="submit" class="btn btn-success">Save</button>
            </div>
        </form>
    </div>
    <br><br>


</body>
</html>