package Member.Action;

import java.io.IOException;
import java.io.PrintWriter;
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
    		
    		// 취미에 대한처리
    		session.setAttribute("hobbyList", setSessionData(data.getHobby()));
    		
    		// 시에 대한 처리
    		session.setAttribute("cityList", setSessionData(data.getSi()));
    		
    		
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
