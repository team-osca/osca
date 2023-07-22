package com.gitOsca.member.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gitOsca.Action;
import com.gitOsca.Result;
import com.gitOsca.member.dao.MemberDAO;

public class SendEmailOkController extends Result implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// 메일 보내기
		resp.setCharacterEncoding("UTF-8");
		String userEmail = (String) req.getSession().getAttribute("userEmail");
		MemberDAO dao = new MemberDAO();
		String userName = dao.selectUserName(userEmail);
		Result result = new Result();
		req.setAttribute("member_email", userEmail);

		// null 이거나 빈 문자열이면 비밀번호 입력 페이지로 이동
		if (userEmail == null || userEmail == "") {
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "password.member");
			return result;
		}
		// 파리미터가 잘 전달 되었다면
		
		// 메일 인코딩
		final String bodyEncoding = "UTF-8"; // 콘텐츠 인코딩

		// 원하는 메일 제목 작성
		String subject = "비밀번호 재설정";

		String fromEmail = "cyberkdy2@gmail.com";
		String fromUsername = "오!스카";

		String toEmail = userEmail; // 콤마(,)로 여러개 나열

		final String username = "cyberkdy2@gmail.com";
		final String password = "qnyfmgktsqedxnea";

		// 메일에 출력할 텍스트
		// link 에 쿼리 스트링으로 메일 입력해서 보내는데 url에 노출되니 암호화 해서 보내기
		String link = "http://localhost:8090/reset_password.member?e_mail=" + userEmail;
		
		String html = null;
		StringBuffer sb = new StringBuffer(1100);
		sb.append("<div class=\"txt_mailview\">\n");
		sb.append("<table style=\"color:#333;max-width:640px;margin:0 auto;line-height:1.5;padding:20px;\">");
		sb.append("<tbody><tr>");
		sb.append("<td style=\"line-height:1;\">");
		sb.append("<p style=\"margin:0;padding:0\">\n");
		sb.append("<img src=\"https://s3.ap-northeast-2.amazonaws.com/wanted-public/wanted_icon_160.png?v2\" width=\"80px\">\n");
		sb.append("</p></td></tr><tr>\n");
		sb.append("<td style=\"line-height:1.4;\">\n");
		sb.append("<p style=\"padding:0;margin: 38px 0 0;font-size:30px;font-weight:700;\">\n");
		sb.append("</p></td></tr><tr>\n");
		sb.append("<td style=\"line-height:1.6;\">\n");
		sb.append("<p style=\"padding:0;margin: 20px 0 0;font-size:16px;font-weight:500;\">\n");
		sb.append("안녕하세요 ");
		sb.append(userName); //  사용자 이름
		sb.append("님, 오!스카입니다.<br>");
		sb.append(userEmail); // 사용자 이메일
		sb.append("계정의 비밀번호를 재설정 하려면 하단의 ‘비밀번호 재설정’을 클릭하세요.<br><br>문의사항은 cyberkdy2@gmail.com으로 연락 주시기 바랍니다 :)\n");		
		sb.append("</p></td></tr><tr>\n");
		sb.append("<td style=\"line-height:1;\">\n");
		sb.append("<p style=\"margin:0;padding:45px 0 15px;\">\n");
		sb.append("<a id=\"w-button\" href=\"");
		sb.append(link);
		sb.append("\" style=\"font-size: 16px;font-weight: 700;color: white;text-decoration: none;padding: 13px 40px;border-radius: 50px;background-color: #3366FF;\" rel=\"noopener noreferrer\" target=\"_blank\">\n");
		sb.append("비밀번호 재설정\n");
		sb.append("</a></p></td></tr></div>\n");
		html = sb.toString();

		// 메일 옵션 설정
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");

		try {
			// 메일 서버 인증 계정 설정
			Authenticator auth = new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			};

			// 메일 세션 생성
			Session session = Session.getDefaultInstance(props, auth);

			// 메일 송/수신 옵션 설정
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(fromEmail, fromUsername));
			message.setRecipients(RecipientType.TO, InternetAddress.parse(toEmail, false));
			message.setSubject(subject);
			message.setSentDate(new Date());

			// 메일 콘텐츠 설정
			Multipart mParts = new MimeMultipart();
			MimeBodyPart mTextPart = new MimeBodyPart();
			MimeBodyPart mFilePart = null;

			// 메일 콘텐츠 - 내용
			mTextPart.setText(html, bodyEncoding, "html");
			mParts.addBodyPart(mTextPart);

			// 메일 콘텐츠 설정
			message.setContent(mParts);

			// 메일 발송
			Transport.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 메일 전송 완료 페이지로 이동
		result.setPath("templates/findPassword/findPassword.jsp");		
		return result;
	}

}
