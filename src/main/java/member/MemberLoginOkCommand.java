package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLoginOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		System.out.println("vo : " + vo);
		
		if(vo.getPwd() == null || !vo.getPwd().equals(pwd)) {
			request.setAttribute("message", "로그인 실패~~\\n다시 로그인해 주세요.");
			request.setAttribute("url", "MemberLogin.mem");
			return;
		}
		
		// 로그인 완료시 처리할 내용들을 기술한다.(쿠키/세션/기타 로그인수 수행처리해야할것들....)
		
		// 쿠키처리
		String idSave = request.getParameter("idSave")==null ? "off" : request.getParameter("idSave");
//		System.out.println("idSave : " + idSave);
		Cookie cookieMid = new Cookie("cMid", mid);
		cookieMid.setPath("/");
		if(idSave.equals("on")) cookieMid.setMaxAge(60*60*24*7);
		else cookieMid.setMaxAge(0);
		response.addCookie(cookieMid);
		
		// 세션처리
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel = "관리자";
		else if(vo.getLevel() == 1) strLevel = "준회원";
		else if(vo.getLevel() == 2) strLevel = "정회원";
		else if(vo.getLevel() == 3) strLevel = "우수회원";
		
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLevel", vo.getLevel());
		session.setAttribute("strLevel", strLevel);
		
		// 기타 처리
		
		
		request.setAttribute("message", mid + "님 로그인 되었습니다.");
		request.setAttribute("url", "MemberMain.mem");
	}

}
