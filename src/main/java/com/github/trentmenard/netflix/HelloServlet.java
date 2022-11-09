package com.github.trentmenard.netflix;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "NetflixServlet", value = "/netflix-servlet")
public class HelloServlet extends HttpServlet {
    final String USING_PORT = "8081";
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("<h1>" + message + "</h1>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");

        String res = request.getParameter("username");
        String res2 = request.getParameter("password");
        System.out.println(res);
        System.out.println(res2);
        System.out.println(request.getQueryString());
    }

    @Override
    // User Authentication
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // If POST request parameter value is not "processLogin", the request is not from the form submission.
        boolean isValid = req.getParameterValues("login")[0].equals("processLogin");
        if (!isValid)
            resp.sendError(400, "Integrity breach detected.");

    String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (username.equalsIgnoreCase("md") && password.equalsIgnoreCase("pw"))
            System.out.println("Valid");
        else if (username.equalsIgnoreCase("Trent") && password.equalsIgnoreCase("Trent"))
            System.out.println("Valid");
        else
            resp.sendError(401, "User doesn't exist or incorrect password.");

        resp.setContentType("text/html");
        String sesID = req.getSession().getId();

        PrintWriter out = resp.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + "Your session ID is: " + sesID + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {}
}