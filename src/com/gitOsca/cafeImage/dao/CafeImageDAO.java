package com.gitOsca.cafeImage.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CafeImageDAO {
	public SqlSession sqlSession;
	
	public CafeImageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
