/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author djeneba.cissoko
 */
@WebServlet(urlPatterns = {"/ContactServlet"})



public class ContactServlet extends HttpServlet {
    private List<contact> contacts = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("contacts", contacts);
        req.getRequestDispatcher("contacts.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String email = req.getParameter("email");
        contacts.add(new contact(nom, email));
        resp.sendRedirect(req.getContextPath() + "/contacts");
    }
}


