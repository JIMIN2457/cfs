package cfs.model.dto.user;

/**
 * 유저 정보 - DTO
 * 담당 : 박지민
 * 최근 수정 날짜 : 2017-10-30
 */
public class UserDTO {
	private int no;				// 유저 고유번호
	private String name;		// 유저 이름
	private String id;				// 유저 아이디
	private String email;		// 유저 이메일
	private String password;	// 유저 비밀번호
	private String joinDate;	//	유저 가입날짜 (날짜 형식 : yyyy-mm-dd)
	
	// 기본 생성자
	public UserDTO() {}
	
	// 유저 아이디 찾기
	public UserDTO(String name, String email) {
		this.name = name;	// 유저 이름
		this.email = email;	// 유저 이메일
	}

	// 유저 비밀번호 찾기
	public UserDTO(String name, String id, String email) {
		this(name, email);
		
		this.id = id;	// 유저 아이디
	}
	
	// 유저 회원가입 및 정보수정
	public UserDTO(String name, String id, String email, String password) {
		this(name, id, email);
		
		this.password = password;	// 유저 비밀번호
	}
	
	// 유저의 모든 정보
	public UserDTO(int no, String name, String id, String email, String password, String joinDate) {
		this(name, id, email, password);
		
		this.no = no;					// 유저 고유번호
		this.joinDate = joinDate;	// 유저 가입날짜
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
