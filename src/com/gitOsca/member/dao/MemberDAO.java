package com.gitOsca.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.member.domain.MemberVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	이메일 중복검사
	public String selectEmail(String memberEmail) {
		return sqlSession.selectOne("member.selectEmail", memberEmail);
	}
	
//	회원가입
	public void insert(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	
//	로그인
	public Long login(String memberEmail, String memberPassword) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberEmail", memberEmail);
		loginMap.put("memberPassword", memberPassword);
		
		return sqlSession.selectOne("member.login", loginMap);
	}
	
}

