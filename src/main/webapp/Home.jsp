<%@ page import="com.github.trentmenard.netflix.ShowCollection" %>
<%@ page import="java.nio.file.Path" %>
<%@ page import="java.nio.file.Paths" %>
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

        ShowCollection showCollection = new ShowCollection();
//        String path = request.getContextPath();
        showCollection.readFromFile(Path.of("C:\\Users\\Trent\\IdeaProjects\\JavaOOSD\\Projects\\NetflixBackendWebDev\\src\\main\\webapp\\all-weeks-global.tsv"));
    %>

        <h2>Welcome back, <%=username%></h2>
        <h3>Select a show to get started!</h3>

        <form method="GET" action="${pageContext.request.contextPath}/Home.jsp">
            <label for="allShows">Select a Show</label>
            <input list="allShowsList" id="allShows">
            <datalist id="allShowsList">

                <%-- !!! IMPORTANT !!! --%>
                <%-- Reads .tsv file from USER'S LOCAL APACHE SERVER PATH --%>
                <%-- I.E.: .tsv must be located where Apache Server is running. --%>
                <%-- E.g.: C:\apache-tomcat-10.0.27\bin\all-weeks-global.tsv --%>
                    <%-- Potential solutions: --%>
                    <%-- 1.) Embed file --%>
                    <%-- 2.) Store in database --%>
                    <%-- 3.) Prompt user for save location --%>
                <%-- !!! IMPORTANT !!! --%>

                <%-- Build <option> tags from data. --%>
                <%
                    StringBuilder sb = new StringBuilder();

                    showCollection.getAllShows().forEach(s -> {
                        sb.append("<option value=\"")
                                .append(s.getShowTitle())
                                .append("\"")
                                .append("</option>");
                    });
                %>

                <%-- From build, add to HTML--%>
                <%=sb%>

            </datalist>
            <button name="query" value="processQuery">Search</button>
        </form>
    </body>
</html>