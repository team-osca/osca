package com.gitOsca.skill.domain;

public class SkillVO {
	private Long id;
	private Long generalId;
	private Long studyId;
	private String skillListSkill;
	
	public SkillVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getGeneralId() {
		return generalId;
	}

	public void setGeneralId(Long generalId) {
		this.generalId = generalId;
	}

	public Long getStudyId() {
		return studyId;
	}

	public void setStudyId(Long studyId) {
		this.studyId = studyId;
	}

	public String getSkillListSkill() {
		return skillListSkill;
	}

	public void setSkillListSkill(String skillListSkill) {
		this.skillListSkill = skillListSkill;
	}

	@Override
	public String toString() {
		return "SkillVO [id=" + id + ", generalId=" + generalId + ", studyId=" + studyId + ", skillListSkill="
				+ skillListSkill + "]";
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
		SkillVO other = (SkillVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	
	

}
