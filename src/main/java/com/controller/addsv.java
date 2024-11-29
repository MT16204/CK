package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.*;
/**
 * Servlet implementation class HomeControl
 */
@WebServlet("/addsvnek")
public class addsv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addsv() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		  request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        String name = request.getParameter("name");
	        String tuoi = request.getParameter("tuoi");
	        String lop = request.getParameter("lop");
	        String idchuyennganh = request.getParameter("idchuyennganh");

	        DAO dao = new DAO();
	        dao.insertSinhVien(name, tuoi, lop, idchuyennganh);
	        
			response.sendRedirect("GiaovienControl?idsv=?"+idchuyennganh)	;	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


}