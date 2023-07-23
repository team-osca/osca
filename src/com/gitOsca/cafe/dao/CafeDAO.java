package com.gitOsca.cafe.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.cafe.domain.CafeVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class CafeDAO {
	public SqlSession sqlSession;
	
	public CafeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<CafeVO> findAllByLocation(String location){
		return sqlSession.selectList("cafe.findAllByLocation", location);
	}
	
	public List<CafeVO> findAllByStatus(String status){
		return sqlSession.selectList("cafe.findAllByStatus", status);
	}
	
	public int getNumberOfAllCafes(){
		return sqlSession.selectOne("cafe.getNumberOfAllCafes");
	}

	public int getNumberOfAllCafesByStatus(String status){
		return sqlSession.selectOne("cafe.getNumberOfAllCafesByStatus", status);
	}
	

	public Optional<CafeVO> findById(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("cafe.findById", id));
	}
	
	
}
