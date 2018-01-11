package baseball.player;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import baseball.controller.SubControll;
import baseball.model.PathData;
import baseball.player.model.PlayerRepository;
import baseball.player.model.PlayerStatCareerVo;
import baseball.player.model.PlayerStatVo;
import baseball.player.model.PlayerVo;

@Service
public class Player implements SubControll {

	@Resource
	PathData data;

	@Resource
	PlayerRepository pRep;
	PlayerStatCareerVo pscvo;
	// PlayerStatVo psvo;
	PlayerVo pvo;
	HttpServletRequest request;

	@Override
	public void execute() {
		pscvo = (PlayerStatCareerVo) data.getDd();
		//pscvo = (PlayerStatCareerVo) data.getDd2();
		// TODO Auto-generated method stub

		data.setServiceTemp("playerTemp");
		System.out.println("player ���Լ���:" + data);

		if (data.getService().contains("todayRegister") || data.getService().contains("detailTodayStat")
				|| data.getService().contains("viewTodayStat")) {
			System.out.println("�����ǰ���");

			
			pscvo = (PlayerStatCareerVo) data.getDd();
			System.out.println("pscvo - " + data.getDd2());
			System.out.println("pscvo - " + data.getDd());// ���� // pvo = (PlayerVo) data.getDd2();
			// pscvo = (PlayerStatCareerVo) data.getDd3();

		} /*
			 else if (data.getCate2().contains("dlist") &&
			  data.getService().contains("dList")) {
			  
			  // psvo = (PlayerStatVo) data.getDd();// ���� // pvo = (PlayerVo)
			  data.getDd2(); pscvo = (PlayerStatCareerVo) data.getDd();
			  System.out.println("************" + pscvo);
			  
			  }else if (data.getCate2().contains("blist") &&
			  data.getService().contains("bList")) {
			  
			  // psvo = (PlayerStatVo) data.getDd();// ���� // pvo = (PlayerVo)
			  data.getDd2(); pscvo = (PlayerStatCareerVo) data.getDd();
			  System.out.println("************" + pscvo);
			  
			  }
			  
			  else { // psvo = (PlayerStatVo) data.getDd2(); // pvo = (PlayerVo)
			  data.getDd(); System.out.println("���⵵Ȥ�ÿ���?"); pscvo = (PlayerStatCareerVo)
			  data.getDd(); }
			 */

		switch (data.getService()) {

		
		case "list":
			list();
			break;
		case "teamStatList":
			teamStatList();
			break;

		case "list2017":
			list2017();
			break;
		case "list2016":
			list2016();
			break;

		case "bList":
			batList();
			break;
		case "blist2017":
			batList2017();
			break;
		case "blist2016":
			batList2016();
			break;

		case "dList":
			defList();
			break;

		case "dList2017":
			defList2017();
			break;
		case "dList2016":
			defList2016();
			break;
		case "viewTodayStat":
			viewTodayStat();
			break;

		case "detail":
			reg();
			break;

		case "detailTodayStat":
			regTodayStat();
			break;

		case "today":
			today();
			break;

		}

	}

	void today() {
		System.out.println("ȣȣȣȣ" + pRep.stat_num());
		data.setDd(pRep.stat_num());

		data.setRedirect(true);
		data.setPath("redirect:todayRegister?statnum=" + pRep.stat_num() + "&playerId=");

	}

	void reg() {

		System.out.println("�÷��̾��� ��������Ȯ��" + pvo);

		fileupload(pvo, data.getRequest());
		// pRep.insertPlayerStatCareer(pvo);
		// pRep.insert(pvo);
		data.setRedirect(true);

		data.setPath("redirect:view?playerId=" + pvo.getPlayerId());
	}

	void regTodayStat() {

		System.out.println("pscvo -" + pscvo);
		System.out.println("complete ������");
		pRep.completeUpdate(pscvo);
		System.out.println("complete ��������");
		System.out.println("���ñ���Է���");
		pRep.insertStat(pscvo);
		System.out.println("���ñ���Է�����");
		System.out.println("���������");
		pRep.careerUpdate(pscvo);
		System.out.println("�����������");

		data.setRedirect(true);
		data.setPath("redirect:viewTodayStat?game_num=" + pscvo.getGame_num() + "&playerId=" + pscvo.getPlayerId());
	}

	void viewTodayStat() {
		System.out.println("����Էº��1 - " + data.getDd());
		data.setDd(pRep.viewTodayStat(pscvo));
		System.out.println("����Էº��2 - " + pRep.viewTodayStat(pscvo));
	}

	void list() {

		data.setDd(pRep.list());

	}
	void teamStatList() {

		data.setDd(pRep.teamStatList(2018));
		System.out.println("�����ȸ���Ʈ - "+data.getDd());

	}
	

	void list2017() {

		data.setDd(pRep.list2017());

	}

	void list2016() {

		data.setDd(pRep.list2016());

	}

	void batList() {

		data.setDd(pRep.playerBatList());

	}

	void batList2017() {

		data.setDd(pRep.playerBatList2017());

	}

	void batList2016() {

		data.setDd(pRep.playerBatList2016());

	}

	void defList() {

		data.setDd(pRep.playerDefList());

	}

	void defList2017() {

		data.setDd(pRep.playerDefList2017());

	}

	void defList2016() {

		data.setDd(pRep.playerDefList2016());

	}

	void fileupload(PlayerVo vo, HttpServletRequest request) {

		try {

			String outPath = request.getRealPath("/resources/playerPhoto");
			outPath = "C:\\FINAL\\baseball\\src\\main\\webapp\\resources\\playerPhoto";
			outPath += "/" + vo.getPlayerPhoto().getOriginalFilename();
			vo.setSysFile(vo.getPlayerPhoto().getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(outPath);

			fos.write(vo.getPlayerPhoto().getBytes());

			fos.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
