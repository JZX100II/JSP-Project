<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/30/2023
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Change Name</title>
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
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
        .success {
            color: green;
            text-align: center;
            margin-top: 20px;
        }
        .btn {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Change Name</h1>
    <form>
        <label for="name">New Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your new name" required>
        <input type="submit" value="Save Changes">
    </form>
    <div class="success" style="display:none;">Name change successful!</div>
    <a href="account.html" class="btn" style="display:none;">Go to Account Page</a>
</div>
<script>
    const form = document.querySelector('form');
    const successMsg = document.querySelector('.success');
    const accountBtn = document.querySelector('.btn');

    form.addEventListener('submit', (event) => {
        event.preventDefault();
        // Code to update the user's name goes here
        successMsg.style.display = 'block';
        accountBtn.style.display = 'block';
    });
</script>
</body>
</html>