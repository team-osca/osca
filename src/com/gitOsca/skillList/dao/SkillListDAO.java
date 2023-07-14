package com.gitOsca.skillList.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class SkillListDAO {
	public SqlSession sqlSession;
	
	public SkillListDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}
