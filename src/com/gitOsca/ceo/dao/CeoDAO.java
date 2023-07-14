package com.gitOsca.ceo.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CeoDAO {
	public SqlSession sqlSession;
	
	public CeoDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}

