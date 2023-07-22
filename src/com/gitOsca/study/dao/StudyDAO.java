package com.gitOsca.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gitOsca.study.domain.StudyVO;
import com.gitOsca.studyImage.domain.StudyImageVO;
import com.gitOsca.general.domain.GeneralVO;
import com.gitOsca.job.domain.JobVO;
import com.gitOsca.member.domain.MemberVO;
import com.gitOsca.mybatis.config.MyBatisConfig;
import com.gitOsca.skill.domain.SkillVO;

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
	
	public MemberVO getMiniProfile(Long id) {
		return sqlSession.selectOne("study.getMiniProfile", id);
	}
	
	public List<StudyVO> getListInfoForStudyVO() {
		return sqlSession.selectList("study.getListInfoForStudyVO");
	}
	
	public JobVO getListInfoForJobVO(Long id) {
		return sqlSession.selectOne("study.getListInfoForJobVO", id);
	}
	
	public List<SkillVO> getListInfoForSkillVO(Long id) {
		return sqlSession.selectList("study.getListInfoForSkillVO", id);
	}
	
	public StudyImageVO getListInfoForStudyImageVO(Long id) {
		return sqlSession.selectOne("study.getListInfoForStudyImageVO", id);
	}
	
	public GeneralVO getListInfoForGeneralVO(Long id) {
		return sqlSession.selectOne("study.getListInfoForGeneralVO", id);
	}
	
	public void postStudies(StudyVO studyVO) {
		sqlSession.insert("study.postStudies", studyVO);
	}
	
	public int countApplicants(Long id) {
		return sqlSession.selectOne("study.countApplicants", id);
	}
}

