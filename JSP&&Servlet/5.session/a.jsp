<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-21
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies) {
            if(cookie.getName().equals("JSESSIONID")){
                out.print("JSESSIONID"+cookie.getValue()+"<br>");
            }
        }
        out.print(session.getAttribute("uName"));
    %>
</body>
</html>
