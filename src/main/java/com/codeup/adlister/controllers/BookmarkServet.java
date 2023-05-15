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

@WebServlet(name = "controllers.BookmarkServlet", urlPatterns = "/ads/bookmark")
public class BookmarkServet extends HttpServlet {



    HashMap<Long, Ad> bookmarks = new HashMap<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("ads", bookmarks.values());

        req.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(req, resp);

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Long id = Long.valueOf(req.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().findAdById(id);

        bookmarks.put(id, ad);

        req.getSession().setAttribute("bookmarks", bookmarks);


        resp.sendRedirect("/ads");

    }
}
