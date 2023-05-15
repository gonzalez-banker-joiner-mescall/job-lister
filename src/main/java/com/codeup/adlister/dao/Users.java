package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);

    Long insert(User user);

    void update(User updatedUser);

    void delete(Long userId);

    void saveAd(Long user, Long ad);
}
