package com.gitOsca.skill.dao;

import org.apache.ibatis.session.SqlSession;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class SkillDAO {
	public SqlSession sqlSession;
	
	public SkillDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}

