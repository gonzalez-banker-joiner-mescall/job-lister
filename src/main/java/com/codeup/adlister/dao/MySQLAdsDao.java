package com.codeup.adlister.dao;

import com.codeup.adlister.util.Config;


import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads ORDER BY created DESC");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, created) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setDate(4, ad.getDate());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public void adCatInsert(Long result, Long category) {
        try {
            String adCatInsertQuery = "INSERT INTO ad_cat(ad_id, cat_id) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(adCatInsertQuery);

            statement.setLong(1, result);
            statement.setLong(2, category);
            statement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Ad> allById(Long id) {
        try {
            String byIdQuery = "SELECT * FROM ads WHERE user_id = ?";
            PreparedStatement statement = connection.prepareStatement(byIdQuery);
            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();
            return createAdsFromResults(resultSet);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public Ad findAdById(Long id) {
        try {
            String byIdQuery = "SELECT * FROM ads WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(byIdQuery);
            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            return extractAd(resultSet);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<Ad> findByCategory(Long id){
        try{
            String byCategoryQuery = "SELECT a.id, a.title, a.description, a.created, a.user_id FROM ads a JOIN ad_cat ac ON a.id = ac.ad_id JOIN categories c ON c.id = ac.cat_id WHERE c.id = ? ORDER BY a.created DESC";
            PreparedStatement statement = connection.prepareStatement(byCategoryQuery);
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            return createAdsFromResults(resultSet);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(Ad ad) {
        try {
            String updateQuery = "UPDATE ads SET title = ?, description = ? WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(updateQuery);

            statement.setString(1, ad.getTitle());
            statement.setString(2, ad.getDescription());
            statement.setLong(3, ad.getId());

            statement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(Long id) {
        try {
            String deleteQuery = "DELETE FROM ads WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(deleteQuery);
            statement.setLong(1, id);
            statement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getDate("created")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public List<Ad> savedAds(Long user_id) {
        try {
            String adQuery = "SELECT  a.id, a.user_id, a.title, a.description, a.created FROM ads a JOIN saved_ads sa on a.id = sa.ad_id JOIN users u on u.id = sa.user_id WHERE sa.user_id = ?";
            PreparedStatement statement = connection.prepareStatement(adQuery);
            statement.setLong(1, user_id);

            ResultSet resultSet = statement.executeQuery();
            return createAdsFromResults(resultSet);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) {
        Date date = Date.valueOf(java.time.LocalDate.now());

        System.out.println(date);
    }
}


