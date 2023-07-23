package com.gitOsca.cafeImage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.cafeImage.domain.CafeImageVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CafeImageDAO {
	public SqlSession sqlSession;
	
	public CafeImageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<CafeImageVO> findAllById(Long id){
		return sqlSession.selectList("cafeImage.findAllById", id);
	}
}
