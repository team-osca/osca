package com.gitOsca.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.cafe.dao.CafeDAO;
import com.gitOsca.cafeImage.dao.CafeImageDAO;

public class ListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CafeDAO cafeDAO = new CafeDAO();
		CafeImageDAO cafeImageDAO = new CafeImageDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		
		cafeDAO.findAll().stream().map(JSONObject::new).forEach(jsonArray::put);
		
		req.setAttribute("cafes", jsonArray.toString());
		result.setPath("templates/main-cafe/main-cafe-list.jsp");
		return result;
	}

}
