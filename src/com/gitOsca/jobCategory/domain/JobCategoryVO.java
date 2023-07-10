package com.gitOsca.jobCategory.domain;

public class JobCategoryVO {
	private Long id;
	private String job;
	private String jobFieldCategory;
	
	public JobCategoryVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getJobFieldCategory() {
		return jobFieldCategory;
	}

	public void setJobFieldCategory(String jobFieldCategory) {
		this.jobFieldCategory = jobFieldCategory;
	}

	@Override
	public String toString() {
		return "JobCategoryVO [id=" + id + ", job=" + job + ", jobFieldCategory=" + jobFieldCategory + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((job == null) ? 0 : job.hashCode());
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
		JobCategoryVO other = (JobCategoryVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (job == null) {
			if (other.job != null)
				return false;
		} else if (!job.equals(other.job))
			return false;
		return true;
	}
}
