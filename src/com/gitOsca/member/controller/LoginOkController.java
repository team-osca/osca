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
		System.out.println("로그인 ok 콘트롤러");		
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
//		세션의 이멜 들고옴
		 String memberEmail = (String) req.getSession().getAttribute("userEmail");
		 System.out.println(memberEmail);
//		화면에서 사용자가 직접 form태그의 input에 비밀번호를 작성했을 때
		String memberPassword = req.getParameter("password");
		Long  id = 0L;
		String memberRole = null;
		Result result = new Result();
		result.setRedirect(true);
		System.out.println(memberPassword);
//		전달받은 아이디와 비밀번호로 회원 번호 조회
		 id = memberDAO.login(memberEmail, memberPassword);
		 memberRole = memberDAO.findMemberRoleById(id);

//		회원 번호가 없다면
		if( id == null) {
//			로그인 실패
//			login.jsp로 이동하면서 실패했다는 login=false를 같이 전달해준다(안내 모달창을 출력하기 위해서)
			result.setPath(req.getContextPath() + "/login.member?login=false");
		}else {
//			로그인 성공
//			세션에 로그인된 회원의 번호 저장
			session.setAttribute("memberId",  id);
			session.setAttribute("memberRole", memberRole);
			String rolerole = (String)session.getAttribute("memberRole");
			System.out.println("세션에 넣은" +rolerole);
//			메인페이지로으로 이동
			result.setPath(req.getContextPath() + "loginSucess.member");

	}
		return result;
	}
}

