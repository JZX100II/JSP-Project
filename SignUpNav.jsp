<%--
  Created by IntelliJ IDEA.
  User: arianlotfi
  Date: 6/28/2023
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/things", "arianlotfi", "root");

    Statement statement = connection.createStatement();

    String name = "John Doe";

    String username = request.getParameter("username");

    String password = request.getParameter("password");

    String email = request.getParameter("email");

    String query = "insert into users(name, username, password, email) values('" + name + "', '" + username + "', '" + password + "', '" + email + "');";

    boolean res = statement.execute(query);

    response.sendRedirect("SignedUp.jsp");

}catch (Exception e){
    response.sendRedirect("FailedSignUp.jsp");
    out.print(e.getMessage());
}






    //String sql="insert into users(name, username, password, email) values('ali', 'ali123', '12345678', 'arian.com');";
/*boolean res=statement.execute(sql);
if (res){
out.print("insert error");
}
else{
//out.print("insert succeed");
//response.sendRedirect("p1.jsp");
String sql1=" select * from users;";
ResultSet rs1=st1.executeQuery(sql1);
while(rs1.next()){
out.print(rs1.getString(1)+"-"+rs1.getString(2)+"-"+rs1.getString(3)+"-"+rs1.getString(4)+"<br>");
}
}*/
%>
</body>
</html>


