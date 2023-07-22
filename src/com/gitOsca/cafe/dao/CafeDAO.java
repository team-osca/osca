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
	
<<<<<<< HEAD
	public Optional<CafeVO> findById(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("cafe.findById", id));
	}
=======
	public CafeVO findById(Long id) {
		return sqlSession.selectOne("cafe.findById", id);
	}
	
>>>>>>> cafe/myCafe_list
}
