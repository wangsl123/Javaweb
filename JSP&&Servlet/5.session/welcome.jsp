<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-21
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    欢迎你：<br>
    <%
        String uName = (String) session.getAttribute("uName");
        out.print(uName);
        //session.getAttribute("uPwd")
    %>
    <br>
    <a href="inviladate.jsp">注销</a>
</body>
</html>
