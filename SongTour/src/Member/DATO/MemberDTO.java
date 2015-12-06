package Member.DATO;

public class MemberDTO {
	String name; 	// 이름
	String pass; 		// 비밀번호
	String email; 	// 이메일

	public MemberDTO(String name, String pass, String email) {
		this.name = name;
		this.pass = pass;
		this.email = email;
	}

	public MemberDTO(String email, String pass) {
		this.email 	= 	email;
		this.pass 	=	pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
