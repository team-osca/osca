package com.gitOsca.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.dao.MemberDAO;

public class ResetPasswordOkController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		final int KEY = 3;
		// get 방식으로 암호화 되어 온 이메일 복호화 
		Result result = new Result();
		String userEmail = req.getParameter("e_mail"), memberPassword = req.getParameter("password"), encryptedPassword = "";

		MemberDAO dao = new MemberDAO();

		HashMap<String, String> map = new HashMap<String, String>();
		// 비밀번호 암호화
		for (int i = 0; i < memberPassword.length(); i++) {
			encryptedPassword += (char)(memberPassword.charAt(i) * KEY);
		}
		
		map.put("memberEmail", userEmail);
		map.put("memberPassword", encryptedPassword);
		
		dao.updatePassword(map);
		result.setPath(req.getContextPath() + "/reset_password_next.member");
		result.setRedirect(true);		
		return result;
	}

}


