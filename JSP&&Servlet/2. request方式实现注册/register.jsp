<%--
  Created by IntelliJ IDEA.
  User: OrienWsL
  Date: 2019-11-20
  Time: 14:38
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

<form action="show.jsp">
    用户名：<input type="text" name="uname">
    密码：<input type="password" name="upwd">
    年龄：<input type="text" name="age">
    爱好：<br>
    <input type="checkbox" name="uhobbies" id="" value="足球">足球
    <input type="checkbox" name="uhobbies" id="" value="蓝球">篮球
    <input type="checkbox" name="uhobbies" id="" value="网球">网球

    <input type="submit" value="提交">
</form>
</body>
</html>
