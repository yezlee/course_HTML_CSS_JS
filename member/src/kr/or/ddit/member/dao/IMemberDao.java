package kr.or.ddit.member.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

public interface IMemberDao {
	
	//조회, 검색, 삭제, 저장
	public List<MemberVO> selectAllmember() throws SQLException;
	
	//아이디 중복검사
	public String selectById(String id) throws SQLException;

	//우편번호 검색
	public List<ZipVO> selectByDong(String dong) throws SQLException; 

	//전송 - 뭉탱이로 보내야하니까 MemberVO 해야지
	public String insertMember(MemberVO vo) throws SQLException; 
	
}
