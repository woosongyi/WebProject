package Member.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.DATO.MemberDAO;
import Member.DATO.MemberDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;
import Util.Util;

/**
 * 회원 가입을 처리 하는 클래스
 * @author Administrator
 */
public class JoinAction implements ServiceInterface 
{

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		// 리턴 객체 준비 
		ServiceForward forward = null; // null 로 처리 하는 이유는 , 회원 가입/실패 후 response를 조작할 것 이기 때문에
		
		// 사용자 입력 정보 받아오기
		String 	name = request.getParameter("name");
		String 	pass 	= request.getParameter("pass");
		String 	email	= request.getParameter("email");
		
		// 사용자 객체 생성
		MemberDTO dto = new MemberDTO(name, pass, email);
		
		// 회원 가입 처리
		boolean joinCheck = MemberDAO.insertMember(dto);
		
		if(joinCheck) // 회원 가입이 되었을때 
		{
			/** 회원 가입 정보, 로그인 정보는 세션 영역에 저장 한다. */
			// 세션 가져오기
			HttpSession session = request.getSession();
			// 사용자 정보 지정
			session.setAttribute("member", dto);
		
			forward.setRedirect(true);
			forward.setPath("./Index.jsp");
			// 회원 가입 성공 알리기 리턴 주소 지정
			Util.set_MessageBox("회원 가입이 되었습니다.", response);
		}
		else // 회원 가입이 안되었을때
		{
			forward.setRedirect(false);
			forward.setPath("./Index.jsp");
			// 회원 가입 실패 알리기
			Util.set_MessageBox("회원에 실패 하였습니다.", response);
		}
		
		return forward;
	}

}
