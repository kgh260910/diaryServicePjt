package com.office.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberServiceForDW implements IMemberService {

//	MemberDaoForMySQL memberDaoForMySQL = new MemberDaoForMySQL(); // 아래와 같이 사용하면 부품갈아끼기가 쉽다.
//	IMemberDao iMemberDao = new MemberDaoForOracle();   // 인터페이스타입 변수명 = new 상속하는클래스 생성자();
	
	final private IMemberDao iMemberDao;
	
	public MemberServiceForDW(IMemberDao iMemberDao) {
		this.iMemberDao = iMemberDao;
	}

	@Override
	public int signup(HttpServletRequest request, HttpServletResponse response) {
		
		String memId = request.getParameter("memId");
		String memPw = request.getParameter("memPw");
		String memMail = request.getParameter("memMail");
		String memPhone = request.getParameter("memPhone");
		
		System.out.println(memId);
		System.out.println(memPw);
		System.out.println(memMail);
		System.out.println(memPhone);
		
		MemberDto memberDto = new MemberDto(memId, memPw, memMail, memPhone);
		
		boolean isMember = iMemberDao.isMember(memId);
		int result = 0;
		
		if (!isMember) {
			result = iMemberDao.insertNewMember(memberDto);
			
		}
		
		return result;
	}

	@Override
	public int signin(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
