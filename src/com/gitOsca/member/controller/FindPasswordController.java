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
		String test = "test�̸����Դϴ�.";
		String checkParm = req.getParameter("e_mail");
		// null �̰ų� �� ���ڿ��� ��� ��й�ȣ �Է� �������� �̵� 
//		if (checkParm == null || checkParm == "") {
//			result.setRedirect(true);
//			result.setPath( req.getContextPath() + "/��й�ȣ �Է� frontController" );
//		}
		result.setPath("templates/findPassword/findPassword.jsp");
		return result;
	}

}
