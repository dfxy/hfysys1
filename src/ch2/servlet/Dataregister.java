/**
 * 
 */
package ch2.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch2.service.UserService;
import ch2.util.Generator;
import ch2.vo.data;

/**
 * @author Administrator
 *
 */
public class Dataregister extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setContentType("text/html;charset=utf-8");
    	String uid=request.getParameter("uid");
    	String myid=request.getParameter("myid");
    	String leftluoshi=request.getParameter("leftluoshi");
    	String rightluoshi=request.getParameter("rightluoshi");
    	String leftjiaozheng=request.getParameter("leftjiaozheng");
    	String rightjiaozheng=request.getParameter("rightjiaozheng");
    	UserService service=new UserService();
    	try{
	    	data data=new data();
	    	data.setUid(uid);
	    	data.setMyid(myid);
	    	data.setleftluoshi(leftluoshi);
	    	data.setrightluoshi(rightluoshi);
	    	data.setleftjiaozheng(leftjiaozheng);
	    	data.setrightjiaozheng(rightjiaozheng);
	    	service.adddata(data);
	        PrintWriter out = response.getWriter();
	        this.getServletContext().getRequestDispatcher("/right.jsp").forward(request,response);
    	}catch(Exception e){
    		e.printStackTrace();  
    		request.setAttribute("errMsg","×¢²á³ö´í£¡");
		 	this.getServletContext().getRequestDispatcher("/error.jsp").forward(request,response);
    	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}
	
}
