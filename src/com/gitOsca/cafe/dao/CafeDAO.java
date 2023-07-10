package com.gitOsca.cafe.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CafeDAO {
	public SqlSession sqlSession;
	
	public CafeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
