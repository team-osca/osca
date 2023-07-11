package com.gitOsca.study.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class StudyDAO {
	public SqlSession sqlSession;
	
	public StudyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}

