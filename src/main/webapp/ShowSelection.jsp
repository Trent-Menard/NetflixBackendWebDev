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
    <%
        String username=request.getSession().getAttribute("username").toString();
    %>

        <h2>Welcome back, <%=username%></h2>
        <h3>Select a show to get started!</h3>

        <form method="POST" action="${pageContext.request.contextPath}/home">
            <label for="allShows">Select a Show</label>
                <input list="allShowsList" id="allShows" name="allShows">
            <datalist id="allShowsList">

                <%
                    String shows=request.getSession().getAttribute("shows").toString();
                %>

                <%-- From build, add to HTML--%>
                <%=shows%>

            </datalist>
            <button name="query" value="processQuery">Search</button>
        </form>
</html>