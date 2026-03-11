package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.mem")
public class MemberController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberInterface command = null;
		String viewPage = "/WEB-INF/member/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		if(com.equals("MemberLogin")) {
			command = new MemberLoginCommand();
			command.execute(request, response);
			viewPage += "memberLogin";
		}
		else if(com.equals("MemberLoginOk")) {
			command = new MemberLoginOkCommand();
			command.execute(request, response);
			viewPage = "/include/message";
		}
		else if(com.equals("MemberLogout")) {
			command = new MemberLogoutCommand();
			command.execute(request, response);
			viewPage = "/include/message";
		}
		else if(com.equals("MemberJoin")) {
			viewPage += "memberJoin";
		}
		else if(com.equals("MemberJoinOk")) {
			command = new MemberJoinOkCommand();
			command.execute(request, response);
			viewPage = "/include/message";
//			return;
		}
		else if(com.equals("MemberMain")) {
			command = new MemberMainCommand();
			command.execute(request, response);
			viewPage += "memberMain";
		}
		
		viewPage += ".jsp";
		
		request.getRequestDispatcher(viewPage).forward(request, response);
	}
	
}
