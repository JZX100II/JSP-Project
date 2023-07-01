<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/29/2023
  Time: 12:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<html>
<head>
    <title>Main</title>
</head>
<body>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/things", "arianlotfi", "root");

    Statement statement = connection.createStatement();

    String username = request.getParameter("username");

    String password = request.getParameter("password");

    String query = "SELECT * FROM users WHERE username=? AND password=?";
    PreparedStatement preparedStatement = connection.prepareStatement(query);
    preparedStatement.setString(1, username);
    preparedStatement.setString(2, password);

    ResultSet resultSet = preparedStatement.executeQuery();
    if(resultSet.next()){
        session.setAttribute("username", username);
        response.sendRedirect("LoggedIn.jsp");
    } else {
        out.print("Username or Password is wrong");
        response.sendRedirect("FailedLogIn.jsp");
    }
%>
</body>
</html>
