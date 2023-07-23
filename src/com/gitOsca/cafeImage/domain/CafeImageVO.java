package com.gitOsca.cafeImage.domain;

public class CafeImageVO {
	private Long id;
	private String cafeFileName;
	private String cafeFileOriginalName;
	private Long cafeId;

	public CafeImageVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCafeFileName() {
		return cafeFileName;
	}

	public void setCafeFileName(String cafeFileName) {
		this.cafeFileName = cafeFileName;
	}

	public String getCafeFileOriginalName() {
		return cafeFileOriginalName;
	}

	public void setCafeFileOriginalName(String cafeFileOriginalName) {
		this.cafeFileOriginalName = cafeFileOriginalName;
	}

	public Long getCafeId() {
		return cafeId;
	}

	public void setCafeId(Long cafeId) {
		this.cafeId = cafeId;
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
		CafeImageVO other = (CafeImageVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CafeImageVO [id=" + id + ", cafeFileName=" + cafeFileName + ", cafeFileOriginalName="
				+ cafeFileOriginalName + ", cafeId=" + cafeId + "]";
	}

	
}
