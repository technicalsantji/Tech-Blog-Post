/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sant.entity;

public class User {

    private int id;
    private String uname;
    private String uemail;
    private String uphone;
    private String utype;
    private String ugender;
    private String upassword;
    private String ucpassword;
    private String profile;

    public User(int id, String uname, String uemail, String uphone, String utype, String ugender, String upassword, String ucpassword, String profile) {
        this.id = id;
        this.uname = uname;
        this.uemail = uemail;
        this.uphone = uphone;
        this.utype = utype;
        this.ugender = ugender;
        this.upassword = upassword;
        this.ucpassword = ucpassword;
        this.profile = profile;
    }
   

    public User(String uname, String uemail, String uphone, String utype, String ugender, String upassword, String ucpassword) {
        this.uname = uname;
        this.uemail = uemail;
        this.uphone = uphone;
        this.utype = utype;
        this.ugender = ugender;
        this.upassword = upassword;
        this.ucpassword = ucpassword;
        
    }

    public User() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        this.utype = utype;
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getUcpassword() {
        return ucpassword;
    }

    public void setUcpassword(String ucpassword) {
        this.ucpassword = ucpassword;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    
    

}
