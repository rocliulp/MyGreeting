<%@ page language="java" %>

<html>
  <body>
    character encoding = <%= response.getCharacterEncoding() %>
    <br/><br/>
    Headers
    <br/><br/>
    <%
      java.util.Enumeration headerNames = request.getHeaderNames ();
      while (headerNames.hasMoreElements ()) {
        String headerName = (String) headerNames.nextElement ();
        String header = (String) request.getHeader (headerName);
    %>
    <%= headerName %> = <%= header %>
    <br/>
    <%
      }
    %>
  </body>
</html>
