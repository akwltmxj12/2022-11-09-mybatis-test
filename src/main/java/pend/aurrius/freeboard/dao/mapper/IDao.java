package pend.aurrius.freeboard.dao.mapper;

import pend.aurrius.freeboard.dto.MemberDto;

public interface IDao {
	// member 관련 메서드
	public void joinMemberDao(String mid, String mpw, String mname, String memail); // 회원 가입 - 추상 메서드
	public int checkIdDao(String mid); //회원 가입 여부 확인
	public int checkPwDao(String mid, String mpw);	//아이디와 비밀번호 일치여부 체크
	public MemberDto memberInfoDao(String mid);
	
	//board 관련 메서드
	public void writeDao(String mid, String mname, String ftitle, String fcontent);	// 게시판에 글쓰기
	
	
}
