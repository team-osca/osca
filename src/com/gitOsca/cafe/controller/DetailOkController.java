package com.gitOsca.cafe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.cafe.dao.CafeDAO;
import com.gitOsca.cafe.domain.CafeVO;
import com.gitOsca.cafeImage.dao.CafeImageDAO;
import com.gitOsca.cafeImage.domain.CafeImageVO;
import com.gitOsca.ceo.dao.CeoDAO;
import com.gitOsca.ceo.domain.CeoVO;
import com.gitOsca.member.dao.MemberDAO;
import com.gitOsca.member.domain.MemberVO;

public class DetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		Result result = new Result();
		CafeDAO cafeDAO = new CafeDAO();
		CafeImageDAO cafeImageDAO = new CafeImageDAO();
		CeoDAO ceoDAO = new CeoDAO();
		MemberDAO memberDAO = new MemberDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		
		CafeVO cafeVO =  cafeDAO.findById(id).get();
		List<CafeImageVO> cafeImageVO = cafeImageDAO.findAllById(id);
		CeoVO ceoVO =  ceoDAO.findById(cafeVO.getCeoId());
		MemberVO memberVO = memberDAO.findById(ceoVO.getMemberId()).get();
		
		req.setAttribute("contents", cafeVO);
		req.setAttribute("images", cafeImageVO);
		req.setAttribute("cafeInfo", ceoVO);
		req.setAttribute("owner", memberVO);
		
		result.setPath(req.getContextPath() + "/templates/cafe/mycafe-detail.jsp");
		return result;
	}

}
