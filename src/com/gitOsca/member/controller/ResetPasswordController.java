package com.gitOsca.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;

public class ResetPasswordController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		String userEmail = req.getParameter("e_mail");
		
		req.setAttribute("e_mail", userEmail);	
		
		result.setPath(req.getContextPath() + "/templates/findPassword/reset-password.jsp");
		return result;
	}

}
