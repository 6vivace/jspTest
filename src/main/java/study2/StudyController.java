package study2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guest.GuestInterface;
import study2.password.PasswordCheckCommand;

@SuppressWarnings("serial")
@WebServlet("*.st")
public class StudyController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestInterface command = null;
		String viewPage = "/WEB-INF/study2/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		if(com.equals("GuestList")) {
//			command = new GuestListCommand();
//			command.execute(request, response);
//			viewPage += "guestList";
		}
		else if(com.equals("Password")) {
			viewPage += "password/password";
		}
		else if(com.equals("PasswordCheck")) {
			command = new PasswordCheckCommand();
			command.execute(request, response);
			viewPage += "password/password";
		}
		viewPage += ".jsp";
		
		request.getRequestDispatcher(viewPage).forward(request, response);
		
	}
	
}
