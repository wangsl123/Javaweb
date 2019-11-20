<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-20
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    欢迎：<br>
    <%
        String name = request.getParameter("uname");
        out.print(name);
    %>
</body>
</html>
