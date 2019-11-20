<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-20
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //获取cookie
        Cookie[] cookies = request.getCookies();

        for (Cookie cookie:cookies) {
            out.print(cookie.getName());
            out.print(cookie.getValue() + "</br>");
        }
    %>
</body>
</html>
