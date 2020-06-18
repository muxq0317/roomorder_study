package util;


import java.sql.*;

public class DButil {
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection connection= null;
        try {
            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/zjgm?characterEncoding=utf-8&user=root&password=123456");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("²Ù×÷³É¹¦!");
        return connection;
    }
    public static void closeAll(ResultSet resultSet, Statement statement, Connection connection){
        if (resultSet!=null){
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection!=null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (statement!=null){
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
