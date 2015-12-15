package Member.DATO;

public class MemberDTO {
	String name; 	// 이름
	String pass; 		// 비밀번호
	String email; 	// 이메일
	String hobby;	// 취미
	String si;			// 시
	String gu;		// 구
	String gun;		// 군

	public MemberDTO(String name, String pass, String email, String hobby, String si, String gu, String gun) {
		this.name = name;
		this.pass = pass;
		this.email = email;
		this.hobby = hobby;
		this.si = si;
		this.gu = gu;
		this.gun = gun;
	}
	
	
	public MemberDTO(String name, String pass, String email) {
		this.name = name;
		this.pass = pass;
		this.email = email;
	}

	public MemberDTO(String email, String pass) {
		this.email 	= 	email;
		this.pass 	=	pass;
	}
	
	
	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getSi() {
		return si;
	}

	public void setSi(String si) {
		this.si = si;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public String getGun() {
		return gun;
	}

	public void setGun(String gun) {
		this.gun = gun;
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
	
	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		
		sb.append("이름 : "+name);
		sb.append(" 비밀번호 : "+pass);
		sb.append(" 이메일 : "+email);
		sb.append(" 취미 : "+hobby);
		sb.append(" 시 : "+si);
		sb.append(" 구 : "+gu);
		sb.append(" 군 : "+gun);
		return sb.toString();
	}

}
