package cfs.model.dto;

/**
 * 프로젝트 정보 <br />
 * 담당 : 박지민
 */
public class ProjectDTO { // ProjectDTO start
	private int no;				// 고유번호
	private String id;				// 아이디
	private String subject;		// 제목
	private String img;			// 대표 이미지
	private String context;		// 내용
	private String category;	// 카테고리
	private String url;			// 참고 링크
	private String avi;			// 동영상
	private String startDate;	// 시작 날짜
	private String lastDate;	// 마감 날짜
	private int check;			// 검토 여부 (0 : 검토안됨, 1 : 검토됨)
	private int price;				// 현재 후원금
	private int targerPrice;	// 후원금 목표
	
	/**
	 * 기본 생성자
	 */
	public ProjectDTO() {
		// 기본 생성자
	}
	
	/**
	 * 프로젝트 정보를 데이터베이스에 추가하기 위한 생성자
	 * @param no 고유번호
	 * @param id 아이디
	 * @param subject 제목
	 * @param img 대표 이미지
	 * @param context 내용
	 * @param category 카테고리
	 * @param url 참고 링크
	 * @param avi 동영상
	 * @param startDate 시작 날짜
	 * @param lastDate 마감 날짜
	 * @param check 검토 여부 (0 : 검토안됨, 1 : 검토됨)
	 * @param price 현재 후원금
	 * @param targerPrice 후원금 목표
	 */
	public ProjectDTO(int no, String id, String subject, String img, String context, String category, String url,
			String avi, String startDate, String lastDate, int check, int price, int targerPrice) { // ProjectDTO(...) start
		this.no = no;						// 고유번호
		this.id = id;							// 아이디
		this.subject = subject;			// 제목
		this.img = img;					// 대표 이미지
		this.context = context;			// 내용
		this.category = category;		// 카테고리
		this.url = url;						// 참고 링크
		this.avi = avi;						// 동영상
		this.startDate = startDate;		// 시작 날짜
		this.lastDate = lastDate;			// 마감 날짜
		this.check = check;				// 검토 여부 (0 : 검토안됨, 1 : 검토됨)
		this.price = price;					// 현재 후원금
		this.targerPrice = targerPrice;	// 후원금 목표
	} // ProjectDTO(...) end

	// Getters and Setters start
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getAvi() {
		return avi;
	}

	public void setAvi(String avi) {
		this.avi = avi;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getLastDate() {
		return lastDate;
	}

	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}

	public int getCheck() {
		return check;
	}

	public void setCheck(int check) {
		this.check = check;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTargerPrice() {
		return targerPrice;
	}

	public void setTargerPrice(int targerPrice) {
		this.targerPrice = targerPrice;
	}

	// Getters and Setters end
} // ProjectDTO end
