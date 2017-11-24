<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

<% if(session.getAttribute("email") != null) { %>
  <jsp:include page="/views/shared/header/user_header.jsp"/>
<% } else { %>
  <jsp:include page="/views/shared/header/anon_header.jsp"/>
<% } %>
