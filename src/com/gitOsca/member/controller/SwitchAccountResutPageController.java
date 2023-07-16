package com.gitOsca.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;

public class SwitchAccountResutPageController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String contextPath = req.getContextPath();
		String path = req.getParameter("flag").equals("true")
				? contextPath + "templates/findAccount/find-account-ok.jsp?account=" + req.getParameter("account")
				: contextPath + "templates/findAccount/not-found-account.jsp";
		result.setPath(path);
		return result;
	}

}
