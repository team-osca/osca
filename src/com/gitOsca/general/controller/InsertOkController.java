package com.gitOsca.general.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.general.dao.GeneralDAO;
import com.gitOsca.general.domain.GeneralVO;

public class InsertOkController implements Action{
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	GeneralDAO generalDAO = new GeneralDAO();
	GeneralVO generalVO = new GeneralVO();
	Result result = new Result();
	
	//사용자가 화면에서 입력한 값을 가져온 뒤에 모두 GeneralVO객체에 담아주기'
	Long memberId = Long.valueOf(req.getParameter("memberId"));

//	generalVO.setMemberId(3L);
	generalVO.setGeneralUniversity(req.getParameter("generalUniversity"));
	generalVO.setGeneralCompany(req.getParameter("generalCompany"));
	generalVO.setGeneralWorkDateBegin(req.getParameter("generalWorkDateBegin"));
	generalVO.setGeneralWorkDateEnd(req.getParameter("generalWorkDateEnd"));
	generalVO.setGeneralIntroduction(req.getParameter("generalIntroduction"));
	generalVO.setGeneralCareer(req.getParameter("generalCareer"));
//	generalVO.setGeneralSalary(Long.valueOf(req.getParameter("generalSalary")));
	
	generalDAO.insert(generalVO);
	
	result.setRedirect(true);
	
	return result;
	}
}
