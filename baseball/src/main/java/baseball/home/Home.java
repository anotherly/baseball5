package baseball.home;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import baseball.controller.SubControll;
import baseball.home.model.HomeVo;
import baseball.model.PathData;
import baseball.team.model.TeamVo;

@Service
public class Home implements SubControll {

	@Resource
	PathData data;

	@Resource
	HomeRepository pRep;

	HomeVo hvo;

	@Override
	public void execute() {
		// TODO Auto-generated method stub
		System.out.println("home 진입성공:" + data);
		System.out.println("처음 진입했을때 getDd : "+data.getDd());
		hvo = (HomeVo) data.getDd();
		System.out.println("Home.java----" + hvo);

		switch (data.getService()) {
		case "first":
			list();
			break;
		}

	}

	void list() {
		System.out.println("홈 패키지의 홈 클래스의 리스트 메소드");
		data.setHome1(pRep.listGame());
		data.setHome2(pRep.listPlayerRankingAvg());
		data.setHome3(pRep.listPlayerRankingEra());
		data.setHome4(pRep.listPlayerRankingHr());
		data.setHome5(pRep.listPlayerRankingPso());
		data.setHome6(pRep.listPlayerRankingRbi());
		data.setHome7(pRep.listPlayerRankingW());
		data.setHome8(pRep.listTeamRanking());

	}

}
