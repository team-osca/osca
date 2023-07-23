package com.gitOsca.cafe;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.cafe.dao.CafeDAO;
import com.gitOsca.cafe.domain.CafeVO;

public class MyCafeController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html; charset=UTF-8");
		Result result = new Result();
		CafeDAO cafeDAO = new CafeDAO();
		int numberOfAllCafe = cafeDAO.getNumberOfAllCafes();
		int []numberOfAllCafeByStatus = {cafeDAO.getNumberOfAllCafesByStatus("1"), cafeDAO.getNumberOfAllCafesByStatus("0")};
		
		req.setAttribute("numberOfAllCafe", numberOfAllCafe);
		req.setAttribute("numberOfAllCafeByStatus", numberOfAllCafeByStatus);
		result.setPath(req.getContextPath() + "/templates/cafe/mycafe.jsp"); 
		return result;
	}

}
