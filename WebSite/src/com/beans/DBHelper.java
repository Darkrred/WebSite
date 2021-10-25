package com.beans;

import java.sql.*;

public class DBHelper {


    private static final String url = "jdbc:mysql://localhost:3306/website";
    private static final String userName = "root";
    private static final String passWord = "root";
    private static Connection conn = null;

    private DBHelper() {

    }

    public static Connection getConnection(){
        if(null == conn){
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, userName, passWord);
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return conn;
    }

    public static void main(String[] args) {

    }
}