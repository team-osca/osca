package com.gitOsca.study;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Result;
import com.gitOsca.study.controller.StudyDetailOkController;
import com.gitOsca.study.controller.StudyListOkController;
import com.gitOsca.study.controller.StudyOkController;

public class StudyFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("detailOk")) {
			result = new StudyDetailOkController().execute(req, resp);
		}
		else if(target.equals("detail")) {
			result = new Result();
			result.setPath("templates/myStudy/studyDetailView.jsp");
		}
		else if(target.equals("myStudyOk")) {
			result = new StudyOkController().execute(req, resp);
		}
		else if(target.equals("myStudy")) {
			result = new Result();
			result.setPath("templates/myStudy/myStudy.jsp");
		}
		else if(target.equals("studyListOk")) {
			result = new StudyListOkController().execute(req, resp);
		}
		else if(target.equals("studyList")) {
			result = new Result();
			result.setPath("templates/study/study.jsp");
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
