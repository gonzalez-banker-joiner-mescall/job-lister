package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getSession().getAttribute("message"));
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        boolean isVillain = Boolean.parseBoolean(request.getParameter("villain"));
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
//        Boolean isVillain = true;

        // validate input
        boolean inputHasErrors = username.isEmpty()
//            || isVillain.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            request.getSession().setAttribute("message", "Username is required");
//            request.getSession().setAttribute("messages", "Password is required");
            response.sendRedirect("/register");
            return;
        }


        // create and save a new user
        User user = new User(username, password, isVillain);

        // hash the password

        String hash = Password.hash(user.getPassword());

        user.setPassword(hash);

        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
