package com.codeup.adlister.controllers;

import com.codeup.adlister.models.User;
import com.codeup.adlister.dao.DaoFactory;
import com.mysql.cj.jdbc.Driver;
import com.codeup.adlister.util.Config;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.Arrays;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
@MultipartConfig(maxFileSize = 16177215)
public class ViewProfileServlet extends HttpServlet {
    private Connection connection;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("ads", DaoFactory.getAdsDao().allById(user.getId()));
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        System.out.println(user.getImg());
        System.out.println(user.getUsername());
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/joblister_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup");
            String query = "SELECT * FROM users WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, user.getId());
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Blob blob = rs.getBlob("img");
//                user.setImg((com.mysql.cj.jdbc.Blob) blob);
                byte byteArray[] = blob.getBytes(1, (int) blob.length());
                response.setContentType("image/gif");
                OutputStream os = response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }


    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        InputStream inputStream = null;
//        Part filePart = request.getPart("profilePic");
//        inputStream = filePart.getInputStream();
////        User user = new User(request.getSession(user.getId(), (Blob) inputStream));
//        User user = (User) request.getSession().getAttribute("user");
//        user.setImg(inputStream);
//        DaoFactory.getUsersDao().updateImg(user);


        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/joblister_db?allowPublicKeyRetrieval=true&useSSL=false", "root",
                    "codeup");
            response.setContentType("text/html;charset=UTF-8");
            out = response.getWriter();
            int result = 0;
            Part filePart = request.getPart("profilePic");
            User user = (User) request.getSession().getAttribute("user");
            String query = "UPDATE users SET img = ? WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            InputStream is = filePart.getInputStream();
            stmt.setBlob(1, is);
            stmt.setLong(2, user.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }

        response.sendRedirect("/profile");

    }
}
