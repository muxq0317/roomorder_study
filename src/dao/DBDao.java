package dao;


import java.sql.*;

public class DBDao {
    private static String USER = "root";
    private static String PASSWORD = "123456";
    private static String DB_URL = "jdbc:mysql://localhost:3306/login";
    private static String DB_DRIVER = "com.mysql.jdbc.Driver";
//  private static String SQL = "";
    private static Connection connection = null;

    //�������ݿ�
    public static Connection getConnection(){

        try {
            Class.forName(DB_DRIVER);
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
        } catch (Exception e) {
            System.out.println("���ݿ������쳣");
            e.printStackTrace();
        }
        return connection;
    }
    public  static void closeConnection(Connection connection){

                    if(connection != null){
                        try {
                            connection.close(); // �ر����ݿ�����
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }
    }

