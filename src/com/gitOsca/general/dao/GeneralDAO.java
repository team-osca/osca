package com.gitOsca.general.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class GeneralDAO {
	public SqlSession sqlSession;
	
	public GeneralDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}

