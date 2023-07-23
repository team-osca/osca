package com.gitOsca.ceo.dao;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.ceo.domain.CeoVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CeoDAO {
	public SqlSession sqlSession;
	
	public CeoDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public CeoVO findById(Long id) {
		return sqlSession.selectOne("ceo.findById", id);
	}
	
}

