package com.gitOsca.studyApplicant.domain;

public class StudyApplicantVO {
	private Long studyApplicantId;

	public StudyApplicantVO(Long studyApplicantId) {
		super();
		this.studyApplicantId = studyApplicantId;
	}

	public Long getStudyApplicantId() {
		return studyApplicantId;
	}

	public void setStudyApplicantId(Long studyApplicantId) {
		this.studyApplicantId = studyApplicantId;
	}

	@Override
	public String toString() {
		return "StudyApplicantVO [studyApplicantId=" + studyApplicantId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((studyApplicantId == null) ? 0 : studyApplicantId.hashCode());
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
		if (studyApplicantId == null) {
			if (other.studyApplicantId != null)
				return false;
		} else if (!studyApplicantId.equals(other.studyApplicantId))
			return false;
		return true;
	}
}
