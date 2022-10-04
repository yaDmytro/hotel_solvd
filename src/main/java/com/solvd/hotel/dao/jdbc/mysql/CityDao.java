package com.solvd.hotel.dao.jdbc.mysql;

import com.solvd.hotel.dao.ICityDao;
import com.solvd.hotel.model.CityModel;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CityDao extends AbstractMySqlDao implements ICityDao {

    private final Logger log = LogManager.getLogger(CityDao.class);

    @Override
    public void create(CityModel obj) {
        Connection c = getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO city(city_id, city_name, post_code, country_id) VALUES (?, ?, ?, ?)";

        try {
            ps = c.prepareStatement(sql);
            ps.setInt(1, obj.getCity_id());
            ps.setString(2, obj.getCity_name());
            ps.setString(3, obj.getPostal_code());
            ps.setInt(4, obj.getCountry_id());
            int rows = ps.executeUpdate();

            if (rows > 0) {
                log.info("A new city was inserted successfully!");
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        closePreparedStatement(ps);
        closeConnection(c);
    }

    @Override
    public CityModel getById(int id) {
        return null;
    }

    @Override
    public void remove(int id) {

    }
    /*
    @Override
    /*
    public void update(CityModel obj) {
        Connection c = getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE city SET city=?, country_id=? WHERE id=?";

        try {
            ps = c.prepareStatement(sql);
            ps.setString(1, obj.getCity());
            ps.setInt(2, obj.getCountryId());
            ps.setInt(3, obj.getId());
            int rows = ps.executeUpdate();

            if (rows > 0) {
                log.info("An existing city was updated successfully!");
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        closePreparedStatement(ps);
        closeConnection(c);

    }

     */
}
