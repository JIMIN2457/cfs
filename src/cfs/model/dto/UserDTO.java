package cfs.model.dto;

/**
 * 회원 정보 <br />
 * 담당 : 박지민
 */
public class UserDTO { // UserDTO start
	private String id;					// 아이디
	private String name;			// 이름
	private String password;		// 비밀번호
	private String email;			// 이메일
	private int grade;				// 권한 (0 : 유저, 1 : 관리자)
	
	/**
	 * 기본 생성자
	 */
	public UserDTO() {
		// 기본 생성자
	}
	
	/**
	 * 유저 정보를 데이터베이스에 추가하기 위한 생성자
	 * @param id 아이디
	 * @param name 이름
	 * @param password 비밀번호
	 * @param email 이메일
	 * @param grade 권한 (0 : 유저, 1 : 관리자)
	 */
	public UserDTO(String id, String name, String password, String email, int grade) { // UserDTO(...) start
		this.id = id;							// 아이디
		this.name = name;					// 이름
		this.password = password;		// 비밀번호
		this.email = email;					// 이메일
		this.grade = grade;					// 권한 (0 : 유저, 1 : 관리자)
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
