package com.gitOsca.cafe.domain;

public class CafeVO {
	private Long Id;
	private String cafeTitle;
	private String cafeContents;
	private String cafeOpenTime;
	private String cafeEndTime;
	private String cafeRegistDate;
	private String cafeUpdateDate;
	private Long ceoId;
	
	public CafeVO() {;}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public String getCafeTitle() {
		return cafeTitle;
	}

	public void setCafeTitle(String cafeTitle) {
		this.cafeTitle = cafeTitle;
	}

	public String getCafeContents() {
		return cafeContents;
	}

	public void setCafeContents(String cafeContents) {
		this.cafeContents = cafeContents;
	}

	public String getCafeOpenTime() {
		return cafeOpenTime;
	}

	public void setCafeOpenTime(String cafeOpenTime) {
		this.cafeOpenTime = cafeOpenTime;
	}

	public String getCafeEndTime() {
		return cafeEndTime;
	}

	public void setCafeEndTime(String cafeEndTime) {
		this.cafeEndTime = cafeEndTime;
	}

	public String getCafeRegistDate() {
		return cafeRegistDate;
	}

	public void setCafeRegistDate(String cafeRegistDate) {
		this.cafeRegistDate = cafeRegistDate;
	}

	public String getCafeUpdateDate() {
		return cafeUpdateDate;
	}

	public void setCafeUpdateDate(String cafeUpdateDate) {
		this.cafeUpdateDate = cafeUpdateDate;
	}

	public Long getCeoId() {
		return ceoId;
	}

	public void setCeoId(Long ceoId) {
		this.ceoId = ceoId;
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
		CafeVO other = (CafeVO) obj;
		if (Id == null) {
			if (other.Id != null)
				return false;
		} else if (!Id.equals(other.Id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CafeVO [Id=" + Id + ", cafeTitle=" + cafeTitle + ", cafeContents=" + cafeContents + ", cafeOpenTime="
				+ cafeOpenTime + ", cafeEndTime=" + cafeEndTime + ", cafeRegistDate=" + cafeRegistDate
				+ ", cafeUpdateDate=" + cafeUpdateDate + ", ceoId=" + ceoId + "]";
	}

	
}
