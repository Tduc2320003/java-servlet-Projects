package com.murach.survey62;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String contactVia = request.getParameter("contactVia");

        // process paramters
        if (heardFrom == null) {
            heardFrom = "NA";
        }
        if (wantsUpdates == null) {
            wantsUpdates = "No";
        }
        else {
            wantsUpdates = "Yes";
        }

        // store data in User object
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setHeardFrom(heardFrom);
        user.setWantsUpdates(wantsUpdates);
        user.setContactVia(contactVia);

        // store User object in request
        request.setAttribute("user", user);

        // forward request to JSP
        String url = "/survey.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
