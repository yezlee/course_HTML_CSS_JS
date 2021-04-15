package kr.or.ddit.lprod.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.lprod.vo.LprodVO;

public interface ILprodDao {
	
	//조회
	public List<LprodVO> getAllLprod() throws SQLException;
	
	//아이디 중복검사
	public String selectById(String id) throws SQLException;
}
