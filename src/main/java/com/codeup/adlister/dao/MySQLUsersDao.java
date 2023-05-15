package com.codeup.adlister.dao;
import com.codeup.adlister.util.Config;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;


import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
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
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, password, villain) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setBoolean(3, user.isVillain());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    public void update(User user) {
        String query = "UPDATE users SET username = ?, password = ?, villain = ?, bio = ? WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setBoolean(3, user.isVillain());
            stmt.setString(4, user.getBio());
            stmt.setLong(5, user.getId());
            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    public void updateImg(User user) {
        String query = "UPDATE users SET img = ? WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setBlob(1, user.getImg());
            stmt.setLong(2, user.getId());
            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    public void updateImgString(User user) {
//        String query = "UPDATE users SET imgString = ? WHERE id = ?";
//        try {
//            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.setString(1, user.getImgString());
//            stmt.setLong(2, user.getId());
//            stmt.executeUpdate();
//
//        } catch (SQLException e) {
//            throw new RuntimeException("Error creating new user", e);
//        }
    }

    public ResultSet retrieveImg(User user) {
        String query = "SELECT img FROM users WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, user.getId());
            return (ResultSet) extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error getting image", e);
        }
    }

    public void delete(Long id) {
        String query = "DELETE FROM users WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (!rs.next()) {
            return null;
        }
        return new User(
                rs.getLong("id"),
                rs.getString("username"),
                rs.getString("password"),
                rs.getBoolean("villain"),
                rs.getString("bio")
        );
    }

}
