package cfs.model.dto.project;

import java.util.List;

/**
 * 프로젝트 정보 - DTO
 * 담당 : 박지민
 * 최근 수정 날짜 : 2017-10-30
 */
public class ProjectDTO {
	private int no;							// 프로젝트 고유번호
	private String subject;					// 프로젝트 제목
	private String writer;					// 프로젝트 작성자
	private String mainImage;			// 프로젝트 대표 이미지 (업로드 된 이미지의 시스템 이름)
	private String video;					// 동영상 (작성된 url 경로)
	private String contents;				// 프로젝트 내용
	private String category;				// 프로젝트 카테고리
	private String summary;				// 프로젝트 요약
	private String startDate;				// 프로젝트 시작날짜 (날짜 형식 : yyyy-mm-dd)
	private String endDate;				// 프로젝트 마감날짜 (날짜 형식 : yyyy-mm-dd)
	private int targetAmount	;			// 프로젝트 목표 금액
	private int price;							// 프로젝트 모인 금액
	private int review;						// 프로젝트 검토 여부 - 0 : 미검토(기본값) / 1 : 검토요청 / 2 : 검토완료
	
	// 기본 생성자
	public ProjectDTO() {}
	
	// 프로젝트 생성
	public ProjectDTO(String subject, String writer, String mainImage, String video, String contents,
			String category, String summary, String endDate, int targetAmount) {
		this.subject = subject;
		this.writer = writer;
		this.mainImage = mainImage;
		this.video = video;
		this.contents = contents;
		this.category = category;
		this.summary = summary;
		this.endDate = endDate;
		this.targetAmount = targetAmount;
	}
	
	// 프로젝트 수정 및 수정요청
	public ProjectDTO(int no, String subject, String mainImage, String video, String contents,
			String category, String summary, String endDate,int review) {
		this.no = no;
		this.subject = subject;
		this.mainImage = mainImage;
		this.video = video;
		this.contents = contents;
		this.category = category;
		this.summary = summary;
		this.endDate = endDate;
		this.review = review;
	}
	
	// 프로젝트 모든 정보
	public ProjectDTO(int no, String subject, String writer, String mainImage, String video, String contents,
			String category, String summary, String startDate, String endDate, int targetAmount, int price, int review) {
		this(no, subject, mainImage, video, contents, category, summary, endDate, review);
		
		this.writer = writer;
		this.startDate = startDate;
		this.targetAmount = targetAmount;
		this.price = price;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getMainImage() {
		return mainImage;
	}

	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getTargetAmount() {
		return targetAmount;
	}

	public void setTargetAmount(int targetAmount) {
		this.targetAmount = targetAmount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getReview() {
		return review;
	}

	public void setReview(int review) {
		this.review = review;
	}
}