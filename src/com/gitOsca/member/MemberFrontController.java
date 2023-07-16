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
			// ���� ã�� �������� �̵�
			result = new Result();
			result.setPath("templates/findAccount/find-account.jsp");
		} else if (target.equals("get_authentication_number")) {
			// ������ȣ �ޱ�
			result = new AuthenticationNumberController().execute(req, resp);
		} else if (target.equals("sign_infind_account_next")) {
			// ������ ã�� �������� ���� �� ã�� �������� ���� �б�ó��
			result = new Result();
			String path = req.getParameter("flag").equals("true")
					? "templates/findAccount/find-account-ok.jsp?account=" + req.getParameter("account")
					: "templates/findAccount/not-found-account.jsp";
			result.setPath(path);
		} else if ( target.equals("find_account") ) {
			// ���� ã��
			result = new findAccountOkController().execute(req, resp);
		} else if ( target.equals("go-to-main") ) {
			// �������� ���� ���� req�ʱ�ȭ
			result = new GotoMainController().execute(req, resp);
		} else if (target.equals("mypage")) {
			// ������������ �̵�	
			result = new Result();
			result.setPath("templates/member/mypage/mypage.jsp");
		} else if (target.equals("mypageOk")) {
			//���������� ������
			result = new MyPageOkController().execute(req, resp);
		} 		else if(target.equals("signUp")) {
			result = new Result();
			
		}else if(target.equals("emailCheck")){
			result = new CheckEmailOkController().execute(req,resp);
			
		}else if(target.equals("password")){
			result = new Result();
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
