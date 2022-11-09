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
        <h2>Welcome back, NAME!</h2>
        <h3>Select a show to get started!</h3>
        <form method="GET" action="Home.jsp">
            <label for="showSearch">Search by Title</label>
            <input type="text" id="showSearch">
            <button name="query" value="processQuery">Search</button>
        </form>

        <form method="GET" action="Home.jsp">
            <label for="allShows">Select a show</label>
            <input list="allShowsList" id="allShows">
            <datalist id="allShowsList">
                <option value="Shows"></option>
                <option value="Go"></option>
                <option value="Here"></option>
            </datalist>
            <button name="query" value="processQuery">Search</button>
        </form>
    </body>
</html>