package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: show the registration form
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // TODO: ensure the submitted information is valid
        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
        String username  = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
                user.setId(1);
                user.setUsername(username);
                user.setEmail(email);
                user.setPassword(password);

                System.out.println(user.getId());
                System.out.println(user.getUsername());
                System.out.println(user.getEmail());
                System.out.println(user.getPassword());
                if(user.getUsername() != null){
                    DaoFactory.getUsersDao().insert(user);
                    request.getSession().setAttribute("user",user);
                    response.sendRedirect("/profile");
                    System.out.println("added new user");
                } else {
                    response.sendRedirect("/login");
                    System.out.println("didnt add new user");
                }
    }
}
