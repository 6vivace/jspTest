package guest;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuestListCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse resopnse) throws ServletException, IOException {
		GuestDAO dao = new GuestDAO();
		
		// 1. 현재 페이지번호를 구해온다.
		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		
		// 2. 한 페이지의 분량을 정해준다.(여기서는 1페이짖당 3건의 자료를 출력한다고 가정...)
		int pageSize = 3;
		
		// 3. 총 레코드 건수 구한다.(sql의 집계함수 count()를 사용한다.)
		int totRecCnt = dao.getTotRecCnt();
//		System.out.println("총 레코드건수 : " + totRecCnt);
		
		// 4. 총 페이지 수를 구한다.
		int totPage = (totRecCnt % pageSize) == 0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1;
		
		// 5. 현재페이지에 출력할 '시작 인덱스 번호'를 구한다.
		int startIndexNo = (pag - 1) * pageSize;
		
		// 6. 현재 화면에 표시될 시작 페이지 번호.
		int curScrStartNo = totRecCnt - startIndexNo;
		
		List<GuestVO> vos = dao.getGuestList(startIndexNo, pageSize);
		
		request.setAttribute("vos", vos);
		
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("totRecCnt", totRecCnt);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStartNo", curScrStartNo);
		
	}

}
