package com.gitOsca.member.dao;

import java.util.HashMap;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.member.domain.MemberVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;

	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	 // ---------------------------- 김동엽 -------------------------------------
		// 계정 찾기 (이메일을 반환)
		public String selectAccount(String phoneNumber) {
			return sqlSession.selectOne("member.selectAccount", phoneNumber);
		}

		// 사용자 이름 찾기
		public String selectUserName(String eMail) {
			return sqlSession.selectOne("member.selectUserName", eMail);
		}

		public void updatePassword(HashMap<String, String> map) {
			sqlSession.update("member.updatePassword", map);
		}
		
	// ---------------------------- 김동엽 -------------------------------------
	
	// ---------------------------- 정유진 -------------------------------------
//	아이디로 member 내용 찾기
	public Optional<MemberVO> findById(Long id){
		return Optional.ofNullable(sqlSession.selectOne("member.findById", id));
	}
	
//	이름 수정하기
	public void update(MemberVO memberVO) {
		sqlSession.update("member.update", memberVO);
	}
	
//	회원 탈퇴하기
	public void delete(MemberVO memberVO) {
		sqlSession.delete("member.delete", memberVO);
	}
	// ---------------------------- 선희원 -------------------------------------
//	이메일 중복검사
	public String selectEmail(String memberEmail) {
		return sqlSession.selectOne("member.selectEmail", memberEmail);
	}
//	로그인
	public Long login(String memberEmail, String memberPassword) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberEmail", memberEmail);
		loginMap.put("memberPassword", memberPassword);
		return sqlSession.selectOne("member.login", loginMap);
	}
// 로그인시 회원 유형 확인
	public String findMemberRoleById(Long memberId) {
	    return sqlSession.selectOne("member.findMemberRoleById", memberId);
	}
//	회원가입
	public void insert(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	
	// ---------------------------- 선희원 -------------------------------------
}
