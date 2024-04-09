package org.example.model;

public class Motorcycle extends Vehicle {

    String category;

    public Motorcycle(String brand, String model, int year, double price, String plate,String category) {
        super(brand, model, year, price, plate);
        this.category = category;
    }


    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toCSV() {
        return super.toCSV() +
                super.toString()+
                ";" + this.category;
    }

    @Override
    public String toString() {
        return "Motorcycle{" +
                super.toString()+
                " category='" + category + '\'' +
                '}';
    }
}
