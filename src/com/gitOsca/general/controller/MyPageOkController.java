package com.gitOsca.general.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.general.dao.GeneralDAO;
import com.gitOsca.general.domain.GeneralDTO;

public class MyPageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		Result result = new Result();
		GeneralDAO generalDAO = new GeneralDAO();
		
		Optional<GeneralDTO> foundGeneral = generalDAO.findById(1L);
		
		if(foundGeneral.isPresent()) {
			req.setAttribute("general", foundGeneral.get());
			String contextPath=req.getContextPath();
			String path =  req.getParameter("memberRole").equals("0")
			? contextPath + "templates/member/mypage/mypageInit.jsp"
			: contextPath + "templates/member/mypage/MyPage.jsp";
//			forward
			result.setPath(path);			
		}else {
			result.setRedirect(true);
//			redirect로 보내기
			result.setPath(req.getContextPath() + "/mypageOk.member");
		}
		return result;
	}
}



