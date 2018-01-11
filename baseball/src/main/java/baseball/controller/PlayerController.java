package baseball.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import baseball.info.model.InfoVo;
import baseball.model.SameMenu;
import baseball.model.Menu;
import baseball.model.PathData;
import baseball.player.model.PlayerStatCareerVo;
import baseball.player.model.PlayerStatVo;
import baseball.player.model.PlayerVo;

import baseball.schedule.model.ScheduleVo;

import baseball.team.model.TeamVo;

@Controller
@RequestMapping("pathInfo/player/{cate2}/{service}")
public class PlayerController {

	@Resource
	MyProvider provider;

	@Resource
	PathData data;

	@ModelAttribute("data")
	PathData data(@PathVariable String cate2, @PathVariable String service,
			// PlayerVo PlayerVo,
			PlayerStatVo PlayerStatVo, PlayerStatCareerVo PlayerStatCareerVo, HttpServletRequest request) {
		data.setRedirect(false);

		ArrayList vos = new ArrayList<>(); /// bean���� ����

		// vos.add(PlayerVo);
		vos.add(PlayerStatCareerVo);
		//vos.add(PlayerStatVo);
		System.out.println("vos--------" + vos);
		// -------------------------------------------------------------------vos2
		ArrayList vos2 = new ArrayList<>();
		// vos2.add(PlayerVo);
		// vos2.add(InfoVo);
		// vos2.add(ScheduleVo);
		// vos2.add(PlayerStatCareerVo);
		// vos2.add(PlayerStatVo);
		System.out.println("vos2--------" + vos2);

		data.setCate1("player");
		data.setCate2(cate2);
		data.setService(service);

		data.setCate1Temp("player");
		data.setServiceTemp(service);

		data.setRequest(request);
		System.out.println("PathController�� data - " + data);
		menu();
		String voName;

		// �����Ǳ���йи�
		/*
		 * if (service.equals("detailTodayStat") || service.equals("todayRegister") ||
		 * service.equals("viewTodayStat")) {
		 * 
		 * voName = "baseball.player.model.PlayerStatCareerVo"; for (Object obj : vos) {
		 * 
		 * //data.setDd2(obj); // data.setDd2(obj); /// ������ data �� ����
		 * System.out.println("@@@@@@@@@@@@@1" + data.getDd()); } for (Object obj2 :
		 * vos2) {
		 * 
		 * //data.setDd2(obj2); /// ������ data �� ���� System.out.println("@@@@@@@@2" +
		 * data.getDd2()); } }else {
		 */
		voName = "baseball.player.model.PlayerStatCareerVo";
		System.out.println("voName - " + voName);
		for (Object obj : vos) {
			if (obj.getClass().getName().equals(voName)) {

				data.setDd(obj);

				System.out.println("@@@@3" + data.getDd());
				System.out.println("@@@@34" + data.getDd2());
				// data.setDd2(obj);
				/// ������ data �� ����
			}
		}
		/*
		 * for (Object obj2 : vos2) { if
		 * (obj2.getClass().getName().equals("baseball.player.model.PlayerStatVo")) {
		 * //// bean�� Ŭ���� �̸��� ���� �������� �ʿ��� bean Ŭ�����̸��� ��
		 * 
		 * //data.setDd2(obj2); System.out.println("@@@@@@@@@@@@@4" + data.getDd2()); //
		 * data.setDd2(obj); // ������ data �� ���� }
		 * 
		 * }
		 */

		System.out.println("�������" + voName);
		System.out.println("�н��������� dd - " + data);

		//// mainData

		SubControll control = provider.getContext().getBean("player", SubControll.class);
		//// SubCotroll �� getBean ���� ������
		control.execute();
		/// �����Ŵ

		return data;

	}

	void menu() {
		new SameMenu(data);

		ArrayList<Menu> topMenu2 = new ArrayList<>();
		topMenu2.add(new Menu("player", "����", "list"));
		topMenu2.add(new Menu("player", "Ÿ��", "blist"));
		topMenu2.add(new Menu("player", "����", "dlist"));

		HashMap<String, ArrayList<Menu>> subMenu = new HashMap<>();
		subMenu.put("player", new ArrayList<>());

		subMenu.get("player").add(new Menu("statPlayer", "�������", "list"));// �������
		subMenu.get("player").add(new Menu("statTeam", "�����", "teamStatList"));// ��������������ֱ�
		subMenu.get("player").add(new Menu("stat", "��� �Է�/����", "today"));

		HashMap<String, ArrayList<Menu>> subMenu2 = new HashMap<>();
		subMenu2.put("player", new ArrayList<>());

		data.setSubMenu(subMenu.get(data.getCate1()));
		data.setTopMenu2(topMenu2);
		data.setSubMenu2(subMenu2.get(data.getCate1()));

	}

	@RequestMapping
	String mapping() {

		String res = "pathInfo/template2";
		if (data.isRedirect()) { //// redirect�� ���� redirect or forward ����
			res = data.getPath();
		}

		return res;
	}

}
