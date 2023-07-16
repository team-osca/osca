package com.gitOsca.member;

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
		resp.setContentType("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		MemberDAO dao = new MemberDAO();
		String account = dao.selectAccount(req.getParameter("phoneNumber"));
		JSONObject accountJSON = new JSONObject();
		if( account == null ) {
			account = "계정이 없습니다.";
		}
		try {
			accountJSON.put("account", account);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		PrintWriter out = resp.getWriter();
		out.print(accountJSON.toString());
		out.close();
		return null;
	}

}

