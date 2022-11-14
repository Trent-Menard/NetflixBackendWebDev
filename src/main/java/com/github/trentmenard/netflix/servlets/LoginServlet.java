package com.github.trentmenard.netflix.servlets;

import com.github.trentmenard.netflix.NetflixDBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "NetflixLoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    // User Authentication
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        // If POST request parameter value is not "processLogin", the request is not from the form submission.
        if (req.getParameter("login") == null)
            resp.sendError(400, "Integrity breach detected.\nGood try ;)");

        else if (req.getParameter("login").equals("processLogin")) {
            final String username = req.getParameter("username");
            final String password = req.getParameter("password");

            req.getSession().setAttribute("username", username);
            req.getSession().setAttribute("password", password);

            StringBuilder sb = new StringBuilder();

            // Connect to DB, test credentials, if pass, generate data from table & forward to JSP.
            if (NetflixDBConnection.getConnection(username, password) != null) {
                try (Statement statement = NetflixDBConnection.getConnection(username, password).createStatement()) {

                    ResultSet resultSet = statement.executeQuery("SELECT * FROM NETFLIIXSCHEMA.NETFLIXMOVIES");

                    while (resultSet.next()) {
                        sb.append("<option value=\"")
                                .append(resultSet.getString("SHOW_TITLE"))
                                .append("\"")
                                .append("</option>");
                    }
                } catch (SQLException e) {throw new RuntimeException(e);}

                req.getSession().setAttribute("shows", sb.toString());

                // Throws 'Cannot forward after response has been committed' if login failed so handle here.
                req.getRequestDispatcher("/ShowSelection.jsp").forward(req, resp);
            }
            else
                resp.sendError(401, "User doesn't exist or incorrect password.");

        }
    }
}