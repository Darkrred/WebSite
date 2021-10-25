package com.beans;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class DAO {
    public void InsertInformation(Information information) {
        Connection conn = DBHelper.getConnection();
        try {
            String sql_insert = "INSERT INTO information(title, content) VALUES(?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql_insert);
            ps.setString(1, information.getInformation_title());
            ps.setString(2, information.getInformation_content());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public ArrayList ShowInformation() {
        // SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String sql_query = "SELECT * FROM information";
        Connection conn;
        Statement stat;
        ArrayList<Information> arrayList = new ArrayList<>();
        int i = 0;
        try {
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql_query);
            for(; i < 5; i++) {
                rs.next();
                Information information = new Information();
                information.setInformation_title(rs.getString("title"));
                information.setInformation_content(rs.getString("content"));
                information.setInformation_time(rs.getDate("time"));
                information.setInformation_id(rs.getInt("id"));
                arrayList.add(information);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return arrayList;
    }
    public void DeleteInformation(int id) {
        String sql_query = "DELETE FROM information WHERE id = '"+id+"'";
        Connection conn;
        Statement stat;
        try {
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            stat.executeUpdate(sql_query);
            stat.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
