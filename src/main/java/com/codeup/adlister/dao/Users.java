package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.ResultSet;
import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    void update(User updatedUser);

    void delete(Long userId);

    void updateImg(User user);
}
