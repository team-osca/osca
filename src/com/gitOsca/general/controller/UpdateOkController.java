package com.gitOsca.general.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.general.dao.GeneralDAO;
import com.gitOsca.general.domain.GeneralVO;

public class UpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		GeneralDAO generalDAO = new GeneralDAO();
		GeneralVO generalVO = new GeneralVO();
		Result result = new Result();
		
//		사용자가 화면에서 입력한 값을 전부 받아오기
		generalVO.setGeneralUniversity(req.getParameter("generalUniversity"));
		generalVO.setGeneralCompany(req.getParameter("generalCompany"));
		generalVO.setGeneralWorkDateBegin(req.getParameter("generalWorkDateBegin"));
		generalVO.setGeneralWorkDateEnd(req.getParameter("generalWorkDateEnd"));
		generalVO.setGeneralIntroduction(req.getParameter("generalIntroduction"));
		
		generalDAO.update(generalVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.member");
		
		return result;
	}
}







