package com.gitOsca.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;

public class FindPasswordController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		String test = "test이메일입니다.";
		String checkParm = req.getParameter("e_mail");
		// null 이거나 빈 문자열일 경우 비밀번호 입력 페이지로 이동 
//		if (checkParm == null || checkParm == "") {
//			result.setRedirect(true);
//			result.setPath( req.getContextPath() + "/비밀번호 입력 frontController" );
//		}
		result.setPath("templates/findPassword/findPassword.jsp");
		return result;
	}

}
