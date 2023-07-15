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

public class CheckEmailOkController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		String memberEmail = req.getParameter("memberEmail");
		
		MemberDAO memberDAO = new MemberDAO();
		boolean check = memberDAO.selectEmail(memberEmail) == null;
	
		 if (check) {
		        resp.sendRedirect("templates/signUp/signUp.jsp");
		    } else {
		        resp.sendRedirect("templates/login.jsp");
		    }
		
		return null;
	}

}



