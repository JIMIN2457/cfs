package cfs.model.dto;

/**
 * ȸ�� ���� <br />
 * ��� : ������
 */
public class UserDTO { // UserDTO start
	private String id;					// ���̵�
	private String name;			// �̸�
	private String password;		// ��й�ȣ
	private String email;			// �̸���
	private int grade;				// ���� (0 : ����, 1 : ������)
	
	/**
	 * �⺻ ������
	 */
	public UserDTO() {
		// �⺻ ������
	}
	
	/**
	 * ���� ������ �����ͺ��̽��� �߰��ϱ� ���� ������
	 * @param id ���̵�
	 * @param name �̸�
	 * @param password ��й�ȣ
	 * @param email �̸���
	 * @param grade ���� (0 : ����, 1 : ������)
	 */
	public UserDTO(String id, String name, String password, String email, int grade) { // UserDTO(...) start
		this.id = id;							// ���̵�
		this.name = name;					// �̸�
		this.password = password;		// ��й�ȣ
		this.email = email;					// �̸���
		this.grade = grade;					// ���� (0 : ����, 1 : ������)
	} // UserDTO(...) end

	// Getters and Setters start
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	// Getters and Setters end
} // UserDTO end
