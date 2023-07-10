package com.gitOsca.studyApplicant.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class StudyApplicantDAO {
	public SqlSession sqlSession;
	
	public StudyApplicantDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
