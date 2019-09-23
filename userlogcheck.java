package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.login.customer;
import  com.login.CustomerDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userlogcheck
 */
@WebServlet("/userlogcheck")
public class userlogcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userlogcheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd;
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		String name=req.getParameter("userid");
		String password=req.getParameter("password");
		try {
			if(loginDao.validate(name, password) ) {
				rd=req.getRequestDispatcher("index.html");
				rd.forward(req, res);
			}
			else {
				pw.print("Enter valid Credentials");
				pw.print("<script type='text/javascript'>");
				pw.print("alert('Please Enter Valid Credentials');");
				pw.print("</script>");
				rd=req.getRequestDispatcher("userlogin.jsp");
				
				rd.include(req, res);}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}