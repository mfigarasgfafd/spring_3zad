package org.example.dao.jdbc;

import org.example.model.Car;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddCarStrategy implements AddVehicleStrategy{

    private final Car car;
    private final String INSERT_SQL = "INSERT INTO tvehicle (brand, model, year, price, plate) VALUES (?,?,?,?,?)";
    public AddCarStrategy(Car car) {
            this.car = car;
    }

    @Override
    public PreparedStatement prepare(Connection conn) throws SQLException {
        PreparedStatement stmt = conn.prepareStatement(INSERT_SQL);
            stmt.setString(1, car.getBrand());
            stmt.setString(2, car.getModel());
            stmt.setInt(3, car.getYear());
            stmt.setDouble(4, car.getPrice());
            stmt.setString(5, car.getPlate());
        return stmt;
    }
}
