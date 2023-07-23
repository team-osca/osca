package com.gitOsca.general.domain;

public class GeneralDTO {
	private Long memberId;
	private String generalUniversity;
	private String generalCompany;
	private String generalIntroduction;
	private String generalWorkDateBegin;
	private String generalWorkDateEnd;
	private String generalCareer;
	private Long generalSalary;
	private Long memberRole;
	
	public GeneralDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getGeneralUniversity() {
		return generalUniversity;
	}

	public void setGeneralUniversity(String generalUniversity) {
		this.generalUniversity = generalUniversity;
	}

	public String getGeneralCompany() {
		return generalCompany;
	}

	public void setGeneralCompany(String generalCompany) {
		this.generalCompany = generalCompany;
	}

	public String getGeneralIntroduction() {
		return generalIntroduction;
	}

	public void setGeneralIntroduction(String generalIntroduction) {
		this.generalIntroduction = generalIntroduction;
	}

	public String getGeneralWorkDateBegin() {
		return generalWorkDateBegin;
	}

	public void setGeneralWorkDateBegin(String generalWorkDateBegin) {
		this.generalWorkDateBegin = generalWorkDateBegin;
	}

	public String getGeneralWorkDateEnd() {
		return generalWorkDateEnd;
	}

	public void setGeneralWorkDateEnd(String generalWorkDateEnd) {
		this.generalWorkDateEnd = generalWorkDateEnd;
	}

	public String getGeneralCareer() {
		return generalCareer;
	}

	public void setGeneralCareer(String generalCareer) {
		this.generalCareer = generalCareer;
	}

	public Long getGeneralSalary() {
		return generalSalary;
	}

	public void setGeneralSalary(Long generalSalary) {
		this.generalSalary = generalSalary;
	}

	public Long getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(Long memberRole) {
		this.memberRole = memberRole;
	}

	@Override
	public String toString() {
		return "GeneralDTO [memberId=" + memberId + ", generalUniversity=" + generalUniversity + ", generalCompany="
				+ generalCompany + ", generalIntroduction=" + generalIntroduction + ", generalWorkDateBegin="
				+ generalWorkDateBegin + ", generalWorkDateEnd=" + generalWorkDateEnd + ", generalCareer="
				+ generalCareer + ", generalSalary=" + generalSalary + ", memberRole=" + memberRole + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		GeneralDTO other = (GeneralDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
}
