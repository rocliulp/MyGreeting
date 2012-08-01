<%@ page language="java" %>
<%
if (pageContext.getAttribute ("pageCount") == null) {
  pageContext.setAttribute ("pageCount", new Integer (0));
}

if (session.getAttribute ("sessionCount") == null) {
  session.setAttribute ("sessionCount", new Integer (0));
}

if (application.getAttribute ("appCount") == null) {
  application.setAttribute ("appCount", new Integer (0));
}
%>

<HTML>
  <BODY>
    <%
    Integer count = (Integer) pageContext.getAttribute ("pageCount");
    pageContext.setAttribute ("pageCount", new Integer (count.intValue () + 1));
    Integer count2 = (Integer) session.getAttribute ("sessionCount");
    session.setAttribute ("sessionCount", new Integer (count2.intValue () + 1));
    Integer count3 = (Integer) application.getAttribute ("appCount");
    application.setAttribute ("appCount", new Integer (count3.intValue () + 1));
    %>
    Page Count = <%= pageContext.getAttribute ("pageCount") %>
    <br/> Session count = <%= session.getAttribute ("sessionCount") %>
    <br/> Application count = <%= application.getAttribute ("appCount") %>
    <br/> Time = <%= new java.sql.Time (System.currentTimeMillis ()) %>
  </BODY>
</HTML>
