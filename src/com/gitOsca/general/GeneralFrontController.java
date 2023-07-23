package com.gitOsca.general;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Result;
	import com.gitOsca.general.controller.InsertOkController;
import com.gitOsca.general.controller.MyPageOkController;
import com.gitOsca.general.controller.UpdateOkController;

public class GeneralFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
//		general test 하기 위한 코드 및 마이페이지 화면에 보이는 코드 
		if(target.equals("mypageOk")) {
			result = new MyPageOkController().execute(req, resp);	
//		기본 이력서 내용 추가하기
		} else if (target.equals("insertOk")) {
			result = new InsertOkController().execute(req, resp);
//		기본 이력서 내용 업데이트 하기
		} else if (target.equals("updateOk")) {
			result = new UpdateOkController().execute(req, resp);
		}
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}