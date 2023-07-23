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


public class StudyOkController implements Action{
	private final int WHOLE_STUDY = 1;
	private final int OPENED_STUDY = 2;
	private final int APPLIED_STUDY = 3;
	
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		Long id = Long.parseLong(request.getParameter("id"));
		Integer type = Integer.parseInt(request.getParameter("type"));
		StudyDAO studyDAO = new StudyDAO();
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = new JSONArray();
		
		System.out.println(" ó¨Í∏∞ÎèÑ  ïÑÎ¨¥Í±∞ Çò");
		
		if (type == WHOLE_STUDY) {
			studyDAO.getWholeStudies(id).stream().map(JSONObject::new).forEach(jsonArray::put);
		}
		else if (type == OPENED_STUDY) {
			studyDAO.getOpenedStudies(id).stream().map(JSONObject::new).forEach(jsonArray::put);
		}
		else if (type == APPLIED_STUDY) {
			studyDAO.getAppliedStudies(id).stream().map(JSONObject::new).forEach(jsonArray::put);
		}
		
		
		out.print(jsonArray.toString());
		out.close();
		return null;
	
	
}
	
}
