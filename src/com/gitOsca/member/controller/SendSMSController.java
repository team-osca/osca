package com.gitOsca.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.gitOsca.Action;
import com.gitOsca.Result;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class SendSMSController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		final int MIN = 1000;
		final int MAX = 9999;
		String randomNumber = Integer.toString((int) (Math.random() * (MAX - MIN + 1)) + MIN);
		out.print(randomNumber);

//		String phoneNumber = req.getParameter("phoneNumber").replace("-", "").trim();
//		String api_key = "NCSLHZBRFR5JZIGX"; 
//		String api_secret = "TMWIDCSYTTIWBNNP4PDQFBM2S5T2F8HY";
//		Message coolsms = new Message(api_key, api_secret);
//		// 4 params(to, from, type, text) are mandatory. must be filled
//		HashMap<String, String> params = new HashMap<String, String>();
//		params.put("to", phoneNumber);
//		params.put("from", "01076501147");
//		params.put("type", "SMS");
//		params.put("text", "오!스카의 인증번호는 " + randomNumber + " 입니다.");
//		params.put("app_version", "test app 1.2"); // application name and version
//
//		try {
//			JSONObject obj = (JSONObject) coolsms.send(params);
//			System.out.println(obj.toString());
//		} catch (CoolsmsException e) {
//			System.out.println(e.getMessage());
//			System.out.println(e.getCode());
//		}
		return null;
	}
}
