package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> allById(Long id);

    void update(Ad ad);

    void delete(Long id);

    void adCatInsert(Long result, Long category);

    Ad findAdById(Long adId);

    List<Ad> findByCategory(Long adCat);

    List<Ad> savedAds(Long user_id);
}
