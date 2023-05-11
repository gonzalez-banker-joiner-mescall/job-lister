package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.Session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ViewAdServlet", value = "/ads/view")
public class ViewAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long adId = Long.valueOf(request.getParameter("adId"));
        Ad ad = DaoFactory.getAdsDao().findAdById(adId);
        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/view-ad.jsp").forward(request, response);
    }
}
