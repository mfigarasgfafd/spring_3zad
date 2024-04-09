package org.example.dao;


import org.example.dao.jdbc.AddVehicleStrategy;
import org.example.model.Vehicle;

import java.util.Collection;

public interface IVehicleRepository {

    boolean rentVehicle(String plate,String login);
    boolean returnVehicle(String plate,String login );

    boolean addVehicle(Vehicle vehicle);

    //if you want use stratgy instead of simple logic:
    default boolean addVehicle(AddVehicleStrategy strategy){
        throw new UnsupportedOperationException();
    }

    boolean removeVehicle(String plate);

    Vehicle getVehicle(String plate);

    Collection<Vehicle> getVehicles();

}
