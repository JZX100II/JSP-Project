<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/29/2023
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .navigation {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            height: 60px;
            background-color: #2c3e50;
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 0 20px;
            box-sizing: border-box;
        }

        .navigation a {
            color: #fff;
            font-size: 16px;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.2s ease-in-out;
        }

        .navigation a:hover {
            background-color: #fff;
            color: #333;
        }
    </style>
</head>
<body>
<div class="navigation">
    <a href="Home.jsp" class="btn-home">Home</a>
    <a href="ShowBook.jsp" class="btn-library">Library</a>
    <a href="Shop.jsp" class="btn-shop">Shop</a>
    <a href="Account.jsp" class="btn-account">My Account</a>
</div>
</body>
</html>
