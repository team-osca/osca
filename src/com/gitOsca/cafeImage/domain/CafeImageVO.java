package com.gitOsca.cafeImage.domain;

public class CafeImageVO {
	private Long cafeImageId;
	private String fileName;
	private String fileOriginalName;
	
	public CafeImageVO() {;}
	
	public Long getCafeImageId() {
		return cafeImageId;
	}

	public void setCafeImageId(Long cafeImageId) {
		this.cafeImageId = cafeImageId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}

	@Override
	public String toString() {
		return "CafeImageVO [cafeImageId=" + cafeImageId + ", fileName=" + fileName + ", fileOriginalName="
				+ fileOriginalName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cafeImageId == null) ? 0 : cafeImageId.hashCode());
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
		if (cafeImageId == null) {
			if (other.cafeImageId != null)
				return false;
		} else if (!cafeImageId.equals(other.cafeImageId))
			return false;
		return true;
	}
}
