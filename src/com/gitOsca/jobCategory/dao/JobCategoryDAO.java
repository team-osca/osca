package com.gitOsca.jobCategory.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class JobCategoryDAO {
	public SqlSession sqlSession;
	
	public JobCategoryDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
