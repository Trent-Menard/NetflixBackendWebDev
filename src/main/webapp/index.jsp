<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Netflix - Login</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins">
    </head>
    <style>
        body {
            font-family: "Poppins", serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
    </style>
    <body>
        <h2>Hello, please sign in:</h2>
        <form method="POST" action="netflix-servlet">
            <label for="username">Username</label>
                <input type="text" id="username" name="username">
            <br>
            <label for="password">Password</label>
                <input type="password" id="password" name="password">
            <br>
            <button name="login" value="processLogin" type="submit">Login</button>
        </form>
    </body>
</html>