package com.gitOsca.study.domain;

import java.util.List;

import com.gitOsca.general.domain.GeneralVO;
import com.gitOsca.job.domain.JobVO;
import com.gitOsca.skill.domain.SkillVO;
import com.gitOsca.studyImage.domain.StudyImageVO;

public class StudyListDTO {
	private StudyVO studyVO;
	private GeneralVO generalVO;
	private JobVO jobVO;
	private List<SkillVO> skillVO;
	private StudyImageVO studyImageVO;
	private int numberOfApplicants;
	
	public StudyListDTO() {;}

	public StudyListDTO(StudyVO studyVO, GeneralVO generalVO, JobVO jobVO, List<SkillVO> skillVO,
			StudyImageVO studyImageVO, int numberOfApplicants) {
		this.studyVO = studyVO;
		this.generalVO = generalVO;
		this.jobVO = jobVO;
		this.skillVO = skillVO;
		this.studyImageVO = studyImageVO;
		this.numberOfApplicants = numberOfApplicants;
	}

	public StudyVO getStudyVO() {
		return studyVO;
	}

	public void setStudyVO(StudyVO studyVO) {
		this.studyVO = studyVO;
	}

	public GeneralVO getGeneralVO() {
		return generalVO;
	}

	public void setGeneralVO(GeneralVO generalVO) {
		this.generalVO = generalVO;
	}

	public JobVO getJobVO() {
		return jobVO;
	}

	public void setJobVO(JobVO jobVO) {
		this.jobVO = jobVO;
	}

	public List<SkillVO> getSkillVO() {
		return skillVO;
	}

	public void setSkillVO(List<SkillVO> skillVO) {
		this.skillVO = skillVO;
	}

	public StudyImageVO getStudyImageVO() {
		return studyImageVO;
	}

	public void setStudyImageVO(StudyImageVO studyImageVO) {
		this.studyImageVO = studyImageVO;
	}
	

	public int getNumberOfApplicants() {
		return numberOfApplicants;
	}

	public void setNumberOfApplicants(int numberOfApplicants) {
		this.numberOfApplicants = numberOfApplicants;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((studyVO == null) ? 0 : studyVO.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		StudyListDTO other = (StudyListDTO) obj;
		if (studyVO == null) {
			if (other.studyVO != null)
				return false;
		} else if (!studyVO.equals(other.studyVO))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "StudyListDTO [studyVO=" + studyVO + ", generalVO=" + generalVO + ", jobVO=" + jobVO + ", skillVO="
				+ skillVO + ", studyImageVO=" + studyImageVO + ", numberOfApplicants=" + numberOfApplicants + "]";
	}

	
	
	
	
}
