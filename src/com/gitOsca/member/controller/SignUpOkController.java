package com.gitOsca.member.controller;

import java.io.IOException;
import java.util.HashMap;

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
		final int KEY = 3;
		System.out.println("사인업 오케 콘트롤러");
		 String memberEmail = (String) req.getSession().getAttribute("userEmail");
		 String memberPassword = (String) req.getParameter("memberPassword");
		 String encryptedPassword = "";
//		사용자가 화면에서 입력한 값을 전부 받아오고 모두 MemberVO객체에 담아준다.
			String memberRole = req.getParameter("memberRole");
			if (memberRole != null && memberRole.equals("on")) {
			    //"on" -> "1"
			    memberRole = "1";
			}
			
			// 비밀번호 암호화
			for (int i = 0; i < memberPassword.length(); i++) {
				encryptedPassword += (char)(memberPassword.charAt(i) * KEY);
			}
			
		memberVO.setMemberName(req.getParameter("memberName"));
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberPassword(encryptedPassword);
		memberVO.setMemberPhonenumber(req.getParameter("memberPhone"));
		memberVO.setMemberRole(memberRole);		
		

//		SQL문에 필요한 모든 정보를 memberVO를 통해 전달한다.
		memberDAO.insert(memberVO);
//		redirect로 전송
		result.setRedirect(true);
//		SignUpSucess으로 이동
		result.setPath(req.getContextPath() + "/SignUpSucess.member");

		req.getSession().invalidate();
		return result;
	}
}

















