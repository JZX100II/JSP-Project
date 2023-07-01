<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/30/2023
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Failed Sign Up: Duplicate Username</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        .container {
            margin: 50px auto;
            padding: 20px;
            max-width: 500px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        p {
            margin-bottom: 20px;
            color: #777;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        input[type="text"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            width: 100%;
        }
        input[type="submit"], .signup-btn {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover, .signup-btn:hover {
            background-color: #555;
        }
        .signup-btn {
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            display: block;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Failed Sign Up: Duplicate Username</h1>
    <p>We're sorry, but it looks like the username you entered is already taken. Please choose a different username and try again.</p>
    <p>Here are a few tips for selecting a unique username:</p>
    <ul>
        <li>Try adding numbers or special characters to your preferred username.</li>
        <li>Consider using a variation of your name or a nickname.</li>
        <li>Use a combination of words that are meaningful to you.</li>
    </ul>
    <p>If you don't have an account yet, you can sign up by clicking the button below.</p>
    <a href="SignUp.jsp" class="signup-btn">Sign Up</a>
    <p>If you continue to have trouble creating an account, please reach out to our support team for assistance. We're here to help you get started and answer any questions you may have.</p>
</div>
</body>
</html>