<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 7/1/2023
  Time: 12:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Credit Card</title>
</head>
<body>
<%
    try{

        String creditCard = request.getParameter("creditCard");

        String username ="";
        if (session.getAttribute("username") != null) {
            username = session.getAttribute("username").toString();
        }
        else{
            throw new Exception();
        }
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/things", "arianlotfi", "root");

        Statement statement = connection.createStatement();

        String query = "update users set creditnum='" + creditCard + "' where username='" + username + "';";

        boolean res = statement.execute(query);

        if(!res)
            response.sendRedirect("Account.jsp");

    }

    catch (Exception e){

        out.print(e.getMessage());

    }

%>
</body>
</html>
