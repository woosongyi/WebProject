package Member.DATO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import DBManager.DBManager;

public class MemberDAO  // 멤버 DB 접근처리 클래스
{
	
	public static boolean insertMember(MemberDTO data)
	{
		boolean result = false;
		
		Connection conn = DBManager.get_DB_Connection();
		PreparedStatement pstmt = null;
		
		StringBuffer SQL = new StringBuffer();
		SQL.append("Insert into member");
		SQL.append(" values (?,?,?,?,?,?,?)");
		
		try
		{
			pstmt=conn.prepareStatement(SQL.toString());
			pstmt.setObject(1, data.getName(), Types.VARCHAR);
			pstmt.setObject(2, data.getPass(), Types.VARCHAR);
			pstmt.setObject(3, data.getEmail(), Types.VARCHAR);
			pstmt.setObject(4, data.getHobby(), Types.VARCHAR);
			pstmt.setObject(5, data.getSi(), Types.VARCHAR);
			pstmt.setObject(6, data.getGu(), Types.VARCHAR);
			pstmt.setObject(7, data.getGun(), Types.VARCHAR);

			int n=pstmt.executeUpdate();
			
			if(n>0)
			{
				result = true;
			}
				
			// 자원 반납
			if(conn!=null)conn.close();
			if(pstmt!=null)pstmt.close();
				
		}catch(SQLException e){e.printStackTrace();}
		
		return result;
	} // method end
	
	
	// 사용자 로그인 정보 객체인 DTO를 받아서 db에서 조회해서 처리 한다
		public static boolean isMember(MemberDTO data) {
			
			// 결과 리턴 초기 값은 false
			boolean check = false;

			// db connection 받아오기
			Connection conn = DBManager.get_DB_Connection();

			// DB연결 자원 준비
			PreparedStatement pstmt = null;
			ResultSet query_result = null;

			// db 결과 가져오기
			StringBuffer SQL = new StringBuffer();
			SQL.append("SELECT * FROM member WHERE email=?");

			try {
				// 쿼리 설정
				pstmt = conn.prepareStatement(SQL.toString());
				pstmt.setObject(1, data.getEmail(), Types.VARCHAR);
			

				// 쿼리 실행
				query_result = pstmt.executeQuery();

				// 쿼리 검색 결과 갯수 알아오기
				query_result.last();
				int count = query_result.getRow();
				query_result.beforeFirst();

				// 검색 결과가 있는 경우
				if (count > 0) 
				{
					while (query_result.next()) 
					{
						// 필드 내용 파싱해오기
						String _name = query_result.getString(1);
						String _pwd = query_result.getString(2);
						String _email = query_result.getString(3);
						String _hobby = query_result.getString(4);
						String _si = query_result.getString(5);
						String _gu = query_result.getString(6);
						String _gun = query_result.getString(7);

						if (data.getPass().equals(_pwd))// 회원정보가 비밀번호와 일치 하는 경우
						{
							check = true;
							
							// 데이터 지정해주기
							data.setName(_name);
							data.setPass(_pwd);
							data.setEmail(_email);
							data.setHobby(_hobby);
							data.setSi(_si);
							data.setGu(_gu);
							data.setGun(_gun);
							
							System.out.println("로그인 데이터 지정 후 : "+data.toString());
							
						} 
						else // 회원 정보와 비밀번호가 일치 안하는 경우
						{
							check = false;
						}
					}
				}
				
				// 자원 반납
				conn.close();
				pstmt.close();
				query_result.close();
				query_result = null;
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			} // try end
			
			// 결과 반납
			return check;
			
	}// method end
	
}
