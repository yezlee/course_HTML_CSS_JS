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
 * Servlet implementation class MemberJoin
 */
@WebServlet("/join.do")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MemberJoin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// 0. 클라이언트 요청 (전송)시 전송되는 데이터를 받는다.
		String id = request.getParameter("mem_id");
		String name = request.getParameter("mem_name");
		String pass = request.getParameter("mem_pass");
		String birth = request.getParameter("mem_bir");
		String zip = request.getParameter("mem_zip");
		String addr = request.getParameter("mem_add1");
		String addr2 = request.getParameter("mem_add2");
		String hp = request.getParameter("mem_hp");
		String email = request.getParameter("mem_mail");
		
		MemberVO vo = new MemberVO();
		vo.setMem_id(id);
		vo.setMem_name(name);
		vo.setMem_pass(pass);
		vo.setMem_bir(birth);
		vo.setMem_zip(zip);
		vo.setMem_add1(addr);
		vo.setMem_add2(addr2);
		vo.setMem_hp(hp);
		vo.setMem_mail(email);
		
		
		
		// 1. service 객체 얻어 오기
		IMemberService service = MemberServiceImpl.getService();
		
		// 2. service 메소드를 호출한다. - 결과를 받는다. (여기선 list!! 리턴리스트한거!)
		String resId = service.insertMember(vo);
		
		// 3. request객체에 결과를 저장한다. 
		request.setAttribute("resId", resId);
		
		// 4. 결과로 출력하거나 json데이터를 생성한다. - 이건 jsp응답페이지에서 한다. - 컨트롤러에서 받은 결과를 ajax로 다시 보내줄 json을 만드는데 그게 jsp파일로 되어있음
		//위에 키를 이용해서 jsp로 가는거야
		request.getRequestDispatcher("member/joinResult.jsp").forward(request, response);	
		
		// 5. jsp페이지로 forward한다.
		//request.getRequestDispatcher("member/memberList.jsp(jsp페이지 이름)").forward(request, response);	이걸 게터로 꺼내온거	
		
	}

}
