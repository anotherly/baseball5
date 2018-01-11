package baseball.home;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import baseball.home.model.HomeVo;
import baseball.player.model.PlayerStatCareerVo;
import baseball.team.model.TeamVo;

@Service
public class HomeRepository {

	@Resource
	SqlSessionTemplate template;

	public List<HomeVo> listGame() {
		System.out.println("listGame");
		return template.selectList("homeMap.listGame");
	}
	public List<HomeVo> listPlayerRankingAvg() {
		
		return template.selectList("homeMap.listPlayerRankingAvg");
	}
	public List<HomeVo> listPlayerRankingHr() {
		
		return template.selectList("homeMap.listPlayerRankingHr");
	}
	public List<HomeVo> listPlayerRankingRbi() {
		
		return template.selectList("homeMap.listPlayerRankingRbi");
	}
	public List<HomeVo> listPlayerRankingEra() {
		
		return template.selectList("homeMap.listPlayerRankingEra");
	}
	public List<HomeVo> listPlayerRankingW() {
		
		return template.selectList("homeMap.listPlayerRankingW");
	}
	public List<HomeVo> listPlayerRankingPso() {
		return template.selectList("homeMap.listPlayerRankingPso");
	}
	public List<HomeVo> listTeamRanking() {
		System.out.println("listTeamRanking");
		return template.selectList("homeMap.listTeamRanking");
	}
	
	

	/*public List<TeamVo> listSch(HomeSch hsch) {
		return template.selectList("teamInfo.selectListSch", sch);
	}

	public List<TeamVo> listSchList(HomeSch sch) {
		return template.selectList("teamInfo.selectListSchList", sch);
	}

	public TeamVo detail(TeamVo vo) {
		return template.selectOne("teamInfo.selectDetail", vo);
	}

	public void insert(TeamVo vo) {
		template.insert("teamInfo.insertOne", vo);
	}

	public TeamVo idPwChk(TeamVo vo) {
		return template.selectOne("teamInfo.idPwChk", vo);
	}

	public void fileDelete(TeamVo vo) {
		template.update("teamInfo.fileDelete", vo);
	}

	public void delete(TeamVo vo) {
		template.delete("teamInfo.delete", vo);
	}

	public boolean modify(TeamVo vo) {
		return template.update("teamInfo.modify", vo) > 0;
	}*/
}
