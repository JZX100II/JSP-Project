<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 7/1/2023
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Class.forName("com.mysql.cj.jdbc.Driver");

  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/things", "arianlotfi", "root");

%>
<%
  int bookId = Integer.parseInt(request.getParameter("name"));
  String query = "SELECT * FROM book WHERE name = " + bookId;
  PreparedStatement statement = connection.prepareStatement(query);
  ResultSet resultSet = statement.executeQuery();
  resultSet.next();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%= resultSet.getString("name") %></h1>
<img src="<%= resultSet.getString("image") %>" alt="<%= resultSet.getString("name") %>">
<p><%= resultSet.getString("description") %></p>
<p>Price: $<%= resultSet.getDouble("price") %></p>

<%
  double price = resultSet.getDouble("price");
  String username = session.getAttribute("username").toString();
  String secQuery = "update users set credit='"+price+"' where username='"+username+"';";
  boolean res = statement.execute(secQuery);

  if(!res)
    response.sendRedirect("Account.jsp");
%>
</body>
</html>
