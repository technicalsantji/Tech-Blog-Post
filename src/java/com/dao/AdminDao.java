/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.*;
import sant.entity.Admin;

/**
 *
 * @author SANT JI
 */
public class AdminDao {
    Connection con;

    public AdminDao(Connection con) {
        this.con = con;
    }
  public Admin loginAdminByEmailOrPhoneAndPassword(String email,String phone,String password){
      Admin a=null;
      try {
           String q="SELECT * FROM `admin` WHERE aphone=? OR aemail=? AND apassword=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, email);
            ps.setString(2, phone);
            ps.setString(3, password);
          ResultSet rs= ps.executeQuery();
            while (rs.next()) { 
                 a=new Admin();
                a.setAid(rs.getInt("aid"));
                a.setAname(rs.getString("aname"));
                a.setAphone(rs.getString("aphone"));
                a.setAemail(rs.getString("aemail"));
                a.setApassword(rs.getString("apassword"));
              
               
                
                
                
              
          }
      } catch (Exception e) {
          e.printStackTrace();
      }
     return a;
  }
  
    
}
