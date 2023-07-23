package com.gitOsca.cafe.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.cafe.dao.CafeDAO;
import com.gitOsca.cafe.domain.CafeDTO;
import com.gitOsca.cafeImage.dao.CafeImageDAO;
import com.gitOsca.ceo.dao.CeoDAO;

public class ListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		CafeDAO cafeDAO = new CafeDAO();
		CafeImageDAO cafeImageDAO = new CafeImageDAO();
		CeoDAO ceoDAO = new CeoDAO();
		JSONArray jsonArray = new JSONArray();
		PrintWriter out = resp.getWriter();
		
		String location = req.getParameter("location");
		
		cafeDAO
			.findAllByLocation(location)
			.stream()
			.map((cafe)->
			{
				CafeDTO cafeDTO = new CafeDTO(cafe);
				cafeDTO.setCafeImages(cafeImageDAO.findAllById(cafe.getId()));
				cafeDTO.setCeoVO(ceoDAO.findById(cafe.getCeoId()));
				return new JSONObject(cafeDTO);
			})
			.forEach(jsonArray::put);
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
