
package org.web.servlect;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.web.dao.loginDao;
import org.web.eneity.User;
 
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
       
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 this.doPost(request, response);
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");   
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String Cpassword = request.getParameter("Cpassword");
		String incode=request.getParameter("inputcode");
		String oncode=(String) request.getSession().getAttribute("rand");
		String mail = request.getParameter("mail");
		User user=new User(username,password,mail);  
		if(password.equals(Cpassword)) {
			try {
				boolean result=loginDao.register(user);
				if(!(incode.equals(oncode)))
			    	request.getRequestDispatcher("fail2.jsp").forward(request, response);
				if(result==true) {
					System.out.println("×¢²á³É¹¦£¡");
					request.getRequestDispatcher("success.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("register.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			request.getRequestDispatcher("fail3.jsp").forward(request, response);
		}
		
	}
 
}
