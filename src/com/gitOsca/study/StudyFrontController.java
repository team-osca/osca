package com.gitOsca.study;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Result;
import com.gitOsca.study.controller.AppliedStudyOkController;
import com.gitOsca.study.controller.OpenedStudyOkController;
import com.gitOsca.study.controller.StudyDetailOkController;
import com.gitOsca.study.controller.WholeStudyOkController;

public class StudyFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("detailOk")) {
			result = new StudyDetailOkController().execute(req, resp);
		}
		else if(target.equals("appliedStudyOk")) {
			result = new AppliedStudyOkController().execute(req, resp);
		}
		else if(target.equals("openedStudyOk")) {
			result = new OpenedStudyOkController().execute(req, resp);
		}
		else if(target.equals("wholeStudyOk")) {
			result = new WholeStudyOkController().execute(req, resp);
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
