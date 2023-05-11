package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "controllers.UpdateAdServlet", urlPatterns = "/ads/update")
public class UpdateAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }

        Long adId = Long.valueOf(req.getParameter("adId"));

        Ad ad = DaoFactory.getAdsDao().findAdById(adId);

        req.setAttribute("ad", ad);

        req.getRequestDispatcher("/WEB-INF/ads/update.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Long id = Long.parseLong(req.getParameter("id"));
        Long userId = Long.parseLong(req.getParameter("userId"));
        String title = req.getParameter("updateTitle");
        String description = req.getParameter("updateDescription");

        if(title == null || title.isEmpty()){
            resp.sendRedirect("/ads/update?adId=" + id);
            req.getSession().setAttribute("errorMessage", "Error");
            return;
        }

        if(description == null || description.isEmpty()){
            resp.sendRedirect("/ads/update?adId=" + id);
            return;
        }

        Ad ad = new Ad(
                id,
                userId,
                title,
                description
        );

        DaoFactory.getAdsDao().update(ad);
        resp.sendRedirect("/profile");
    }
}


