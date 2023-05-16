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

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation));

        boolean usernameTaken;
        User findUser = DaoFactory.getUsersDao().findByUsername(username);
        System.out.println(findUser);
        if (findUser == null) {
            // create and save a new user
            User user = new User(username, password, isVillain);
            // hash the password
            String hash = Password.hash(user.getPassword());
            user.setPassword(hash);
            DaoFactory.getUsersDao().insert(user);
            request.getSession().removeAttribute("message");
            request.getSession().removeAttribute("usernameTaken");
            response.sendRedirect("/login");
        } else {
            usernameTaken = true;
            request.getSession().setAttribute("usernameTaken", usernameTaken);
            String message = "Username is already taken.";
            request.getSession().setAttribute("message", message);
            response.sendRedirect("/register");
            return;

        }
//


    }
}
