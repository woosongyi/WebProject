package Member.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.DATO.MemberDAO;
import Member.DATO.MemberDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;
import Util.Util;

public class LoginAction implements ServiceInterface{ // 로그인을 처리하는 클래스

	@Override
	public ServiceForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		// 리턴 시킬 객체를 준비
		ServiceForward Fowardaction = new ServiceForward();
		
		
		// id pwd 구별
		String email = request.getParameter("email");
		String pass 	= request.getParameter("pass");

		
		//사용자 객체 만들기
		MemberDTO data = new MemberDTO(email, pass);
		
		// DAO를 통해서 DB에서 처리 하기
		boolean b = MemberDAO.isMember(data);
		
		
		if(b) // 로그인 성공시 
		{
			// request 세션에 login 데이터를 넣어 준다.
			
			String msg = "로그인에 성공 하였습니다";
			
			HttpSession session = request.getSession();
    		session.setAttribute("member", data);
    		Fowardaction.setRedirect(false);
    		Fowardaction.setPath("./Index.jsp?msg=success");
    		
		}
		else // 로그인 실패시 notice page로 이동
		{
			String msg="아이디 또는 비밀번호가 틀려요!";
			
			Fowardaction.setRedirect(true);
    		Fowardaction.setPath("./Login.jsp?msg=fail");
    	   	   		
    		
		}
		
		return Fowardaction;
	}

}
