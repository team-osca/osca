package com.gitOsca.cafe.domain;

import java.util.List;

import com.gitOsca.cafeImage.domain.CafeImageVO;
import com.gitOsca.ceo.domain.CeoVO;

public class CafeDTO {
	private Long Id;
	private String cafeTitle;
	private String cafeContents;
	private String cafeOpenTime;
	private String cafeEndTime;
	private String cafeUpdateDate;
	private Long ceoId;
	private CeoVO ceoVO;
	private List<CafeImageVO> cafeImages;

	public CafeDTO() {;}
	
	public CafeDTO(CafeVO cafeVO) {
		Id = cafeVO.getId();
		this.cafeTitle = cafeVO.getCafeTitle();
		this.cafeContents = cafeVO.getCafeContents();
		this.cafeOpenTime = cafeVO.getCafeOpenTime();
		this.cafeEndTime = cafeVO.getCafeEndTime();
		this.cafeUpdateDate = cafeVO.getCafeUpdateDate();
		this.ceoId = cafeVO.getCeoId();
	}

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

	public CeoVO getCeoVO() {
		return ceoVO;
	}

	public void setCeoVO(CeoVO ceoVO) {
		this.ceoVO = ceoVO;
	}

	public List<CafeImageVO> getCafeImages() {
		return cafeImages;
	}

	public void setCafeImages(List<CafeImageVO> cafeImages) {
		this.cafeImages = cafeImages;
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
		CafeDTO other = (CafeDTO) obj;
		if (Id == null) {
			if (other.Id != null)
				return false;
		} else if (!Id.equals(other.Id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CafeDTO [Id=" + Id + ", cafeTitle=" + cafeTitle + ", cafeContents=" + cafeContents + ", cafeOpenTime="
				+ cafeOpenTime + ", cafeEndTime=" + cafeEndTime + ", cafeUpdateDate=" + cafeUpdateDate + ", ceoId=" 
				+ ceoId + ", ceoVO=" + ceoVO + ", cafeImages=" + cafeImages + "]";
	}

}
