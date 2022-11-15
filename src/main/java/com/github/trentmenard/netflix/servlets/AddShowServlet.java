package com.github.trentmenard.netflix.servlets;

import com.github.trentmenard.netflix.NetflixDBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "NetflixAddShowServlet", value = "/add")
public class AddShowServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String showWeek = req.getParameter("addShowWeek");
        String showCategory = req.getParameter("addShowCategory");
        int showWeeklyRank = Integer.parseInt(req.getParameter("addShowWeeklyRank"));
        String showTitle = req.getParameter("addShowTitle");
        String showSeasonTitle = req.getParameter("addShowSeasonTitle");
        int showWeeklyHoursViewed = Integer.parseInt(req.getParameter("addShowWeeklyHoursViewed"));
        int showCumulativeWeeksInTop10 = Integer.parseInt(req.getParameter("addShowCumulativeWeeksInTop10"));

        String username = req.getSession().getAttribute("username").toString();
        String password = req.getSession().getAttribute("password").toString();

        try (Statement statement = NetflixDBConnection.getConnection(username, password).createStatement()) {

            ResultSet resultSet = statement.executeQuery("SELECT MAX(ID) from NETFLIIXSCHEMA.NETFLIXMOVIES");

            int maxID = 0;
            while (resultSet.next())
                maxID = resultSet.getInt(1);

            // Primary key, add 1 to max to make unique.
            maxID++;

            String queryPrep = "INSERT INTO NETFLIIXSCHEMA.NETFLIXMOVIES(ID, WEEK, CATEGORY, WEEKLY_RANK, SHOW_TITLE, SEASON_TITLE, WEEKLY_HOURS_VIEWED, CUMULATIVE_WEEKS_IN_TOP_10) VALUES(?, ?, ?, ?, ?, ?, ?, ?) ";

            try (PreparedStatement prepStatement = NetflixDBConnection.getConnection(username, password).prepareStatement(queryPrep)){

                prepStatement.setInt(1, maxID);
                prepStatement.setDate(2, Date.valueOf(showWeek));
                prepStatement.setString(3, showCategory);
                prepStatement.setInt(4, showWeeklyRank);
                prepStatement.setString(5, showTitle);
                prepStatement.setString(6, showSeasonTitle);
                prepStatement.setInt(7, showWeeklyHoursViewed);
                prepStatement.setInt(8, showCumulativeWeeksInTop10);

                prepStatement.executeUpdate();
            }

        } catch (SQLException e) {throw new RuntimeException(e);}
    }
}