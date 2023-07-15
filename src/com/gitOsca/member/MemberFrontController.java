package com.gitOsca.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.controller.CheckEmailOkController;
import com.gitOsca.member.controller.SignUpOkController;

public class MemberFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;

		    if (target.equals("checkEmailOk")) {
		        result = new CheckEmailOkController().execute(req, resp);
		    } else if (target.equals("signUpOk")) {
		        result = new SignUpOkController().execute(req, resp);
		    }

		    if (result != null) {
		        if (result.isRedirect()) {
		            resp.sendRedirect(result.getPath());
		        } else {
		            req.getRequestDispatcher(result.getPath()).forward(req, resp);
		        }
		    }
		
	
	}
	
}

