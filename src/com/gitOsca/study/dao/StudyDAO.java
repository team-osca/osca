package com.gitOsca.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.study.domain.StudyVO;
import com.gitOsca.mybatis.config.MyBatisConfig;

public class StudyDAO {
	public SqlSession sqlSession;
	
	public StudyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public StudyVO getStudyDetail(Long id) {
		return sqlSession.selectOne("study.getStudyDetail", id);
	}
	
	public List<StudyVO>  getAppliedStudies(Long id) {
		return sqlSession.selectList("study.getAppliedStudies", id);
	}
	
	public List<StudyVO>  getOpenedStudies(Long id) {
		return sqlSession.selectList("study.getOpenedStudies", id);
	}
	
	public List<StudyVO> getWholeStudies(Long id) {
		return sqlSession.selectList("study.getWholeStudies", id);
	}
	
	
	
}

