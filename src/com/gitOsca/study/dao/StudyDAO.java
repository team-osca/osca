package com.gitOsca.study.dao;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.study.domain.StudyVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class StudyDAO {
	public SqlSession sqlSession;
	
	public StudyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public StudyVO getStudyDetail(Long id) {
		return sqlSession.selectOne("study.getStudyDetail", id);
	}
	
}

