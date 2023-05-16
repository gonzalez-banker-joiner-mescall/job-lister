package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            // add a return statement to exit out of the entire method.
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        Date date = Date.valueOf(java.time.LocalDate.now());

        String[] categories = request.getParameterValues("category");


        if (categories == null) {
            boolean missingCategory = true;
            request.getSession().setAttribute("missingCategory", missingCategory);
            String message = "Missing category.";
            request.getSession().setAttribute("messageCat", message);
            response.sendRedirect("/ads/create");
            return;
        }

        request.getSession().removeAttribute("missingCategory");
        request.getSession().removeAttribute("messageCat");

        Ad ad = new Ad(
                loggedInUser.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                date
        );

        Long result = DaoFactory.getAdsDao().insert(ad);

        System.out.println("categories = " + Arrays.toString(categories));

        for (String category : categories) {
            DaoFactory.getAdsDao().adCatInsert(result, Long.valueOf(category));
        }

        response.sendRedirect("/ads");
    }
}
