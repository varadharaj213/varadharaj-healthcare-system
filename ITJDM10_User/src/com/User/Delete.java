package com.User;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.DeleteBean;
import com.Implementation.Implementation;
import com.Interfaces.Interface;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("user_id");
		String drid=request.getParameter("drid");
		String drname=request.getParameter("drname");
		String[] msg=request.getParameterValues("msg");
		
		
		ArrayList al=new ArrayList();
		for(int i=0;i<=msg.length-1;i++){
		al.add(msg[i]);
		}
		System.out.println(id+" "+msg);
		System.out.println(al);
		
		DeleteBean db=new DeleteBean();
		db.setId(id);
		db.setList(al);
		
		Interface i=new Implementation();
		int result=i.delete(db);
		
		if(result==1)
		{
			response.sendRedirect("messages.jsp?drid="+drid+"&drname="+drname);
		}
	}

}
