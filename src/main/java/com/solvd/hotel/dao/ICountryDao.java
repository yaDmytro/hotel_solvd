package com.solvd.hotel.dao;

import com.solvd.hotel.model.CountryModel;

import java.util.List;

public interface ICountryDao extends IBaseDao<CountryModel>{
    public List<CountryModel> getAllCountries();
}
