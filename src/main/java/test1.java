import java.sql.*;
public class test1 {
    public static void main(String[] args) throws  Exception{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","arianlotfi","root");
        System.out.println("Ok");
    }
}
