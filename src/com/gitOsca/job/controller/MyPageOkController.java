package com.gitOsca.job.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.general.dao.GeneralDAO;
import com.gitOsca.general.domain.GeneralVO;

public class MyPageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		Result result = new Result();
		GeneralDAO generalDAO = new GeneralDAO();
		
		Optional<GeneralVO> foundGeneral = generalDAO.findById(1L);
		
		if(foundGeneral.isPresent()) {
			req.setAttribute("general", foundGeneral.get());
			result.setPath("templates/member/mypage/mypageInit.jsp");			
		}else {
			result.setRedirect(true);
		}
		
		return result;
	}
}



