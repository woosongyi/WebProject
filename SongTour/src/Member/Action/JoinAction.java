package Member.Action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;

import Member.DATO.MemberDAO;
import Member.DATO.MemberDTO;
import Search.Action.SearchAction;
import Search.DATO.TourDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;
import Util.HttpClientGet;
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
		String 	name 	= request.getParameter("name");
		String 	pass 		= request.getParameter("pass");
		String 	email		= request.getParameter("email");
		String		hobby 	= request.getParameter("hobby");
		String		si			= request.getParameter("si");
		String		gu			= request.getParameter("gu");
		String		gun		= request.getParameter("gun");
		
		// 사용자 객체 생성
		MemberDTO dto = new MemberDTO(name, pass, email, hobby, si, gu, gun);
		
		// 회원 가입 처리
		boolean joinCheck = MemberDAO.insertMember(dto);
		
		forward = new ServiceForward();
		
		if(joinCheck) // 회원 가입이 되었을때 
		{
			/** 회원 가입 정보, 로그인 정보는 세션 영역에 저장 한다. */
			// 세션 가져오기
			HttpSession session = request.getSession();
			// 사용자 정보 지정
			session.setAttribute("member", dto);
			
			
			// 취미에 대한처리
    		session.setAttribute("hobbyList", setSessionData(dto.getHobby()));
    		
    		// 시에 대한 처리
    		session.setAttribute("cityList", setSessionData(dto.getSi()));
    		
    		
		
			forward.setRedirect(true);
			forward.setPath("./Index.jsp?msg=success");
			
		}
		else // 회원 가입이 안되었을때
		{
			forward.setRedirect(false);
			forward.setPath("./Register.jsp?msg=fail");
		
		}
		
		return forward;
	}
	
	public ArrayList<TourDTO> setSessionData(String keyword) throws UnsupportedEncodingException, ParseException
	{
	
		try {
			keyword = URLEncoder.encode(keyword, "UTF-8");
			System.out.println(keyword);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		// 요청할 주소를 넣으세요
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=Nj2mm9sqh%2B2lT6DWJ7fdqA0db%2Bzw40B%2BIomiB7fkkj6dWgos8obmHPllcAE1BbX0Uy8kyl%2FIFDbzRBh%2B%2BXf9QQ%3D%3D"
				+ "&keyword=" + keyword + "&MobileOS=ETC&MobileApp=KoreaTourismOrganization&_type=json";
		
		System.out.println("요청주소 : "+url);
		// 다음 서버로 부터 json 받아오기 
		String json = HttpClientGet.get_JSONDATA(url);
		
		System.out.println("파싱된 관광지 데이터 : "+json);
		
		/**Json 파싱하기**/
		// 관광지 담을 변수 준비
		ArrayList<TourDTO> tour_list = new ArrayList<TourDTO>();
		
		// 파싱하여 관광지 담기
		SearchAction.JsonParsing(tour_list, json); 
		
		System.out.println(tour_list.toString());
		
		return tour_list;
		
	
	}

}
