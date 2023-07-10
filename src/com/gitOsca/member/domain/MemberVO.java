package com.gitOsca.member.domain;

public class MemberVO {
	private Long id;
	private String memberName;
	private String memberEmail;
	private String memberPassword;
	private String memberPhonenumber;
	private String memberProfileImage;
	private String memberProfileOriginalImage;
	private String memberRole;
	private String memberRegistDate;
	private String memberUpdateDate;
	
	public MemberVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberPhonenumber() {
		return memberPhonenumber;
	}

	public void setMemberPhonenumber(String memberPhonenumber) {
		this.memberPhonenumber = memberPhonenumber;
	}

	public String getMemberProfileImage() {
		return memberProfileImage;
	}

	public void setMemberProfileImage(String memberProfileImage) {
		this.memberProfileImage = memberProfileImage;
	}

	public String getMemberProfileOriginalImage() {
		return memberProfileOriginalImage;
	}

	public void setMemberProfileOriginalImage(String memberProfileOriginalImage) {
		this.memberProfileOriginalImage = memberProfileOriginalImage;
	}

	public String getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	public String getMemberRegistDate() {
		return memberRegistDate;
	}

	public void setMemberRegistDate(String memberRegistDate) {
		this.memberRegistDate = memberRegistDate;
	}

	public String getMemberUpdateDate() {
		return memberUpdateDate;
	}

	public void setMemberUpdateDate(String memberUpdateDate) {
		this.memberUpdateDate = memberUpdateDate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", memberName=" + memberName + ", memberEmail=" + memberEmail
				+ ", memberPassword=" + memberPassword + ", memberPhonenumber=" + memberPhonenumber
				+ ", memberProfileImage=" + memberProfileImage + ", memberProfileOriginalImage="
				+ memberProfileOriginalImage + ", memberRole=" + memberRole + ", memberRegistDate=" + memberRegistDate
				+ ", memberUpdateDate=" + memberUpdateDate + "]";
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
		MemberVO other = (MemberVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}	
}
