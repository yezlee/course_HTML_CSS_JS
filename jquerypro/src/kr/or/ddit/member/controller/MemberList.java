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

/**
 * Servlet implementation class MemberList
 */
@WebServlet("/List.do")//ajx에서 클래스이름을 호출하는게아니고, jsp호출하는것처럼  "/List.do"얘를 호출하는거야
public class MemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 클라이언트 요청 (전송)시 전송되는 데이터를 받는다.
		// 1. service 객체 얻어 오기
		IMemberService service = MemberServiceImpl.getService();
		
		// 2. service 메소드를 호출한다. - 결과를 받는다. (여기선 list!! 리턴리스트한거!)
		List<MemberVO> list = service.selectAllmember();
		
		// 3. request객체에 결과를 저장한다. 
		request.setAttribute("listValue", list);
		
		// 4. 결과로 출력하거나 json데이터를 생성한다. - 이건 jsp응답페이지에서 한다. - 컨트롤러에서 받은 결과를 ajax로 다시 보내줄 json을 만드는데 그게 jsp파일로 되어있음
		request.getRequestDispatcher("1127/memberList.jsp").forward(request, response);	
		
		// 5. jsp페이지로 forward한다.
		//request.getRequestDispatcher("1127/memberList.jsp(jsp페이지 이름)").forward(request, response);	이걸 게터로 꺼내온거	
		
		
		
		
		
		
		//컨트롤러에서 팡ㄹ을 리케ㅡ트에 저장하고 그 파일ㅈ을 제이슨에서 리퀘스트에 저장한값(게터로)을 불러와 게터로 - 이게 포워드야 ==> 공유하는방법이야. 공유하는리퀘스트 
		
		//getPost, Dom, redirect등등 이런 개념을 인터뷰에서물어봄
		//리다이렉트와 포워드의 차이는 컨트롤러의 결과값을 뷰에서 찍어야하는데  공유할수가 없어서 리다이렉트에서 뷰는 공유할수없어 -- js?에서 공유할수없어
		
		//model - (작은의미로) memberVO
		//view - 이게 jsp가 되고
		//controller - 얘를 뷰랑 다같이 놓을수없어서 자바로 하는거야
	}

}
