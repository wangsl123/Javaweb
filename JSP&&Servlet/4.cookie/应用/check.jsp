<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-20
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String uName = request.getParameter("uname");
        String uPwd = request.getParameter("upwd");

        //服务端在响应客户端时，会发送一个JSESSIONID的cookie

        //将用户名加到cookie中
        Cookie cookie = new Cookie("name",uName);

        response.addCookie(cookie);
        response.sendRedirect("success.jsp");

    %>
</body>
</html>
