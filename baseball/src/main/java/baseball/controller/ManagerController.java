package baseball.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import baseball.bill.model.BillDao;
import baseball.bill.model.BillSch;
import baseball.bill.model.BillVo;
import baseball.board.model.BoardVo;
import baseball.member.model.MemberVo;
import baseball.model.SameMenu;
import baseball.model.Menu;
import baseball.model.PathData;
import baseball.team.model.TeamVo;
import baseball.ticket.model.TicketVo;

@Controller
@RequestMapping("pathInfo/manager/{cate2}/{service}")
public class ManagerController {

	@Resource
	MyProvider provider;

	@Resource
	PathData data;

	@ModelAttribute("yearArr")
	ArrayList<String[]> yearArr() {
		System.out.println("컨트롤러 yearArr 진입");
		ArrayList<String[]> res = new ArrayList<>();
		for (int i = 2018; i >= 2016; i--) {
			res.add(new String[] { "year", Integer.toString(i) });
		}
		return res;
	}

	@ModelAttribute("monthArr")
	ArrayList<String[]> monthArr() {
		System.out.println("컨트롤러 monthArr 진입");
		ArrayList<String[]> res = new ArrayList<>();
		for (int i = 1; i <= 12; i++) {
			res.add(new String[] { "month", Integer.toString(i) });
		}
		return res;
	}

	@ModelAttribute("dayArr")
	ArrayList<String[]> dayArr() {
		ArrayList<String[]> res = new ArrayList<>();
		System.out.println("컨트롤러 dayArr 진입");
		for (int i = 1; i <= 31; i++) {
			res.add(new String[] { "day", Integer.toString(i) });
		}

		return res;
	}

	@ModelAttribute("steamArr")
	ArrayList<String[]> steamArr() {
		ArrayList<String[]> res = new ArrayList<>();
		System.out.println("컨트롤러 teamArr 진입");

		res.add(new String[] { "steam", "ALL" });
		res.add(new String[] { "steam", "KIA" });
		res.add(new String[] { "steam", "DOOSAN" });
		res.add(new String[] { "steam", "LOTTE" });
		res.add(new String[] { "steam", "NC" });
		res.add(new String[] { "steam", "SK" });
		res.add(new String[] { "steam", "LG" });
		res.add(new String[] { "steam", "HANHWA" });
		res.add(new String[] { "steam", "SAMSUNG" });
		res.add(new String[] { "steam", "KT" });
		res.add(new String[] { "steam", "NEXEN" });

		return res;
	}

	// @RequestMapping("pathInfo/manager/bill/list")

