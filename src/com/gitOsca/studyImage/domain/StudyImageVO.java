package com.gitOsca.studyImage.domain;

public class StudyImageVO {
	private Long studyImageId;
	private Long studyImageFileName;
	private Long studyImageFileOriginalName;
	
	public StudyImageVO() {;}

	public Long getStudyImageId() {
		return studyImageId;
	}

	public void setStudyImageId(Long studyImageId) {
		this.studyImageId = studyImageId;
	}

	public Long getStudyImageFileName() {
		return studyImageFileName;
	}

	public void setStudyImageFileName(Long studyImageFileName) {
		this.studyImageFileName = studyImageFileName;
	}

	public Long getStudyImageFileOriginalName() {
		return studyImageFileOriginalName;
	}

	public void setStudyImageFileOriginalName(Long studyImageFileOriginalName) {
		this.studyImageFileOriginalName = studyImageFileOriginalName;
	}

	@Override
	public String toString() {
		return "StudyImageVO [studyImageId=" + studyImageId + ", studyImageFileName=" + studyImageFileName
				+ ", studyImageFileOriginalName=" + studyImageFileOriginalName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((studyImageId == null) ? 0 : studyImageId.hashCode());
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
		StudyImageVO other = (StudyImageVO) obj;
		if (studyImageId == null) {
			if (other.studyImageId != null)
				return false;
		} else if (!studyImageId.equals(other.studyImageId))
			return false;
		return true;
	}
	
	
}
