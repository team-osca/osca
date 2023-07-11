package com.gitOsca.studyApplicant.domain;

public class StudyApplicantVO {
	private Long id;
	private Long studyApplicantId;
	private Long studyId;

	public StudyApplicantVO() {;}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getStudyApplicantId() {
		return studyApplicantId;
	}

	public void setStudyApplicantId(Long studyApplicantId) {
		this.studyApplicantId = studyApplicantId;
	}
	
	public Long getStudyId() {
		return studyId;
	}

	public void setStudyId(Long studyId) {
		this.studyId = studyId;
	}
	
	@Override
	public String toString() {
		return "StudyApplicantVO [id=" + id + ", studyApplicantId=" + studyApplicantId + ", studyId=" + studyId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		StudyApplicantVO other = (StudyApplicantVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	
}
