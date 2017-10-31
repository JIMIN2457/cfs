package cfs.model.dto.user;

/**
 * ���� ���� - DTO
 * ��� : ������
 * �ֱ� ���� ��¥ : 2017-10-30
 */
public class UserDTO {
	private int no;				// ���� ������ȣ
	private String name;		// ���� �̸�
	private String id;				// ���� ���̵�
	private String email;		// ���� �̸���
	private String password;	// ���� ��й�ȣ
	private String joinDate;	//	���� ���Գ�¥ (��¥ ���� : yyyy-mm-dd)
	
	// �⺻ ������
	public UserDTO() {}
	
	// ���� ���̵� ã��
	public UserDTO(String name, String email) {
		this.name = name;	// ���� �̸�
		this.email = email;	// ���� �̸���
	}

	// ���� ��й�ȣ ã��
	public UserDTO(String name, String id, String email) {
		this(name, email);
		
		this.id = id;	// ���� ���̵�
	}
	
	// ���� ȸ������ �� ��������
	public UserDTO(String name, String id, String email, String password) {
		this(name, id, email);
		
		this.password = password;	// ���� ��й�ȣ
	}
	
	// ������ ��� ����
	public UserDTO(int no, String name, String id, String email, String password, String joinDate) {
		this(name, id, email, password);
		
		this.no = no;					// ���� ������ȣ
		this.joinDate = joinDate;	// ���� ���Գ�¥
	}

	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
}
