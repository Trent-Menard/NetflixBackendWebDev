package com.github.trentmenard.netflix;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NetflixLoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    // User Authentication
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        // If POST request parameter value is not "processLogin", the request is not from the form submission.
        if (req.getParameter("login") == null)
            resp.sendError(400, "Integrity breach detected.\nGood try ;)");

        else if (req.getParameter("login").equals("processLogin")){
            final String username = req.getParameter("username");
            final String password = req.getParameter("password");

            if (!((username.equalsIgnoreCase("md") && password.equals("pw")) ||
                    (username.equalsIgnoreCase("Trent") && password.equals("Trent"))))
                resp.sendError(401, "User doesn't exist or incorrect password.");

            else {
                req.getSession().setAttribute("username", username);
                req.getSession().setAttribute("password", password);

                // Has to be placed in else statement otherwise throws 'Cannot forward after response has been committed'
                req.getRequestDispatcher("Home.jsp").forward(req, resp);
            }

        }
    }
}