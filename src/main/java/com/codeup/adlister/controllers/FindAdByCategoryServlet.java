package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "FindAdByCategoryServlet", value = "/ads/category")
public class FindAdByCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long adCat = Long.valueOf(request.getParameter("adCat"));
        List<Ad> ads = DaoFactory.getAdsDao().findByCategory(adCat);
        request.setAttribute("ads", ads);

        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }


}
