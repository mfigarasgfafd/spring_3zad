package org.example.model;

public class User {
    private String login;
    private String password;
    private Role role;

    private String rentedPlate;

    public User(String login, String password, Role role, String rentedPlate) {
        this.login = login;
        this.password = password;
        this.role = role;
        this.rentedPlate = rentedPlate;
    }

    public User(String login, String password) {
        this.login = login;
        this.password = password;
        this.role = Role.USER;
    }

    public User() {
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getRentedPlate() {
        return rentedPlate;
    }

    public void setRentedPlate(String rentedPlate) {
        this.rentedPlate = rentedPlate;
    }

    @Override
    public String toString() {
        return "User{" +
                "login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", rentedPlate=" + rentedPlate +
                '}';
    }

    public String toCSV() {
        return new StringBuilder()
                .append(this.getClass().getSimpleName())
                .append(";")
                .append(this.login)
                .append(";")
                .append(this.password)
                .append(";")
                .append(this.role)
                .append(this.rentedPlate)
                .toString();
    }

    public enum Role {
        USER,ADMIN;
    }

}
