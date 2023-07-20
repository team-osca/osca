package com.gitOsca.cafe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.cafe.domain.CafeVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CafeDAO {
	public SqlSession sqlSession;
	
	public CafeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<CafeVO> findAllByLocation(String location){
		return sqlSession.selectList("cafe.findAll", location);
	}
}
