<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 7/1/2023
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/things", "arianlotfi", "root");

    Statement statement = connection.createStatement();
%>
<%
    String query = "SELECT * FROM book";
    ResultSet resultSet = statement.executeQuery(query);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>ISBN</th>
    </tr>
    </thead>
    <tbody>
    <%
        while (resultSet.next()) {
            String title = resultSet.getString("name");
            String author = resultSet.getString("author");
            String isbn = resultSet.getString("price");
            String image = resultSet.getString("image");
            String description = resultSet.getString("description");
    %>
    <tr>
        <div class="book">
            <h2><%= title %></h2>
            <div class="book-info">
                <img src="<%= image %>" alt="<%= title %>" />
                <div class="book-details">
                    <p><strong>Author:</strong> <%= author %></p>
                    <p><strong>Price:</strong> <%= isbn %></p>
                    <p><%= description %></p>
                </div>
            </div>
        </div>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