	@ModelAttribute("data") // data 라는 이름으로 값을 주고받음 jsp와
	PathData data(@PathVariable String cate2, @PathVariable String service, MemberVo memberVo, TicketVo ticketVo,
			BoardVo boardVo, TeamVo teamVo, BillVo billVo, BillSch sch, HttpServletRequest request) {
		System.out.println("@@@@@@@@@@@@@@@@매니저컨트롤러의 데이타 메소드 초기진입");
		System.out.println("빌서치 최초값 : " + sch);
		System.out.println("최초 순수 데이타 : " + data.getDd());
		System.out.println("배열 넣기전 멤버vo값 : " + memberVo);

		data.setRedirect(false);

		ArrayList vos = new ArrayList<>(); /// bean들을 받음
		vos.add(teamVo);
		vos.add(memberVo);
		vos.add(ticketVo);
		vos.add(boardVo);
		vos.add(billVo);

		ArrayList<Object> vos2 = new ArrayList<>(); /// bean들을 받음
		vos2.add(sch);

		data.setCate1("manager");
		data.setCate2(cate2);
		data.setService(service);
		data.setRequest(request);

		// System.out.println("패스컨트롤러의 data - " + data);

		String voName = "baseball." + cate2 + ".model." + cate2.substring(0, 1).toUpperCase() + cate2.substring(1)
				+ "Vo";
		System.out.println("컨트롤러에서 매니저 일때 cate2 : " + cate2);
		System.out.println("voName 값 : " + voName);
		// 처음 홈 화면일때 팀값을 불러온다
		if (cate2.equals("bill")) {
			for (Object obj : vos) {
				if (obj.getClass().getName().equals(voName)) {
					data.setDd(obj);

				}
			}
			for (Object obj2 : vos2) {
				voName = "baseball.bill.model.BillSch";
				if (obj2.getClass().getName().equals(voName)) {
					data.setDd2(obj2);
				}
			}

			/////////////////////////////////////////////////////////
		} else if (service.contains("mail")) {
			voName = "baseball.mail.model.MailVo";
			for (Object obj : vos) {
				if (obj.getClass().getName().equals(voName)) {
					System.out.println("이프문에서 넣기전  데이타 : " + data.getDd());
					data.setDd(obj);
					System.out.println("이프문에서 넣고 나서 데이타 : " + data.getDd());
				}
			}
			cate2 = "mail";
			////////////////////////////////////////////////////////////

		} else {
			System.out.println("매니저 컨트롤러 엘스문");
			for (Object obj : vos) {
				System.out.println("이프문 들어가기 전 obj값 : " + obj);
				if (obj.getClass().getName().equals(voName)) {
					System.out.println("obj값 : " + obj);
					data.setDd(obj);
				}
			}
		}

		System.out.println("컨트롤러에서 매니저 일때 cate2 : " + cate2);
		//// mainData
		SubControll control = provider.getContext().getBean(cate2, SubControll.class);
		//// SubCotroll 을 getBean 으로 가져옴
		control.execute();
		/// 실행시킴
		System.out.println("----------------------------------------");
		System.out.println("액시큐트 하고나서 빌vo값 : " + billVo);
		System.out.println("액시큐트 하고나서 멤버vo값 : " + memberVo);
		System.out.println("최종적인 겟Dd1 의 값 :" + data.getDd());

		System.out.println("최종카테2 : " + cate2);
		System.out.println("최종 service : " + service);
		System.out.println("패스데이터의 dd - " + data);
		System.out.println("컨트로롤러의 데이타 메소드 나감");

		menu();

		return data;

	}// pathData data

	void menu() {
		new SameMenu(data);

		// -------------------------↓↓↓↓↓서브메뉴구성↓↓↓↓↓↓--------------------------
		HashMap<String, ArrayList<Menu>> subMenu = new HashMap<>();

		subMenu.put("team", new ArrayList<>());
		subMenu.put("member", new ArrayList<>());
		subMenu.put("ticket", new ArrayList<>());
		subMenu.put("bill", new ArrayList<>());

		/////////////////////// 관리자 메뉴 ////////////////////////////////////////

		subMenu.get("team").add(new Menu("team", "구단 리스트", "list"));
		subMenu.get("member").add(new Menu("member", "회원 목록", "list"));
//		subMenu.get("member").add(new Menu("member", "메일 보내기", "list"));

		subMenu.get("bill").add(new Menu("bill", "일괄 조회", "list"));
		subMenu.get("bill").add(new Menu("bill", "수익 조회", "depositList"));
		subMenu.get("bill").add(new Menu("bill", "지출 조회", "withdrawList"));
		subMenu.get("bill").add(new Menu("bill", "순수익 조회", "weList"));

		data.setSubMenu(subMenu.get(data.getCate2()));
	}

	// 여기서 jsp로 보내줌
	@RequestMapping
	String mapping() {
		System.out.println("컨트롤러의 매핑");
		String res = "pathInfo/template3";
		if (data.isRedirect()) { //// redirect에 따른 redirect or forward 선택
			System.out.println("매니저컨트롤러의 리다이렉트 if문 진입");
			res = data.getPath();
		}

		return res;
	}

}
