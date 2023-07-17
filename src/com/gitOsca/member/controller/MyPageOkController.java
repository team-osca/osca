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

public class MyPageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		
		Optional<MemberVO> foundMember = memberDAO.findById(1L);
		
		if(foundMember.isPresent()) {
			request.setAttribute("member", foundMember.get());
//			���۹���� forward�̱� ������
			result.setPath("templates/member/mypage/mypage.jsp");			
		}else {
			result.setRedirect(true);
//			redirect�ϱ� ���̱�
			result.setPath(request.getContextPath() + "/login.member");
		}
		return result;
	}
}







