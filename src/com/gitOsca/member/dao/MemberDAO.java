package com.gitOsca.member.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.member.domain.MemberVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// ���� ã��
	public String selectAccount(String phoneNumber) {
	 return sqlSession.selectOne("member.selectAccount", phoneNumber);
	}
	
//	����������
	public Optional<MemberVO> findById(Long id){
		return Optional.ofNullable(sqlSession.selectOne("member.findById", id));
	}
	
//	이메일 중복검사
	public String selectEmail(String memberEmail) {
		return sqlSession.selectOne("member.selectEmail", memberEmail);
	}
	
}

