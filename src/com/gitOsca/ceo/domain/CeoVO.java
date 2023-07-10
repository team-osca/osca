package com.gitOsca.ceo.domain;

public class CeoVO {
	private Long ceoId;
	private String ceoBusinessNumber;

	public CeoVO() {;}

	public Long getCeoId() {
		return ceoId;
	}

	public void setCeoId(Long ceoId) {
		this.ceoId = ceoId;
	}

	public String getCeoBusinessNumber() {
		return ceoBusinessNumber;
	}

	public void setCeoBusinessNumber(String ceoBusinessNumber) {
		this.ceoBusinessNumber = ceoBusinessNumber;
	}

	@Override
	public String toString() {
		return "CeoVO [ceoId=" + ceoId + ", ceoBusinessNumber=" + ceoBusinessNumber + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ceoId == null) ? 0 : ceoId.hashCode());
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
		CeoVO other = (CeoVO) obj;
		if (ceoId == null) {
			if (other.ceoId != null)
				return false;
		} else if (!ceoId.equals(other.ceoId))
			return false;
		return true;
	}
}
