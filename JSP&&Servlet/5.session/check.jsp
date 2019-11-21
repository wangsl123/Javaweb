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
        if(uName.equals("张三")){
            //登录成功
//            response.sendRedirect("success.jsp");//重定向：导致数据丢失

            //请求转发：可以获取到数据，并且地址栏没有改变，仍然保留转发时页面
           // request.getRequestDispatcher("success.jsp").forward(request,response);
            session.setAttribute("uName",uName);
            session.setAttribute("uPwd",uPwd);
            session.setMaxInactiveInterval(10);  //设置最大非活动时间

            Cookie cookie = new Cookie("uName",uName);
            response.addCookie(cookie);

            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }else{
            //out.print("用户名错误");
            //登录失败，重新登录
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
