<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/29/2023
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>My Account</title>
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
            flex-direction: row;
            align-items: center;
        }

        .container > * {
            flex: 1;
            margin: 0 10px;
        }

        img {
            max-width: 200px;
            border-radius: 50%;
            display: block;
            margin: 0 auto;
        }

        table {
            margin-top: 50px;
            border-collapse: collapse;
            width: 100%;
            max-width: 800px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 20px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2c3e50;
            color: #fff;
            font-weight: bold;
        }

        td {
            font-size: 20px;
        }

        form {
            margin-top: 50px;
            max-width: 500px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            font-size: 18px;
        }

        input[type="text"], input[type="number"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 18px;
            box-sizing: border-box;
        }

        button[type="submit"] {
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

        button[type="submit"]:hover {
            background-color: #2980b9;
        }

        a {
            display: block;
            width: 200px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background-color: #2c3e50;
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            margin: 50px auto 0;
            transition: background-color 0.3s ease-in-out;
        }

        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/things", "arianlotfi", "root");

    //Statement statement = connection.createStatement();

    String username = session.getAttribute("username").toString();

    //out.println("=====>"+username);

    String query = "SELECT * FROM users WHERE username=?";
    //System.out.println("=====>"+query+"  "+username);
    PreparedStatement preparedStatement = connection.prepareStatement(query);

    preparedStatement.setString(1, username);

    ResultSet resultSet = preparedStatement.executeQuery();

    int c = 1;

    List<String> data = new ArrayList<>();

    if(resultSet.next()) {
        //ResultSetMetaData rsmd=resultSet.getMetaData();
        //out.print("=========>"+rsmd.getColumnCount());
        for (int i = 1; i <= 6; i++)
            data.add(resultSet.getString(i));
    }



%>
<h1>My Account</h1>
<div class="container">
    <img src="https://via.placeholder.com/200x200" alt="Profile Picture">
    <div>
        <table>
            <tr>
                <th>Name</th>
                <td><%

                   out.print(data.get(0));

                %></td>
            </tr>
            <tr>
                <th>Username</th>
                <td><%

                    out.print(data.get(1));

                %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%

                    out.print(data.get(3));

                %></td>
            </tr>
            <tr>
                <th>Credit Card Number</th>
                <td><%
                    if(data.get(5).contains("NULL"))
                        out.print("**** **** **** 1234");
                    else
                        out.print(data.get(5));

                %></td>
            </tr>
            <tr>
                <th>Current Balance</th>
                <td><%
                    if(data.get(4) == null)
                        out.print("$0");
                    else
                        out.print( "$" + data.get(4));

                %></td>
            </tr>
        </table>
        <form method="post" action="AddMoney.jsp">
            <label for="amount">Enter Amount to Add:</label>
            <input type="number" id="amount" name="amount" required>
            <label for = "card">Enter Credit Card Number:</label>
            <input type="text" id="card" name="card" required>
            <button type="submit">Add Funds</button>
        </form>
        <a href="EditProfile.jsp">Edit Profile</a>
        <a href="Login.jsp">Logout
            <%
                //session.removeAttribute("username");
            %>
        </a>
    </div>
</div>
</body>
</html>