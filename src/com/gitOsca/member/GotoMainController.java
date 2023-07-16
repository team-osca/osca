package com.gitOsca.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;

public class GotoMainController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		// sign_infind_account.member 를 메인 페이지 제작 완료 시 메인 경로로 변경
		result.setPath(req.getContextPath() + "sign_infind_account.member");
		result.setRedirect(true);;
		return result;
	}

}
