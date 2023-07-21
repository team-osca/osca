package com.gitOsca.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.cafe.dao.CafeDAO;
import com.gitOsca.cafeImage.dao.CafeImageDAO;

public class DetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		Result result = new Result();
		CafeDAO cafeDAO = new CafeDAO();
		CafeImageDAO cafeImageDAO = new CafeImageDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		
		req.setAttribute("contents", cafeDAO.findById(id).get());
		req.setAttribute("images", cafeImageDAO.findAllById(id));
		
		result.setPath(req.getContextPath() + "/templates/cafe/mycafe-detail.jsp");
		return result;
	}

}
