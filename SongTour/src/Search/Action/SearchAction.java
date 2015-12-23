package Search.Action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import Search.DATO.TourDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;
import Util.HttpClientGet;

public class SearchAction implements ServiceInterface {

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ServiceForward Fowardaction = null;

		String key1 = request.getParameter("keyword");
		System.out.println("�˻��� Ű���� : " + key1);

		String keyword = "";
		try {
			keyword = URLEncoder.encode(request.getParameter("keyword"), "UTF-8");
			System.out.println(keyword);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// ��û�� �ּҸ� ��������
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=Nj2mm9sqh%2B2lT6DWJ7fdqA0db%2Bzw40B%2BIomiB7fkkj6dWgos8obmHPllcAE1BbX0Uy8kyl%2FIFDbzRBh%2B%2BXf9QQ%3D%3D"
				+ "&keyword=" + keyword + "&MobileOS=ETC&MobileApp=KoreaTourismOrganization&_type=json";

		System.out.println("��û�ּ� : " + url);
		// ���� ������ ���� json �޾ƿ���
		String json = HttpClientGet.get_JSONDATA(url);

		System.out.println("�Ľ̵� ������ ������ : " + json);

		/** Json �Ľ��ϱ� **/
		// ������ ���� ���� �غ�
		ArrayList<TourDTO> tour_list = new ArrayList<TourDTO>();

		
		// �Ľ��Ͽ� ������ ���
		JsonParsing(tour_list, json);
	
		System.out.println(tour_list.toString());
		System.out.println(tour_list.size());
		HttpSession session = request.getSession();
		session.setAttribute("resultTour", tour_list);
		Fowardaction = new ServiceForward();

		// dispatcher ����
		Fowardaction.setRedirect(true);

		// �̵��� ������
		Fowardaction.setPath("./Index.jsp");

		return Fowardaction;

	}

	public static void JsonParsing(ArrayList<TourDTO> tour_list, String json)
			throws ParseException, UnsupportedEncodingException {
		// TODO Auto-generated method stub

		JSONParser parser = new JSONParser();

		JSONObject obj = (JSONObject) parser.parse(json);

		// response ��������
		JSONObject response1 = (JSONObject) obj.get("response");

		// body ��������
		JSONObject body = (JSONObject) response1.get("body");

		
		// items ��������
		JSONObject items = (JSONObject) body.get("items");

		// items �� ���� item �޾ƿ��� jsonarray �̴� : [ �� �����ϱ� ������
		JSONArray item = (JSONArray) items.get("item");

		// �ϳ��� ��������

		for (int i = 0; i < item.size(); i++) {
			JSONObject imsi = (JSONObject) item.get(i);
			// ���� �Ľ��ϱ�

			String title = (String) imsi.get("title");

			// ���� ���� id
			long contentid = (long) imsi.get("contentid");

			// ���� ���� type
			long contenttypeid = (long) imsi.get("contenttypeid");

			String address1 = (String) imsi.get("addr1");
			if (address1 == null) {
				address1 = "�ּ����� ����";
			}

			String firstimage = (String) imsi.get("firstimage");
			// �̹��� ���� ��� null���� ���� �� �ִ�.
			if (firstimage == null) {
				firstimage = "images/noImage.jpg";
			}

			// ������ �Ľ� ��� ���ڿ��� ���� ���� ��ȯ�ϱ�
			double mapx = Double.parseDouble("" + imsi.get("mapx"));
			double mapy = Double.parseDouble("" + imsi.get("mapy"));

			// ��ü�����
			TourDTO tour_data = new TourDTO(contentid, contenttypeid, title, address1, firstimage, mapx, mapy, null,
					null, null, null, null);
			tour_list.add(tour_data);
			System.out.println("************" + i + "��° �׸� ���� ************");
			System.out.println("ID : " + contentid);
			System.out.println("��� : " + title);
			System.out.println("�ּ� : " + address1);
			System.out.println("�̹��� : " + firstimage);
			System.out.println("�浵: " + mapx);
			System.out.println("����: " + mapy);
			System.out.println("----------------------------------\n");

		}
	}

}
