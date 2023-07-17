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


public class AppliedStudyOkController implements Action{
	
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		Long id = Long.parseLong(request.getParameter("id"));
		StudyDAO studyDAO = new StudyDAO();
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = new JSONArray();
		
		studyDAO.getAppliedStudies(id).stream().map(JSONObject::new).forEach(jsonArray::put);
		
		out.print(jsonArray.toString());
		out.close();
		return null;
	
}
	
}

