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

public class UpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();

		Long memberId = (Long)req.getSession().getAttribute("memberId");

		memberVO.setId(memberId);
		memberVO.setMemberName(req.getParameter("memberName"));
		
		memberDAO.update(memberVO);
		
		result.setRedirect(true);

		return result;
	}
}







