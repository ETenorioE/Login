package com.example.login;

public class Logear {
    private  int user_dni;
    private String user_namepri;

    public Logear() {
    }
    public Logear(int user_dni, String user_namepri) {
        this.user_dni = user_dni;
        this.user_namepri = user_namepri;
    }

    public int getUser_dni() {
        return user_dni;
    }

    public void setUser_dni(int user_dni) {
        this.user_dni = user_dni;
    }

    public String getUser_namepri() {
        return user_namepri;
    }

    public void setUser_namepri(String user_namepri) {
        this.user_namepri = user_namepri;
    }
}
