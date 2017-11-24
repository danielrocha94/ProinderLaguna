<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mapNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="/RecycleMapApp/index.jsp">Pro-Inder</a>
    </div>
    <div class="collapse navbar-collapse" id="mapNavbar">
      <ul class="nav navbar-nav">
        <li class="${pageContext.request.requestURI eq '/RecycleMapApp/index.jsp' ? 'active' : '' }"><a href="/RecycleMapApp/index.jsp">Inicio</a></li>
        <li class="${pageContext.request.requestURI eq '/RecycleMapApp/views/user/map.jsp' ? 'active' : '' }"><a href="/RecycleMapApp/views/user/map.jsp">Mapa</a></li>
        <li class="${pageContext.request.requestURI eq '/RecycleMapApp/views/static_pages/contact.jsp' ? 'active' : '' }"><a href="/RecycleMapApp/views/static_pages/contact.jsp">Contactanos</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${fullName}</a></li>
        <li><a href="/RecycleMapApp/logout"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesiòn</a></li>
      </ul>
    </div>
  </div>
</nav>
