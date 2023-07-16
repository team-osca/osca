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

	// 계정 찾기
	public String selectAccount(String phoneNumber) {
	 return sqlSession.selectOne("member.selectAccount", phoneNumber);
	}
	
//	마이페이지
	public Optional<MemberVO> findById(Long id){
		return Optional.ofNullable(sqlSession.selectOne("member.findById", id));
	}
}

