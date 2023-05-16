package com.codeup.adlister.controllers;

import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/ads/remove")
public class RemoveBookmarkServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HashMap<Long, Ad> bookmarks = (HashMap<Long, Ad>) req.getSession().getAttribute("bookmarks");

        Long id = Long.valueOf(req.getParameter("delete"));
        bookmarks.remove(id);

        resp.sendRedirect("/ads");
    }
}
