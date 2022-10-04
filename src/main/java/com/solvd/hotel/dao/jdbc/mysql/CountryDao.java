package com.solvd.hotel.dao.jdbc.mysql;

import com.solvd.hotel.dao.ICountryDao;
import com.solvd.hotel.model.CountryModel;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class CountryDao extends AbstractMySqlDao implements ICountryDao {

    private final Logger log = LogManager.getLogger(CountryDao.class);

    @Override
    public void create(CountryModel obj) {
        Connection c = getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO countries(country) VALUES (?)";

        try {
            ps = c.prepareStatement(sql);
            ps.setString(1, obj.getCountry());
            int rows = ps.executeUpdate();

            if (rows > 0) {
                log.info("A new country was inserted successfully!");
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        closePreparedStatement(ps);
        closeConnection(c);
    }

    @Override
    public CountryModel getById(int id) {
        return null;
    }

    @Override
    public void remove(int id) {

    }

    @Override
    public void update(CountryModel obj) {

    }

    @Override
    public List<CountryModel> getAllCountries() {
        return null;
    }
}
