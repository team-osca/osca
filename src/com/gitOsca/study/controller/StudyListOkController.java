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
import com.gitOsca.general.domain.GeneralVO;
import com.gitOsca.job.domain.JobVO;
import com.gitOsca.skill.domain.SkillVO;
import com.gitOsca.study.dao.StudyDAO;
import com.gitOsca.study.domain.StudyListDTO;
import com.gitOsca.studyImage.domain.StudyImageVO;

public class StudyListOkController implements Action{
		
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
			
		response.setContentType("text/html; charset=UTF-8");
		StudyDAO studyDAO = new StudyDAO();
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = new JSONArray();
		studyDAO
			.getListInfoForStudyVO()
			.stream()
			.map((study)->{
				GeneralVO generalVO = studyDAO.getListInfoForGeneralVO(study.getMemberId());
				JobVO jobVO = studyDAO.getListInfoForJobVO(study.getMemberId());
				List<SkillVO> skillVO = studyDAO.getListInfoForSkillVO(study.getId());
				StudyImageVO studyImageVO = studyDAO.getListInfoForStudyImageVO(study.getId());
				StudyListDTO studyListDTO = new StudyListDTO(study, generalVO, jobVO, skillVO, studyImageVO);
				return new JSONObject(studyListDTO);
			})
			.forEach(jsonArray::put);
        
        out.print(jsonArray.toString());
		out.close();
		return null;
			
	}
		
}

