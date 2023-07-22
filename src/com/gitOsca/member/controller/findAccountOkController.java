package com.gitOsca.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.dao.MemberDAO;

public class findAccountOkController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO dao = new MemberDAO();
		resp.setContentType("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		String phoneNumber = req.getParameter("phoneNumber");
		String path = "";
		String memberEmail = dao.selectAccount(phoneNumber);
		
		if ( memberEmail == null ) {
			path = req.getContextPath() + "/templates/findAccount/not-found-account.jsp";
			result.isRedirect();
			result.setPath(path);
		} else {
			path = req.getContextPath() + "/templates/findAccount/find-account-ok.jsp";
			req.setAttribute("memberEmail", memberEmail);
			result.setPath(path);
		}
		return result;
	}

}

