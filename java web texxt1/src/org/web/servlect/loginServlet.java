
package org.web.servlect;
 
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.web.dao.loginDao;
import org.web.eneity.User;
 
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
 
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");   
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String incode=request.getParameter("inputcode");
		String oncode=(String) request.getSession().getAttribute("rand");
		String mail=null;
			User user=new User(username,password,mail);    
			
				try {
					int result=loginDao.login(user);
				    if(!(incode.equals(oncode)))
				    	request.getRequestDispatcher("fail5.jsp").forward(request, response);
				    
					if(result>0) 
						request.getRequestDispatcher("main.jsp").forward(request, response);
					else 
						request.getRequestDispatcher("fail.jsp").forward(request, response);		
				} catch (Exception e) {
					e.printStackTrace();
				
			
		}
		
		}
	    
		
		
 
	}

	
		
	
 

