package com.gitOsca.studyImage.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class StudyImageDAO {
	public SqlSession sqlSession;
	
	public StudyImageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
