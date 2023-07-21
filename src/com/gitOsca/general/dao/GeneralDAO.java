package com.gitOsca.general.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.general.domain.GeneralVO;
import com.gitOsca.general.domain.GeneralDTO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class GeneralDAO {
	public SqlSession sqlSession;
	
	public GeneralDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	기본 이력서 부분에 필요한 내용 가져오기
	public Optional<GeneralDTO> findById(Long memberId){
		return Optional.ofNullable(sqlSession.selectOne("general.findById", memberId));
	}

//	기본 이력서 내용 추가하기
	public void insert(GeneralVO generalVO) {
		sqlSession.insert("general.insert", generalVO);
	}
	
//	기본 이력서 내용 업데이트 하기
	public void update(GeneralVO generalVO) {
		sqlSession.update("general.update", generalVO);
	}
}

