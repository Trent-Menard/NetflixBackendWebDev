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

@WebServlet(name = "NetflixHomeServlet", value = "/home")
public class ShowSelectionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        StringBuilder sb = new StringBuilder();
        String selectedShow = req.getParameter("allShows");

        String username = req.getSession().getAttribute("username").toString();
        String password = req.getSession().getAttribute("password").toString();

        sb.append("<h2>Here's what we know about ")
                .append("<span style=\"font-style: italic;\">")
                .append(selectedShow)
                .append("</span>")
                .append(":")
                .append("</h2>");

        try (Statement statement = NetflixDBConnection.getConnection(username, password).createStatement()) {

            // Can't refer to local vars inside statement so define here.
            String queryPrep = "SELECT * FROM NETFLIIXSCHEMA.NETFLIXMOVIES WHERE SHOW_TITLE='" + selectedShow + "'";

            ResultSet resultSet = statement.executeQuery(queryPrep);

            while (resultSet.next()) {
                sb.append("<p> Category: ").append(resultSet.getString("CATEGORY")).append("</p>");
                sb.append("<p> Weekly Rank: ").append(resultSet.getString("WEEKLY_RANK")).append("</p>");
                sb.append("<p> Show Title: ").append(resultSet.getString("SHOW_TITLE")).append("</p>");
                sb.append("<p> Season Title: ").append(resultSet.getString("SEASON_TITLE")).append("</p>");
                sb.append("<p> Weekly Hours Viewed: ").append(resultSet.getString("WEEKLY_HOURS_VIEWED")).append("</p>");
                sb.append("<p> Cumulative Weeks In Top 10: ").append(resultSet.getString("CUMULATIVE_WEEKS_IN_TOP_10")).append("</p>");
                sb.append("<br>");
            }
        } catch (SQLException e) {throw new RuntimeException(e);}

        req.getSession().setAttribute("showSelectedMsg", sb.toString());

        req.getSession().setAttribute("showSelectedMsg", sb.toString());
        req.getRequestDispatcher("/ShowResults.jsp").forward(req, resp);
    }
}