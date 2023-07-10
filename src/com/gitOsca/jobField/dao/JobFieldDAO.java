package com.gitOsca.jobField.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class JobFieldDAO {
	public SqlSession sqlSession;
	
	public JobFieldDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}

