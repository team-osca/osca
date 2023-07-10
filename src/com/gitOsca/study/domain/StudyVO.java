package com.gitOsca.study.domain;

public class StudyVO {
	private Long studyId;
	private String studyTitle;
	private String studyContents;
	private String studyLocation;
	private String studyContactEmail;
	private String studyContactPhonenumber;
	private String studyRegistDate;
	private String studyUpdateDate;
	
	public StudyVO() {;}

	public Long getStuyYId() {
		return studyId;
	}

	public void setStudyId(Long studyId) {
		this.studyId = studyId;
	}

	public String getStudyTitle() {
		return studyTitle;
	}

	public void setStudyTitle(String studyTitle) {
		this.studyTitle = studyTitle;
	}

	public String getStudyContents() {
		return studyContents;
	}

	public void setStudyContents(String studyContents) {
		this.studyContents = studyContents;
	}

	public String getStudyLocation() {
		return studyLocation;
	}

	public void setStudyLocation(String studyLocation) {
		this.studyLocation = studyLocation;
	}

	public String getStudyContactEmail() {
		return studyContactEmail;
	}

	public void setStudyContactEmail(String studyContactEmail) {
		this.studyContactEmail = studyContactEmail;
	}

	public String getStudyContactPhonenumber() {
		return studyContactPhonenumber;
	}

	public void setStudyContactPhonenumber(String studyContactPhonenumber) {
		this.studyContactPhonenumber = studyContactPhonenumber;
	}

	public String getStudyRegistDate() {
		return studyRegistDate;
	}

	public void setStudyRegistDate(String studyRegistDate) {
		this.studyRegistDate = studyRegistDate;
	}

	public String getStudyUpdateDate() {
		return studyUpdateDate;
	}

	public void setStudyUpdateDate(String studyUpdateDate) {
		this.studyUpdateDate = studyUpdateDate;
	}

	@Override
	public String toString() {
		return "StudyVO [studyId=" + studyId + ", studyTitle=" + studyTitle + ", studyContents=" + studyContents
				+ ", studyLocation=" + studyLocation + ", studyContactEmail=" + studyContactEmail
				+ ", studyContactPhonenumber=" + studyContactPhonenumber + ", studyRegistDate=" + studyRegistDate
				+ ", studyUpdateDate=" + studyUpdateDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((studyId == null) ? 0 : studyId.hashCode());
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
		StudyVO other = (StudyVO) obj;
		if (studyId == null) {
			if (other.studyId != null)
				return false;
		} else if (!studyId.equals(other.studyId))
			return false;
		return true;
	}
	
	
	
	
}
