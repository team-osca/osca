package com.gitOsca.general.controller;

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
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		Result result = new Result();
		GeneralDAO generalDAO = new GeneralDAO();
		
		Optional<GeneralVO> foundGeneral = generalDAO.findById(1L);
		
		if(foundGeneral.isPresent()) {
			request.setAttribute("general", foundGeneral.get());
//			forward
			result.setPath("test.jsp");			
		}else {
			result.setRedirect(true);
//			redirect로 보내기
			result.setPath(request.getContextPath() + "/login.member");
		}
		return result;
	}
}



