package com.solvd.hotel.model;

public class CityModel {
    private int city_id;
    private String city_name;
    private String postal_code;
    private int country_id;
    public CityModel(){}
    public CityModel(int city_id, String city_name, String postal_code, int country_id){
        this.city_id =city_id;
        this.city_name = city_name;
        this.postal_code = postal_code;
        this.country_id = country_id;
    }
    public int getCity_id() {
        return city_id;
    }
    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }
    public String getCity_name() {
        return city_name;
    }
    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public int getCountry_id() {
        return country_id;
    }

    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }

    @Override
    public String toString() {
        return "CityModel{" +
                "city_id=" + city_id +
                ", city_name='" + city_name + '\'' +
                ", postal_code='" + postal_code + '\'' +
                ", country_id=" + country_id +
                '}';
    }
}
