package com.gitOsca.member.controller;

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
		// sign_infind_account.member �� ���� ������ ���� �Ϸ� �� ���� ��η� ����
		result.setPath(req.getContextPath() + "sign_infind_account.member");
		result.setRedirect(true);;
		return result;
	}

}
