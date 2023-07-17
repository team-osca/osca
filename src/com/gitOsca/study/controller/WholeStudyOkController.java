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


public class WholeStudyOkController implements Action{
	
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		Long id = Long.parseLong(request.getParameter("id"));
		StudyDAO studyDAO = new StudyDAO();
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = new JSONArray();
		
//		dao에서 id로 전체 조회 한 후 각각을 JSON객체로 만든 뒤 JSONArray객체에 삽입
		studyDAO.getWholeStudies(id).stream().map(JSONObject::new).forEach(jsonArray::put);
		
		out.print(jsonArray.toString());
		out.close();
		return null;
	
}
	
}
