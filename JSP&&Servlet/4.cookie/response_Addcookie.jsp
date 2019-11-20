<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-20
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //服务端

        Cookie cookie = new Cookie("name","张三");
        Cookie cookie2 = new Cookie("pwd","123");
        response.addCookie(cookie);
        response.addCookie(cookie2);

        //页面跳转到客户端
        response.sendRedirect("result.jsp");
    %>
</body>
</html>
