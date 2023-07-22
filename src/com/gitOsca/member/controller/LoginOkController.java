package com.gitOsca.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.dao.MemberDAO;

public class LoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		final int KEY = 3;
		HttpSession session = req.getSession();
//		세션의 이멜 들고옴
		 String memberEmail = (String) req.getSession().getAttribute("userEmail");
//		화면에서 사용자가 직접 form태그의 input에 비밀번호를 작성했을 때
			String memberPassword = req.getParameter("password");
			String encryptedPassword = "";
			for (int i = 0; i < memberPassword.length(); i++) {
				encryptedPassword += (char)(memberPassword.charAt(i) * KEY);
			}
		Long  id = 0L;
		String memberRole = null;
		String memberName =  null;
		Result result = new Result();
		result.setRedirect(true);
		 id = memberDAO.login(memberEmail, encryptedPassword);
//		전달받은 아이디와 비밀번호로 회원 번호 조회

//		회원 번호가 없다면
		if( id == null) {
//			로그인 실패
			result.setPath(req.getContextPath() + "/password.member?login=false");
			req.setAttribute("loginFailed", true);
		}else {
//			로그인 성공
//			세션에 로그인된 회원의 번호 저장
			session.setAttribute("memberId",  id);
			
			 memberRole = memberDAO.findMemberRoleById(id);
			 memberName = memberDAO.findById(id).get().getMemberName();
			session.setAttribute("memberRole", memberRole);
			session.setAttribute("memberName", memberName);
			String rolerole = (String)session.getAttribute("memberRole");
	//			메인페이지로으로 이동
			result.setPath(req.getContextPath() + "loginSucess.member");

	}
		return result;
	}
}
