package cfs.model.dto.project;

import java.util.List;

/**
 * ������Ʈ ���� - DTO
 * ��� : ������
 * �ֱ� ���� ��¥ : 2017-10-30
 */
public class ProjectDTO {
	private int no;							// ������Ʈ ������ȣ
	private String subject;					// ������Ʈ ����
	private String writer;					// ������Ʈ �ۼ���
	private String mainImage;			// ������Ʈ ��ǥ �̹��� (���ε� �� �̹����� �ý��� �̸�)
	private String video;					// ������ (�ۼ��� url ���)
	private String contents;				// ������Ʈ ����
	private String category;				// ������Ʈ ī�װ�
	private String summary;				// ������Ʈ ���
	private String startDate;				// ������Ʈ ���۳�¥ (��¥ ���� : yyyy-mm-dd)
	private String endDate;				// ������Ʈ ������¥ (��¥ ���� : yyyy-mm-dd)
	private int targetAmount	;			// ������Ʈ ��ǥ �ݾ�
	private int price;							// ������Ʈ ���� �ݾ�
	private int review;						// ������Ʈ ���� ���� - 0 : �̰���(�⺻��) / 1 : �����û / 2 : ����Ϸ�
	
	// �⺻ ������
	public ProjectDTO() {}
	
	// ������Ʈ ����
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
	
	// ������Ʈ ���� �� ������û
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
	
	// ������Ʈ ��� ����
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