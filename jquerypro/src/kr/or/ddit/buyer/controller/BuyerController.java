package kr.or.ddit.buyer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.buyer.service.BuyerServiceImpl;
import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.vo.BuyerVO;
import kr.or.ddit.member.service.IMemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.member.vo.MemberVO;

/**
 * Servlet implementation class BuyerController
 */
@WebServlet("/Buyer.do")
public class BuyerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BuyerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//전체 이름 가져오기
		// 0. 클라이언트 요청 (전송)시 전송되는 데이터를 받는다.
		// 1. service 객체 얻어 오기
		IBuyerService service = BuyerServiceImpl.getService();

		// 2. service 메소드를 호출한다. - 결과를 받는다. (여기선 list!! 리턴리스트한거!)
		List<BuyerVO> list = service.getBuyerNames();
				
		// 3. request객체에 결과를 저장한다. 
		request.setAttribute("listValue", list);
		
		// 4. 결과로 출력하거나 json데이터를 생성한다. - 이건 jsp응답페이지에서 한다. - 컨트롤러에서 받은 결과를 ajax로 다시 보내줄 json을 만드는데 그게 jsp파일로 되어있음
		RequestDispatcher disp = request.getRequestDispatcher("1127/buyerNames.jsp");
		disp.forward(request, response);
		
		// 5. jsp페이지로 forward한다.
		//request.getRequestDispatcher("1127/memberList.jsp(jsp페이지 이름)").forward(request, response);	이걸 게터로 꺼내온거	
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id를 조건으로 해서 조회하기
		
		// 0. 클라이언트 요청 (전송)시 전송되는 데이터를 받는다. -id를 조건으로해서
		String buyerId = request.getParameter("id");	
		
		// 1. service 객체 얻어 오기
		IBuyerService service = BuyerServiceImpl.getService();
		
		// 2. service 메소드를 호출한다. - 결과를 받는다. (여기선 list!! 리턴리스트한거!)
		BuyerVO vo = service.getDetail(buyerId);
		
		// 3. request객체에 결과를 저장한다. 
		request.setAttribute("vo", vo);
		
		// 4. 결과로 출력하거나 json데이터를 생성한다. - 이건 jsp응답페이지에서 한다. - 컨트롤러에서 받은 결과를 ajax로 다시 보내줄 json을 만드는데 그게 jsp파일로 되어있음
		// jsp페이지로 forward한다.
		//request.getRequestDispatcher("1127/memberList.jsp(jsp페이지 이름)").forward(request, response);	이걸 게터로 꺼내온거
		request.getRequestDispatcher("1127/buyerDetail.jsp").forward(request, response);
	}

}
