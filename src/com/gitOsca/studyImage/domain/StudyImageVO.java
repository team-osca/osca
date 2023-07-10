package com.gitOsca.studyImage.domain;

public class StudyImageVO {
	private Long id;
	private String studyImageFileName;
	private String studyImageFileOriginalName;
	private Long studyId;

	public StudyImageVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStudyImageFileName() {
		return studyImageFileName;
	}

	public void setStudyImageFileName(String studyImageFileName) {
		this.studyImageFileName = studyImageFileName;
	}

	public String getStudyImageFileOriginalName() {
		return studyImageFileOriginalName;
	}

	public void setStudyImageFileOriginalName(String studyImageFileOriginalName) {
		this.studyImageFileOriginalName = studyImageFileOriginalName;
	}

	public Long getStudyId() {
		return studyId;
	}

	public void setStudyId(Long studyId) {
		this.studyId = studyId;
	}

	@Override
	public String toString() {
		return "StudyImageVO [id=" + id + ", studyImageFileName=" + studyImageFileName + ", studyImageFileOriginalName="
				+ studyImageFileOriginalName + ", studyId=" + studyId + "]";
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
		StudyImageVO other = (StudyImageVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	
}
