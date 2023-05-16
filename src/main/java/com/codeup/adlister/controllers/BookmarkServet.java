package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "controllers.BookmarkServlet", urlPatterns = "/ads/bookmark")
public class BookmarkServet extends HttpServlet {
    HashMap<Long, Ad> bookmarks = new HashMap<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("user");

        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }

        List<Ad> ads = DaoFactory.getAdsDao().savedAds(user.getId());

        //        req.getSession().setAttribute("bookmarks", ads);

        req.setAttribute("ads", bookmarks.values());
        req.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(req, resp);

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Long id = Long.valueOf(req.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().findAdById(id);
        bookmarks.put(id, ad);

        //        User user = (User) req.getSession().getAttribute("user");
        //        DaoFactory.getUsersDao().saveAd(user.getId(), id);

        req.getSession().setAttribute("bookmarks", bookmarks);
        resp.sendRedirect("/ads");
    }
}
