package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet", value = "/profile/update")
public class UpdateProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/updateProfile.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        String username = request.getParameter("username");
        String bio = request.getParameter("bio");
        boolean villain = Boolean.parseBoolean(request.getParameter("villain"));
        String password;
        String profilePic = request.getParameter("profilePic");
        if(request.getParameter("updatedPassword") == null || request.getParameter("updatedPassword").isEmpty()) {
            password = request.getParameter("password");
        } else {
            password = Password.hash(request.getParameter("updatedPassword"));
        }
        User updatedUser = new User(id, username, password, bio, villain, profilePic);
        DaoFactory.getUsersDao().update(updatedUser);
        request.getSession().setAttribute("user", updatedUser);
        response.sendRedirect("/profile");

    }
}
