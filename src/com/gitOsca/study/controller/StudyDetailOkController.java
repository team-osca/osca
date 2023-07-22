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
import com.gitOsca.study.domain.StudyDTO;
import com.gitOsca.study.domain.StudyVO;


public class StudyDetailOkController implements Action{
	
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println("들어왔우");
		StudyDAO studyDAO = new StudyDAO();
		
		PrintWriter out = response.getWriter();
		Long id = Long.parseLong(request.getParameter("id"));
		StudyVO studyVO = studyDAO.getStudyDetail(id);
		StudyDTO studyDTO = new StudyDTO(studyVO);
		studyDTO.setMemberVO(studyDAO.getMiniProfile(studyVO.getMemberId()));
		
        JSONObject jsonObject = new JSONObject(studyDTO);
        
        out.print(jsonObject.toString());
		out.close();
		return null;
		
}
	
}
