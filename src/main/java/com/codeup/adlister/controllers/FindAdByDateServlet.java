package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FindAdByDateServlet", value = "/ads/date")
public class FindAdByDateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long adDate = Long.valueOf(request.getParameter("adDate"));
        Ad ad = DaoFactory.getAdsDao().findAdById(adDate);
        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
