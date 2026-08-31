/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

@WebServlet("/StartGameServlet")
public class StartGameServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String difficulty = request.getParameter("difficulty");

        HttpSession session = request.getSession();

        session.setAttribute("difficulty", difficulty);

        if (difficulty.equals("easy")) {
            session.setAttribute("numberOfLetters", 6);
        } 
        else if (difficulty.equals("medium")) {
            session.setAttribute("numberOfLetters", 15);
        } 
        else if (difficulty.equals("hard")) {
            session.setAttribute("numberOfLetters", 26);
        }

RequestDispatcher rd = request.getRequestDispatcher("game.jsp");
rd.forward(request, response);
    }
}