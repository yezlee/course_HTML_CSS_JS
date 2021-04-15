package kr.or.ddit.member.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.member.vo.MemberVO;
/*
 * SqlMapClient객체 얻어오기
 * 자신의 daoImpl객체 생성하고 return하는 메소드 -service에서 사용하기위함
 * 
 */
import kr.or.ddit.member.vo.ZipVO;

public class MemberDaoImpl implements IMemberDao{

		private SqlMapClient smc;
		private static IMemberDao dao;
	
		private MemberDaoImpl() {
			smc = SqlMapClientFactory.getSqlMapClient();
		}
		
		public static IMemberDao getDao() {
			if(dao == null) dao = new MemberDaoImpl();
			return dao;
		}
		
		@Override
		public List<MemberVO> selectAllmember() throws SQLException {
			// TODO Auto-generated method stub
			return smc.queryForList("mymember.selectAllmember"); // 서비스로 리턴해준다
		}

		@Override
		public String selectById(String id) throws SQLException {
			// TODO Auto-generated method stub
			return (String)smc.queryForObject("mymember.selectById", id);
		}

		@Override
		public List<ZipVO> selectByDong(String dong) throws SQLException {
			// TODO Auto-generated method stub
			return smc.queryForList("mymember.selectByDong", dong);
		}

		@Override
		public String insertMember(MemberVO vo) throws SQLException {
			// TODO Auto-generated method stub
			
			return (String)smc.insert("mymember.insertMember", vo);	//내가 입력한 아이디값을 리턴해
		}
}
