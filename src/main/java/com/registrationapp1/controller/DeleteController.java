package com.registrationapp1.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registrationapp1.model.DAOService;
import com.registrationapp1.model.DAOServiceImpl;

@WebServlet("/delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				String email = request.getParameter("email");
				
				DAOService dao = new DAOServiceImpl();
				dao.connectDB();
				
				dao.deleteRegistration(email);
				
				ResultSet result = dao.getAllReg();
				
				request.setAttribute("result", result);
				
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/list_registrations.jsp");
				rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/list_registrations.jsp");
				rd.forward(request, response);
			}
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
