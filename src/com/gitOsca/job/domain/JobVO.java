package com.gitOsca.job.domain;

public class JobVO {
	private Long id;
	private Long generalId;
	private String jobFieldCategory;
	private String jobCategoryJob;
	
	public JobVO() {;}

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

	public String getJobFieldCategory() {
		return jobFieldCategory;
	}

	public void setJobFieldCategory(String jobFieldCategory) {
		this.jobFieldCategory = jobFieldCategory;
	}

	public String getJobCategoryJob() {
		return jobCategoryJob;
	}

	public void setJobCategoryJob(String jobCategoryJob) {
		this.jobCategoryJob = jobCategoryJob;
	}

	@Override
	public String toString() {
		return "JobVO [id=" + id + ", generalId=" + generalId + ", jobFieldCategory=" + jobFieldCategory
				+ ", jobCategoryJob=" + jobCategoryJob + "]";
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
		JobVO other = (JobVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	
	
	
}
