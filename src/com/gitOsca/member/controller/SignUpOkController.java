package com.gitOsca.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.dao.MemberDAO;
import com.gitOsca.member.domain.MemberVO;

public class SignUpOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
//		사용자가 화면에서 입력한 값을 전부 받아온다.
//		화면에서 입력한 값은 모두 MemberVO객체에 담아준다.
		memberVO.setMemberName(req.getParameter("memberName"));
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberPassword(req.getParameter("memberPassword"));
		memberVO.setMemberPhonenumber(req.getParameter("memberPhone"));
		memberVO.setMemberRole(req.getParameter("memberRole"));

//		SQL문에 필요한 모든 정보를 memberVO를 통해 전달한다.
		memberDAO.insert(memberVO);
//		redirect로 전송
		result.setRedirect(true);
//		login.login으로 이동
		result.setPath(req.getContextPath() + "/login.login");
		
		return result;
	}
}

















