<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Netflix - Home</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins">
    </head>
    <style>
        body{font-family: "Poppins", serif;}
    </style>
    <body>

        <form method="POST" action="${pageContext.request.contextPath}/add" name="addShowForm">
            <label for="addShowWeek">Show Week: </label>
            <input type="date" id="addShowWeek" name="addShowWeek" required>
            <br>
            <br>

            <label for="addShowCategory">Show Category: </label>
            <input list="showCategoriesList" id="addShowCategory" name="addShowCategory" required>
            <datalist id="showCategoriesList">
                <option value="Films (English)">Films (English)</option>
                <option value="Films (Non-English)">Films (Non-English)</option>
                <option value="TV (English)">TV (English)</option>
                <option value="TV (Non-English)">TV (Non-English)</option>
            </datalist>
            <br>
            <br>

            <label for="addShowWeeklyRank">Show Weekly Rank: </label>
            <input type="number" id="addShowWeeklyRank" name="addShowWeeklyRank" required>
            <br>
            <br>

            <label for="addShowTitle">Show Title: </label>
            <input type="text" id="addShowTitle" name="addShowTitle" required>
            <br>
            <br>

            <label for="addShowSeasonTitle">Show Season Title ('N/A' if Movie): </label>
            <input type="text" id="addShowSeasonTitle" name="addShowSeasonTitle" required>
            <br>
            <br>

            <label for="addShowWeeklyHoursViewed">Show Weekly Hours Viewed: </label>
            <input type="number" id="addShowWeeklyHoursViewed" name="addShowWeeklyHoursViewed" required>
            <br>
            <br>

            <label for="addShowCumulativeWeeksInTop10">Show Cumulative Weeks In Top 10: </label>
            <input type="number" id="addShowCumulativeWeeksInTop10" name="addShowCumulativeWeeksInTop10" required>
            <br>
            <br>

            <button name="add" value="processAddShow" type="submit">Add</button>
        </form>

    </body>
</html>