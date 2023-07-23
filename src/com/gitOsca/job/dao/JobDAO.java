package com.gitOsca.job.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.job.domain.JobVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class JobDAO {
	public SqlSession sqlSession;
	
	public JobDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	기본 이력서 부분에 필요한 내용 가져오기
	public Optional<JobVO> findById(Long id){
		return Optional.ofNullable(sqlSession.selectOne("job.findById", id));
	}
	
////	기본 이력서 내용 추가하기
//	public void insert(GeneralVO generalVO) {
//		sqlSession.insert("general.insert", generalVO);
//	}
	
//	기본 이력서 내용 업데이트 하기
	public void update(JobVO jobVO) {
		sqlSession.update("job.update", jobVO);
	}
}

