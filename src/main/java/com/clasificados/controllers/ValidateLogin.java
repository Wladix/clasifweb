package com.clasificados.controllers;

import com.clasificados.classes.User;
import com.clasificados.models.DBConnection;
import com.clasificados.models.ModelUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pedro
 */
public class ValidateLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        RequestDispatcher rd;
        PrintWriter out = response.getWriter();
        String user = request.getParameter("user");
        String pass = request.getParameter("password");
        User u = ModelUser.getUser(user);
        if(u != null){
            System.out.println("Usuario Correcto");
            if(u.getContraseña().equals(pass)){
                System.out.println("Contraseña Correcta");
                session.setAttribute("user", u);
            }else{
                System.out.println("Contraseña Incorrecta");
            }
        }else{
            System.out.println("Usuario Incorrecto");
        }
    }
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
