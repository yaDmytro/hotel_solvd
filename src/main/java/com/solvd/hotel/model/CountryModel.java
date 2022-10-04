package com.solvd.hotel.model;

public class CountryModel {

    private int country_id;
    private String country_name;
    public CountryModel() {}
    public CountryModel(int country_id, String country_name) {
        this.country_id = country_id;
        this.country_name = country_name;
    }
    public int getId() {
        return country_id;
    }
    public void setId(int country_id) {
        this.country_id = country_id;
    }
    public String getCountry() {
        return country_name;
    }
    public void setCountry(String country_name) {
        this.country_name = country_name;
    }
    @Override
    public String toString() {
        return "CountryModel{" +
                "id=" + country_id +
                ", country='" + country_name + '\'' +
                '}';
    }
}
