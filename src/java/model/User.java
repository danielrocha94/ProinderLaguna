/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Anet
 */
public class User {
    private String email;
    private String password;
    private String fullName;
    private String telephone;
    private Double longitude;
    private Double altitude;
    private Boolean isAdmin;

    public User() {
    }

    public User(String email, String password, String fullName, String telephone) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
    
    public Double getLatitude() {
        return altitude;
    }

    public void setLatitude(Double altitude) {
        this.altitude = altitude;
    }
    
    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }
    
    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
    }
    
    public Boolean hasPassword(String password) {
        if (this.password.trim().equals(password)) {
            return true;
        } else {
            return false;
        }
    }
}
