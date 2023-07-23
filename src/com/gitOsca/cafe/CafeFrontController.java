package com.gitOsca.cafe;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Result;
import com.gitOsca.cafe.controller.DetailOkController;
import com.gitOsca.cafe.controller.ListOkController;

public class CafeFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("list")) {
			result = new Result();
			result.setPath(req.getContextPath() + "/templates/main-cafe/main-cafe-list.jsp");
		}else if(target.equals("myCafe")) {
			result = new MyCafeController().execute(req, resp);
		}else if(target.equals("post")) {
			result = new Result();
			result.setPath(req.getContextPath() + "/templates/cafe/mycafe-post.jsp");
		}else if(target.equals("listOk")) {
			result = new ListOkController().execute(req, resp);
		}else if(target.equals("detailOk")) {
			result = new DetailOkController().execute(req, resp);
		}else if(target.equals("writeOk")) {
			result = new DetailOkController().execute(req, resp);
		}else if(target.equals("myCafeOk")) {
			result = new MyCafeOkController().execute(req, resp);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
