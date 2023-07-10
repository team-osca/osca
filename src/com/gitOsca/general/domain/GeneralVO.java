package com.gitOsca.general.domain;

public class GeneralVO {
	private Long memberId;
	private String generalUniversity;
	private String generalCompany;
	private String generalWorkDateBegin;
	private String generalWorkDateEnd;
	private String generalIntrodution;
	private String generalCareer;
	private Long generalSalary;
	
	public GeneralVO() {;}

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

	public String getGeneralIntrodution() {
		return generalIntrodution;
	}

	public void setGeneralIntrodution(String generalIntrodution) {
		this.generalIntrodution = generalIntrodution;
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

	@Override
	public String toString() {
		return "GeneralVO [memberId=" + memberId + ", generalUniversity=" + generalUniversity + ", generalCompany="
				+ generalCompany + ", generalWorkDateBegin=" + generalWorkDateBegin + ", generalWorkDateEnd="
				+ generalWorkDateEnd + ", generalIntrodution=" + generalIntrodution + ", generalCareer=" + generalCareer
				+ ", generalSalary=" + generalSalary + "]";
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
		GeneralVO other = (GeneralVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
}
