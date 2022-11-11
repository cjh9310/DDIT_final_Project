package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.MemberVO;


public interface MemberDAO {
	
	List<MemberVO> selectMemberList(Criteria cri)throws SQLException;
	
	int selectMemberListCount(Criteria cri)throws SQLException;
	
	MemberVO selectMemberById(String id)throws SQLException;
	
	public void insertMember(MemberVO member) throws SQLException;
	
	public void updateMember(MemberVO member) throws SQLException;
	
	void deleteMember(String id) throws SQLException;
	
	MemberVO selectMemberByPicture(String picture) throws SQLException;
	
}
