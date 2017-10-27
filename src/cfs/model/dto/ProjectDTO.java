package cfs.model.dto;

/**
 * ������Ʈ ���� <br />
 * ��� : ������
 */
public class ProjectDTO { // ProjectDTO start
	private int no;				// ������ȣ
	private String id;				// ���̵�
	private String subject;		// ����
	private String img;			// ��ǥ �̹���
	private String context;		// ����
	private String category;	// ī�װ�
	private String url;			// ���� ��ũ
	private String avi;			// ������
	private String startDate;	// ���� ��¥
	private String lastDate;	// ���� ��¥
	private int check;			// ���� ���� (0 : ����ȵ�, 1 : �����)
	private int price;				// ���� �Ŀ���
	private int targerPrice;	// �Ŀ��� ��ǥ
	
	/**
	 * �⺻ ������
	 */
	public ProjectDTO() {
		// �⺻ ������
	}
	
	/**
	 * ������Ʈ ������ �����ͺ��̽��� �߰��ϱ� ���� ������
	 * @param no ������ȣ
	 * @param id ���̵�
	 * @param subject ����
	 * @param img ��ǥ �̹���
	 * @param context ����
	 * @param category ī�װ�
	 * @param url ���� ��ũ
	 * @param avi ������
	 * @param startDate ���� ��¥
	 * @param lastDate ���� ��¥
	 * @param check ���� ���� (0 : ����ȵ�, 1 : �����)
	 * @param price ���� �Ŀ���
	 * @param targerPrice �Ŀ��� ��ǥ
	 */
	public ProjectDTO(int no, String id, String subject, String img, String context, String category, String url,
			String avi, String startDate, String lastDate, int check, int price, int targerPrice) { // ProjectDTO(...) start
		this.no = no;						// ������ȣ
		this.id = id;							// ���̵�
		this.subject = subject;			// ����
		this.img = img;					// ��ǥ �̹���
		this.context = context;			// ����
		this.category = category;		// ī�װ�
		this.url = url;						// ���� ��ũ
		this.avi = avi;						// ������
		this.startDate = startDate;		// ���� ��¥
		this.lastDate = lastDate;			// ���� ��¥
		this.check = check;				// ���� ���� (0 : ����ȵ�, 1 : �����)
		this.price = price;					// ���� �Ŀ���
		this.targerPrice = targerPrice;	// �Ŀ��� ��ǥ
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
