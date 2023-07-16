package com.gitOsca.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Result;
import com.gitOsca.member.controller.AuthenticationNumberController;
import com.gitOsca.member.controller.GotoMainController;
import com.gitOsca.member.controller.MyPageOkController;
import com.gitOsca.member.controller.findAccountOkController;

public class MemberFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;

		if (target.equals("sign_infind_account")) {
			// 계정 찾기 페이지로 이동
			result = new Result();
			result.setPath("templates/findAccount/find-account.jsp");
		} else if (target.equals("get_authentication_number")) {
			// 인증번호 받기
			result = new AuthenticationNumberController().execute(req, resp);
		} else if (target.equals("sign_infind_account_next")) {
			// 계정을 찾은 페이지로 갈지 못 찾은 페이지로 갈지 분기처리
			result = new Result();
			String path = req.getParameter("flag").equals("true")
					? "templates/findAccount/find-account-ok.jsp?account=" + req.getParameter("account")
					: "templates/findAccount/not-found-account.jsp";
			result.setPath(path);
		} else if ( target.equals("find_account") ) {
			// 계정 찾기
			result = new findAccountOkController().execute(req, resp);
		} else if ( target.equals("go-to-main") ) {
			// 메인으로 가기 전에 req초기화
			result = new GotoMainController().execute(req, resp);
		} else if (target.equals("mypage")) {
			// 마이페이지로 이동	
			result = new Result();
			result.setPath("templates/member/mypage/mypage.jsp");
		} else if (target.equals("mypageOk")) {
			//마이페이지 프로필
			result = new MyPageOkController().execute(req, resp);
		} 

		
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
