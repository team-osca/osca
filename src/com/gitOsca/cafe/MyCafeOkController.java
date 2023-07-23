package com.gitOsca.cafe;

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

public class MyCafeOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		CafeDAO cafeDAO = new CafeDAO();
		PrintWriter out = resp.getWriter();
		JSONArray jsonArray = new JSONArray();
		
		String status = req.getParameter("status");
		
		cafeDAO.findAllByStatus(status).stream().map(JSONObject::new).forEach(jsonArray::put);
		
		out.print(jsonArray.toString());
		return null;
	}

}
