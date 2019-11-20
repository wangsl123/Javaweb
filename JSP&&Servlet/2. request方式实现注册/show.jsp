<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-20
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //设置编码
        request.setCharacterEncoding("utf-8");

        String uName = request.getParameter("uname");
        int age = Integer.parseInt(request.getParameter("age"));
        String upwd = request.getParameter("upwd");
        String[] uHobbies = request.getParameterValues("uhobbies");
    %>

    注册成功，信息如下：

    <%=uName%>
    <%=age%>
    <%=upwd%>
    <%
        for (String hobby:uHobbies){
            out.print(hobby);
        }
    %>
</body>
</html>
