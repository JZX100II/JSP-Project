<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/29/2023
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Book Shop</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-top: 50px;
            font-size: 36px;
        }

        .container {
            margin: 50px auto;
            max-width: 800px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .book {
            width: calc(33.33% - 20px);
            margin-bottom: 50px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
        }

        .book img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }

        .book-info {
            padding: 20px;
        }

        .book-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .book-author {
            font-size: 18px;
            font-style: italic;
            margin-bottom: 10px;
        }

        .book-description {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .book-price {
            font-size: 18px;
            font-weight: bold;
            color: #2c3e50;
        }

        .button {
            display: block;
            background-color: #2c3e50;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<h1>Book Shop</h1>
<div class="container">
    <% while (resultSet.next()) { %>
    <div class="book">
        <img src="<%= resultSet.getString("image") %>" alt="<%= resultSet.getString("name") %>">
        <div class="book-info">
            <div class="book-title"><%= resultSet.getString("name") %></div>
            <div class="book-author"><%= resultSet.getString("author") %></div>
            <div class="book-description"><%= resultSet.getString("description") %></div>
            <div class="book-price">$<%= resultSet.getDouble("price") %></div>
            <button class="button">Add to Cart</button>
            <button class="button"><a href="buy.jsp?book_id=<%= resultSet.getString("name") %>">Buy Now</a></button>
        </div>
    </div>
    <% } %>
</div>
</body>
</html>