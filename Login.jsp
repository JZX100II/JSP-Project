<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/28/2023
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .login-box {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin: 50px auto;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            margin-top: 0;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 18px;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            border-radius: 5px;
            border: white;
            margin-bottom: 15px;
        }

        .password-field {
            position: relative;
        }

        input[type="password"] {
            padding-right: 50px;
        }

        #show-password {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 10px;
            background-color: transparent;
            border: none;
            font-size: 14px;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="login-box">
    <h1>Login</h1>
    <form method="post" action="LoginNav.jsp">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required>

        <label for="password">Password:</label>
        <div class="password-field">
            <input type="password" name="password" id="password" required>
            <button type="button" id="show-password">Show Password</button>
        </div>
        <input type="submit" value="Login">
    </form>
    <p>Don't have an account? <a href="SignUp.jsp">Sign up</a></p>
</div>

<script language = "javascript" type = "text/javascript">
    const showPasswordButton = document.getElementById("show-password");
    const passwordField = document.getElementById("password");

    showPasswordButton.addEventListener("click", () => {
        if (passwordField.type === "password") {
            passwordField.type = "text";
            showPasswordButton.textContent = "Hide Password";
        } else {
            passwordField.type = "password";
            showPasswordButton.textContent = "Show Password";
        }
    });
</script>
</body>
</html>