package org.example.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public interface AddVehicleStrategy {
    PreparedStatement prepare(Connection conn) throws SQLException;
}
