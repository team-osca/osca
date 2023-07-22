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
		System.out.println("이멜콘트롤러로 왔엉");
		resp.setContentType("text/html;charset=utf-8");
		String memberEmail = req.getParameter("email");
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		boolean check = memberDAO.selectEmail(memberEmail) == null;
		req.getSession().setAttribute("userEmail", memberEmail);
		 if (check) {
				System.out.println("가입으로 가여!");
		        result.setPath("signUp.member");
		        result.setRedirect(true);
		    } else {
				System.out.println("비번으로 가여!");
		    	 result.setPath("password.member");
		    	 result.setRedirect(true);
		    }
		return result;
	}

}



