/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author tien_do
 */
public class Admin {

    String Username, Password;

    Connection con;
    Statement stm;
    ResultSet rs;

    public Admin() {
        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }
    }

    public Admin(String Username, String Password) {
        this.Username = Username;
        this.Password = Password;

        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    
    public boolean checkLogin() {

        //Check xem account co ton tai trong tblUser hay khong?
        //Ton tai thi return true
        //Nguoc lai return false
        try {
            String strSelect = "select * from [Admin] where Username='" +Username + "' and Password='" + Password + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Fail:" + e.getMessage());
        }
        return false;
    }
}
