<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/28/2023
  Time: 8:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up Page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .signup-box {
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
        input[type="email"],
        input[type="password"] {
            padding: 10px;
            border-radius: 5px;
            border: none;
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

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div class="signup-box">
    <h1>Sign Up</h1>
    <form method="post" action="SignUpNav.jsp">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required>

        <label for="email">Email Address:</label>
        <input type="email" name="email" id="email" required>

        <label for="password">Password:</label>
        <div class="password-field">
            <input type="password" name="password" id="password" required>
            <button type="button" id="show-password">Show Password</button>
        </div>

        <input type="submit" value="Sign Up">
    </form>
    <p>Already have an account? <a href="Login.jsp">Log in</a></p>
</div>

<script language = "javascript" type = "text/javascript">
    const showPasswordButton = document.getElementById("show-password");
    const passwordField = document.getElementById("password");
    const emailField = document.getElementById("email");

    showPasswordButton.addEventListener("click", () => {
        if (passwordField.type === "password") {
            passwordField.type = "text";
            showPasswordButton.textContent = "Hide Password";
        } else {
            passwordField.type = "password";
            showPasswordButton.textContent = "Show Password";
        }
    });

    document.querySelector("form").addEventListener("submit", (event) => {
        const username = document.getElementById("username").value;
        const email = emailField.value;
        const password = passwordField.value;

        const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*[${username}])[a-zA-Z0-9]{8,}$/;
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        const passwordErrorMessage = document.querySelector("#password-error-message");
        if (passwordErrorMessage) {
            passwordErrorMessage.remove();
        }

        if (!passwordRegex.test(password)) {
            event.preventDefault();
            const errorMessage = document.createElement("div");
            errorMessage.id = "password-error-message";
            errorMessage.classList.add("error-message");
            errorMessage.textContent = "Password must be at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number. It should not contain your username.";
            passwordField.insertAdjacentElement("afterend", errorMessage);
        }

        const emailErrorMessage = document.querySelector("#email-error-message");
        if (emailErrorMessage) {
            emailErrorMessage.remove();
        }

        if (!emailRegex.test(email)) {
            event.preventDefault();
            const errorMessage = document.createElement("div");
            errorMessage.id = "email-error-message";
            errorMessage.classList.add("error-message");
            errorMessage.textContent = "Please enter a valid email address.";
            emailField.insertAdjacentElement("afterend", errorMessage);
        }
    });
</script>
</body>
</html>
