package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
@MultipartConfig(maxFileSize = 16177215)
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("ads", DaoFactory.getAdsDao().allById(user.getId()));
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream inputStream = null;
        Part filePart = request.getPart("profilePic");
        inputStream = filePart.getInputStream();
//        User user = new User(request.getSession(user.getId(), (Blob) inputStream));
        User user = (User) request.getSession().getAttribute("user");
        user.setImg(inputStream);
        DaoFactory.getUsersDao().updateImg(user);


    }
}
