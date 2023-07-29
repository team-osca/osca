package com.gitOsca.member.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.dao.MemberDAO;
import com.gitOsca.member.domain.MemberVO;

public class SettingOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();		
		Long memberId = (Long)req.getSession().getAttribute("memberId");

		Optional<MemberVO> foundMember = memberDAO.findById(memberId);
		
		if(foundMember.isPresent()) {
			req.setAttribute("member", foundMember.get());
			result.setPath("templates/member/mypage/setting.jsp");			
		}else {
			result.setRedirect(true);
		}
		return result;
	}
}







