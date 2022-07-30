/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;
import java.sql.*;
import sant.entity.*;
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
//    insert user data in database
    public boolean saveUser(User user)
    {
      boolean f=false;
        try {
            String q="insert into user(uname,uemail,uphone,utype,ugender,upassword,ucpassword) values(?,?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(q);
            pmt.setString(1, user.getUname().trim());
              pmt.setString(2, user.getUemail().trim());
                pmt.setString(3, user.getUphone().trim());
                  pmt.setString(4, user.getUtype());
                    pmt.setString(5, user.getUgender());
                      pmt.setString(6, user.getUpassword().trim());
                       pmt.setString(7, user.getUcpassword().trim());
                      
                       
                        pmt.executeUpdate();
                        f=true;
            
        } catch (SQLException e) {
            
        }
        return f;
    }
    
//    get user by Useremail and Userpassword
    public User getUserByEmailAndPassword(String uemail,String upassword){
        User user=null;
        try {
            String q="select * from user where uemail=? and upassword=? ";
        PreparedStatement pmt=con.prepareStatement(q);
        pmt.setString(1,uemail.trim());
        pmt.setString(2,upassword.trim());
      ResultSet rs =pmt.executeQuery();
            if (rs.next()) {
                user=new User();
                String name=rs.getString("uname");
                user.setUname(name);
                user.setUemail(rs.getString("uemail"));
                user.setUphone(rs.getString("uphone"));
                user.setUpassword(rs.getString("upassword"));
                user.setUtype(rs.getString("utype"));
                user.setUgender(rs.getString("ugender"));
                user.setProfile(rs.getString("profile"));
                user.setId(rs.getInt("id"));
               
            }
      
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return user;
    }
    
    public boolean Updateuser(User user){
        boolean f=false;
        try {
            String q="UPDATE `user` SET `uname`=?,`uemail`=?,`uphone`=?,`upassword`=?,`profile`=? WHERE `id`=?";
            PreparedStatement p=con.prepareStatement(q);
            p.setString(1, user.getUname().trim());
            p.setString(2, user.getUemail().trim());
            p.setString(3, user.getUphone().trim());
            p.setString(4, user.getUpassword().trim());
            p.setString(5, user.getProfile());
               p.setInt(6, user.getId());
            p.executeUpdate();
            
            f=true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
      return f;
    }
    public User getUserByPostId(int uid){
        User user=null;
        try {
            String q="select * from user where id=?";
            PreparedStatement pt=con.prepareStatement(q);
            pt.setInt(1, uid);
           
            ResultSet rs= pt.executeQuery();
             if (rs.next()) {
                user=new User();
                String name=rs.getString("uname");
                user.setUname(name);
                user.setUemail(rs.getString("uemail"));
                user.setUphone(rs.getString("uphone"));
                user.setUpassword(rs.getString("upassword"));
                user.setUtype(rs.getString("utype"));
                user.setUgender(rs.getString("ugender"));
                user.setProfile(rs.getString("profile"));
                user.setId(rs.getInt("id"));
               
            }
        } catch (Exception e) {
        }
        
       return user;
    }
}
