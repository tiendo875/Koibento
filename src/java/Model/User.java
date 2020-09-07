/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author XPS 13
 */
public class User {

    String username;
    String password;
    String Address;
    String BirthDate;

    private Connection cnn;
    private Statement stm;
    private ResultSet rs;

    public User() {

    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;

        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (Exception e) {
            System.out.println("Connect fail" + e.getMessage());
        }
    }

    public User(String username, String password, String Address, String BirthDate) {
        this.username = username;
        this.password = password;
        this.Address = Address;
        this.BirthDate = BirthDate;

        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (Exception e) {
            System.out.println("Connect fail" + e.getMessage());
        }
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(String BirthDate) {
        this.BirthDate = BirthDate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean checkLogin() {
        try {

            String strSelect = "Select * from [User] where Username='" + username + "' and Password = '" + password + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("fail: " + e.getMessage());
        }
        return false;

    }

    public void insert(String acc, String pass, String address, String DOB) {
        String strSelect = "Insert into [User] values ('" + acc + "','" + pass + "','" + address + "','" + DOB + "')";
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            cnn.close();
        } catch (Exception e) {
        }
    }
}
