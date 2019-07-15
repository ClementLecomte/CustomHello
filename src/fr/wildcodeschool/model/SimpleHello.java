package fr.wildcodeschool.model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SimpleHelloServlet", urlPatterns = {"/simple-hello"})
public class SimpleHello extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String time = request.getParameter("time");

        request.setAttribute("nom" , name);
        request.setAttribute("ln" , lastName);
        request.setAttribute("hr" , time);



        RequestDispatcher dispatcher = request.getRequestDispatcher("custom-hello.jsp");
        dispatcher.forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("hello-form.jsp");
        dispatcher.forward(request,response);
    }
}
