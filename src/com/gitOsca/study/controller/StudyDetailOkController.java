package com.gitOsca.study.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.study.dao.StudyDAO;


public class StudyDetailOkController implements Action{
	
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		StudyDAO studyDAO = new StudyDAO();
		PrintWriter out = response.getWriter();
		out.print(new JSONObject(studyDAO.getStudyDetail(Long.parseLong(request.getParameter("id")))).toString());
		out.close();
		return null;
	
}
	
}
