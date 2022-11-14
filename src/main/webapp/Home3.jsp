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
            String showSelectedMsg=request.getSession().getAttribute("showSelectedMsg").toString();
        %>

    <%=showSelectedMsg%>
    </body>
</html>