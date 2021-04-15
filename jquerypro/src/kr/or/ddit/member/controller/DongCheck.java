package kr.or.ddit.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

/**
 * Servlet implementation class DongCheck
 */
@WebServlet("/DongCheck")
public class DongCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DongCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//post로 한글 전송시 
		//get은 server.xml에서 utf-8설정 해줬음 예전에
		request.setCharacterEncoding("UTF-8");
		
		// 0. 클라이언트 전송시 데이터 받는다 - 입력한 dong이름을 받는다
		String inputDong = request.getParameter("dong");
		
		// 1. service객체 얻기
		IMemberService service = MemberServiceImpl.getService();
		
		// 2. service 메소드 호출 - 결과값 얻기
		List<ZipVO> list = service.selectByDong(inputDong);
		
		// 3. 결과값 request에 저장
		request.setAttribute("listValue", list);	// List<MemberVO> list 이게 list	 
		
		// 4. jsp로 forward한다.
		request.getRequestDispatcher("1130/dongResult.jsp").forward(request, response); // "listValue" -> "1130/dongResult.jsp"
	}

}
