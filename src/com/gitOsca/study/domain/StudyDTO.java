package com.gitOsca.study.domain;

import com.gitOsca.member.domain.MemberVO;

public class StudyDTO {
	private Long Id;
	private String studyTitle;
	private String studyContents;
	private String studyLocation;
	private String studyContactEmail;
	private String studyContactPhonenumber;
	private String studyRegistDate;
	private String studyUpdateDate;
	private String studyStatus;
	private int studyTotal;
	private Long generalId;
	private MemberVO memberVO;
	
	
	public StudyDTO() {;}
	
	public StudyDTO(StudyVO studyVO) {
		Id = studyVO.getId();
		this.studyTitle = studyVO.getStudyTitle();
		this.studyContents = studyVO.getStudyContents();
		this.studyLocation = studyVO.getStudyLocation();
		this.studyContactEmail = studyVO.getStudyContactEmail();
		this.studyContactPhonenumber = studyVO.getStudyContactPhonenumber();
		this.studyRegistDate = studyVO.getStudyRegistDate();
		this.studyUpdateDate = studyVO.getStudyUpdateDate();
		this.studyStatus = studyVO.getStudyStatus();
		this.studyTotal = studyVO.getStudyTotal();
		this.generalId = studyVO.getMemberId();
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
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
	public String getStudyStatus() {
		return studyStatus;
	}
	public void setStudyStatus(String studyStatus) {
		this.studyStatus = studyStatus;
	}
	public int getStudyTotal() {
		return studyTotal;
	}
	public void setStudyTotal(int studyTotal) {
		this.studyTotal = studyTotal;
	}
	public Long getGeneralId() {
		return generalId;
	}
	public void setGeneralId(Long generalId) {
		this.generalId = generalId;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	@Override
	public String toString() {
		return "StudyDTO [Id=" + Id + ", studyTitle=" + studyTitle + ", studyContents=" + studyContents
				+ ", studyLocation=" + studyLocation + ", studyContactEmail=" + studyContactEmail
				+ ", studyContactPhonenumber=" + studyContactPhonenumber + ", studyRegistDate=" + studyRegistDate
				+ ", studyUpdateDate=" + studyUpdateDate + ", studyStatus=" + studyStatus + ", studyTotal=" + studyTotal
				+ ", generalId=" + generalId + ", memberVO=" + memberVO + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((Id == null) ? 0 : Id.hashCode());
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
		StudyDTO other = (StudyDTO) obj;
		if (Id == null) {
			if (other.Id != null)
				return false;
		} else if (!Id.equals(other.Id))
			return false;
		return true;
	}
	
	
}
