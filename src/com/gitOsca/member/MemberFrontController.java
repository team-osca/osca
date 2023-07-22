package com.gitOsca.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Result;
import com.gitOsca.member.controller.CheckEmailOkController;
import com.gitOsca.member.controller.LoginOkController;
import com.gitOsca.member.controller.MyPageOkController;
import com.gitOsca.member.controller.ResetPasswordController;
import com.gitOsca.member.controller.ResetPasswordOkController;
import com.gitOsca.member.controller.SendEmailOkController;
import com.gitOsca.member.controller.SendSMSController;
import com.gitOsca.member.controller.SettingOkController;
import com.gitOsca.member.controller.SignUpOkController;
import com.gitOsca.member.controller.WithdrawOkController;
import com.gitOsca.member.controller.findAccountOkController;

public class MemberFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		System.out.println("멤버 프론트 콘트롤러");
//		System.out.println(target);
//		------------------------------------------- 김동엽 ------------------------------------------
		if (target.equals("sign_infind_account")) {
			// 계정 찾기 페이지로 이동
			result = new Result();
			result.setPath("/templates/findAccount/find-account.jsp");
		} else if (target.equals("get_authentication_number")) {  			// 문자로 인증번호 보내기 
			result = new SendSMSController().execute(req, resp);		 
		} else if (target.equals("find_account")) {							// 계정 찾기 + 분기 처리 
			result = new findAccountOkController().execute(req, resp);
		} else if (target.equals("find_paassword")) {						// 비밀번호 재설정 이베일 발송과 이메일 발송 완료 페이지 출력
			result = new SendEmailOkController().execute(req, resp);
		} else if (target.equals("reset_password")) { 						// 비밀 번호 재설정 페이지로 이동 
			result = new ResetPasswordController().execute(req, resp);
		} else if (target.equals("reset_passwordOk")) { 					// 비밀번호 재설정 
			result = new ResetPasswordOkController().execute(req, resp);
		} else if (target.equals("reset_password_next")) {
			result = new Result();
			result.setPath("/templates/findPassword/finded-password.jsp");
		}
//		------------------------------------------- 김동엽 ------------------------------------------
		
		// -------------------------------- 정유진 ----------------------------
		else if (target.equals("mypageOk")) {
			result = new MyPageOkController().execute(req, resp);
		} else if (target.equals("settingOk")) {
			result = new SettingOkController().execute(req, resp);
		} else if (target.equals("withdrawOk")) {
			result = new WithdrawOkController().execute(req, resp);
		} 	
		// -------------------------------- 정유진 ----------------------------
		
		// -------------------------------- 선희원 ----------------------------
		else if(target.equals("emailCheck")){
			result = new CheckEmailOkController().execute(req,resp);
		}
			else if ( target.equals("password") ) {
				result = new Result();
				result.setPath("templates/login/password.jsp");
			} 	
			else if ( target.equals("signUp") ) {
				result = new Result();
				result.setPath("templates/signUp/signUp.jsp");
			} 
			else if(target.equals("LoginOk")) {
				result = new LoginOkController().execute(req, resp);
			}
			else if(target.equals("loginSucess")) {
				result = new Result();
				result.setPath("/templates/mainPage/mainPage.jsp");
			}
			else if(target.equals("SignUpOk")) {
				result = new SignUpOkController().execute(req, resp);
			}		
			else if(target.equals("SignUpSucess")) {
				result = new Result();
				result.setPath("templates/login/login.jsp");
			}
			else if(target.equals("signOrLogin")) {
				result = new Result();
				result.setPath("templates/login/login.jsp");
			}
			
		// ---------------------------------- 선희원 ------------------------------------

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
