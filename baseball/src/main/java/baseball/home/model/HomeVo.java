package baseball.home.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("hvo")
public class HomeVo {
	/*TeamVo*/
	String teamName, office, tel, homepage, teamId;
	Integer teamBirth, win, lose, draw, game;
	String home, owner, president, captin, manager, sysFile, oriFile;
	MultipartFile ff;
	Float winPer, cha;
	
	/*ScheduleVo*/
	String  yoil, game_time,
	 home_img, away_img, channel,
	 away, stadium, status;
	Integer year, month, day,game_num,away_score, home_score; 
	
	/*PlayerStatCareerVo*/
	String playerName;
	Integer statnum,
	g, gs, inn, tc, po, a, e, dp,  rf, // 수비지표
	ab, r, h, twoBase, thirdBase, hr, rbi, bb, so, sb, cs,// 타자지표
	w, l, d, hold, era, sv, svo, ip, pitcherH, pitcherR, er, pitcherHr, pitcherBb, pitcherSo;// 투수지표
	Date regDate;
	Float avg, obp, slg, ops, pitcherAvg, whip, fpct;
	
	/*MemberVo*/
	MultipartFile file;
	String userid, nick ,name, birth, address, phone, receivemail, preferTeam, password,grade;
	String sysname, oriname;

	// HttpServletRequest request; mapping에서 자동으로 주지 못한다.

	public HomeVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getD() {
		return d;
	}




	public void setD(Integer d) {
		this.d = d;
	}




	public String getPlayerName() {
		return playerName;
	}




	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}




	public Integer getLose() {
		return lose;
	}


	public void setLose(Integer lose) {
		this.lose = lose;
	}


	public Integer getDraw() {
		return draw;
	}


	public void setDraw(Integer draw) {
		this.draw = draw;
	}


	public Integer getGame() {
		return game;
	}


	public void setGame(Integer game) {
		this.game = game;
	}


	public Float getWinPer() {
		return winPer;
	}


	public void setWinPer(Float winPer) {
		this.winPer = winPer;
	}


	public Float getCha() {
		return cha;
	}


	public void setCha(Float cha) {
		this.cha = cha;
	}


	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getOffice() {
		return office;
	}

	public void setOffice(String office) {
		this.office = office;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getTeamId() {
		return teamId;
	}

	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}

	public Integer getTeamBirth() {
		return teamBirth;
	}

	public void setTeamBirth(Integer teamBirth) {
		this.teamBirth = teamBirth;
	}

	public Integer getWin() {
		return win;
	}

	public void setWin(Integer win) {
		this.win = win;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getPresident() {
		return president;
	}

	public void setPresident(String president) {
		this.president = president;
	}

	public String getCaptin() {
		return captin;
	}

	public void setCaptin(String captin) {
		this.captin = captin;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getSysFile() {
		return sysFile;
	}

	public void setSysFile(String sysFile) {
		this.sysFile = sysFile;
	}

	public String getOriFile() {
		return oriFile;
	}

	public void setOriFile(String oriFile) {
		this.oriFile = oriFile;
	}

	public MultipartFile getFf() {
		return ff;
	}

	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}

	public String getYoil() {
		return yoil;
	}

	public void setYoil(String yoil) {
		this.yoil = yoil;
	}

	public String getGame_time() {
		return game_time;
	}

	public void setGame_time(String game_time) {
		this.game_time = game_time;
	}

	public String getHome_img() {
		return home_img;
	}

	public void setHome_img(String home_img) {
		this.home_img = home_img;
	}

	public String getAway_img() {
		return away_img;
	}

	public void setAway_img(String away_img) {
		this.away_img = away_img;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public String getAway() {
		return away;
	}

	public void setAway(String away) {
		this.away = away;
	}

	public String getStadium() {
		return stadium;
	}

	public void setStadium(String stadium) {
		this.stadium = stadium;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Integer getGame_num() {
		return game_num;
	}

	public void setGame_num(Integer game_num) {
		this.game_num = game_num;
	}

	public Integer getAway_score() {
		return away_score;
	}

	public void setAway_score(Integer away_score) {
		this.away_score = away_score;
	}

	public Integer getHome_score() {
		return home_score;
	}

	public void setHome_score(Integer home_score) {
		this.home_score = home_score;
	}

	public Integer getStatnum() {
		return statnum;
	}

	public void setStatnum(Integer statnum) {
		this.statnum = statnum;
	}

	public Integer getG() {
		return g;
	}

	public void setG(Integer g) {
		this.g = g;
	}

	public Integer getGs() {
		return gs;
	}

	public void setGs(Integer gs) {
		this.gs = gs;
	}

	public Integer getInn() {
		return inn;
	}

	public void setInn(Integer inn) {
		this.inn = inn;
	}

	public Integer getTc() {
		return tc;
	}

	public void setTc(Integer tc) {
		this.tc = tc;
	}

	public Integer getPo() {
		return po;
	}

	public void setPo(Integer po) {
		this.po = po;
	}

	public Integer getA() {
		return a;
	}

	public void setA(Integer a) {
		this.a = a;
	}

	public Integer getE() {
		return e;
	}

	public void setE(Integer e) {
		this.e = e;
	}

	public Integer getDp() {
		return dp;
	}

	public void setDp(Integer dp) {
		this.dp = dp;
	}

	public Integer getRf() {
		return rf;
	}

	public void setRf(Integer rf) {
		this.rf = rf;
	}

	public Integer getAb() {
		return ab;
	}

	public void setAb(Integer ab) {
		this.ab = ab;
	}

	public Integer getR() {
		return r;
	}

	public void setR(Integer r) {
		this.r = r;
	}

	public Integer getH() {
		return h;
	}

	public void setH(Integer h) {
		this.h = h;
	}

	public Integer getTwoBase() {
		return twoBase;
	}

	public void setTwoBase(Integer twoBase) {
		this.twoBase = twoBase;
	}

	public Integer getThirdBase() {
		return thirdBase;
	}

	public void setThirdBase(Integer thirdBase) {
		this.thirdBase = thirdBase;
	}

	public Integer getHr() {
		return hr;
	}

	public void setHr(Integer hr) {
		this.hr = hr;
	}

	public Integer getRbi() {
		return rbi;
	}

	public void setRbi(Integer rbi) {
		this.rbi = rbi;
	}

	public Integer getBb() {
		return bb;
	}

	public void setBb(Integer bb) {
		this.bb = bb;
	}

	public Integer getSo() {
		return so;
	}

	public void setSo(Integer so) {
		this.so = so;
	}

	public Integer getSb() {
		return sb;
	}

	public void setSb(Integer sb) {
		this.sb = sb;
	}

	public Integer getCs() {
		return cs;
	}

	public void setCs(Integer cs) {
		this.cs = cs;
	}

	public Integer getW() {
		return w;
	}

	public void setW(Integer w) {
		this.w = w;
	}

	public Integer getL() {
		return l;
	}

	public void setL(Integer l) {
		this.l = l;
	}

	public Integer getHold() {
		return hold;
	}

	public void setHold(Integer hold) {
		this.hold = hold;
	}

	public Integer getEra() {
		return era;
	}

	public void setEra(Integer era) {
		this.era = era;
	}

	public Integer getSv() {
		return sv;
	}

	public void setSv(Integer sv) {
		this.sv = sv;
	}

	public Integer getSvo() {
		return svo;
	}

	public void setSvo(Integer svo) {
		this.svo = svo;
	}

	public Integer getIp() {
		return ip;
	}

	public void setIp(Integer ip) {
		this.ip = ip;
	}

	public Integer getPitcherH() {
		return pitcherH;
	}

	public void setPitcherH(Integer pitcherH) {
		this.pitcherH = pitcherH;
	}

	public Integer getPitcherR() {
		return pitcherR;
	}

	public void setPitcherR(Integer pitcherR) {
		this.pitcherR = pitcherR;
	}

	public Integer getEr() {
		return er;
	}

	public void setEr(Integer er) {
		this.er = er;
	}

	public Integer getPitcherHr() {
		return pitcherHr;
	}

	public void setPitcherHr(Integer pitcherHr) {
		this.pitcherHr = pitcherHr;
	}

	public Integer getPitcherBb() {
		return pitcherBb;
	}

	public void setPitcherBb(Integer pitcherBb) {
		this.pitcherBb = pitcherBb;
	}

	public Integer getPitcherSo() {
		return pitcherSo;
	}

	public void setPitcherSo(Integer pitcherSo) {
		this.pitcherSo = pitcherSo;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Float getAvg() {
		return avg;
	}

	public void setAvg(Float avg) {
		this.avg = avg;
	}

	public Float getObp() {
		return obp;
	}

	public void setObp(Float obp) {
		this.obp = obp;
	}

	public Float getSlg() {
		return slg;
	}

	public void setSlg(Float slg) {
		this.slg = slg;
	}

	public Float getOps() {
		return ops;
	}

	public void setOps(Float ops) {
		this.ops = ops;
	}

	public Float getPitcherAvg() {
		return pitcherAvg;
	}

	public void setPitcherAvg(Float pitcherAvg) {
		this.pitcherAvg = pitcherAvg;
	}

	public Float getWhip() {
		return whip;
	}

	public void setWhip(Float whip) {
		this.whip = whip;
	}

	public Float getFpct() {
		return fpct;
	}

	public void setFpct(Float fpct) {
		this.fpct = fpct;
	}

	

	public MultipartFile getFile() {
		return file;
	}




	public void setFile(MultipartFile file) {
		this.file = file;
	}




	public String getUserid() {
		return userid;
	}




	public void setUserid(String userid) {
		this.userid = userid;
	}




	public String getNick() {
		return nick;
	}




	public void setNick(String nick) {
		this.nick = nick;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getBirth() {
		return birth;
	}




	public void setBirth(String birth) {
		this.birth = birth;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getReceivemail() {
		return receivemail;
	}




	public void setReceivemail(String receivemail) {
		this.receivemail = receivemail;
	}




	public String getPreferTeam() {
		return preferTeam;
	}




	public void setPreferTeam(String preferTeam) {
		this.preferTeam = preferTeam;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getGrade() {
		return grade;
	}




	public void setGrade(String grade) {
		this.grade = grade;
	}




	public String getSysname() {
		return sysname;
	}




	public void setSysname(String sysname) {
		this.sysname = sysname;
	}




	public String getOriname() {
		return oriname;
	}




	public void setOriname(String oriname) {
		this.oriname = oriname;
	}




	@Override
	public String toString() {
		return "HomeVo [teamName=" + teamName + ", office=" + office + ", tel=" + tel + ", homepage=" + homepage
				+ ", teamId=" + teamId + ", teamBirth=" + teamBirth + ", win=" + win + ", lose=" + lose + ", draw="
				+ draw + ", game=" + game + ", home=" + home + ", owner=" + owner + ", president=" + president
				+ ", captin=" + captin + ", manager=" + manager + ", sysFile=" + sysFile + ", oriFile=" + oriFile
				+ ", ff=" + ff + ", winPer=" + winPer + ", cha=" + cha + ", yoil=" + yoil + ", game_time=" + game_time
				+ ", home_img=" + home_img + ", away_img=" + away_img + ", channel=" + channel + ", away=" + away
				+ ", stadium=" + stadium + ", status=" + status + ", year=" + year + ", month=" + month + ", day=" + day
				+ ", game_num=" + game_num + ", away_score=" + away_score + ", home_score=" + home_score + ", statnum="
				+ statnum + ", g=" + g + ", gs=" + gs + ", inn=" + inn + ", tc=" + tc + ", po=" + po + ", a=" + a
				+ ", e=" + e + ", dp=" + dp + ", rf=" + rf + ", ab=" + ab + ", r=" + r + ", h=" + h + ", twoBase="
				+ twoBase + ", thirdBase=" + thirdBase + ", hr=" + hr + ", rbi=" + rbi + ", bb=" + bb + ", so=" + so
				+ ", sb=" + sb + ", cs=" + cs + ", w=" + w + ", l=" + l + ", hold=" + hold + ", era=" + era + ", sv="
				+ sv + ", svo=" + svo + ", ip=" + ip + ", pitcherH=" + pitcherH + ", pitcherR=" + pitcherR + ", er="
				+ er + ", pitcherHr=" + pitcherHr + ", pitcherBb=" + pitcherBb + ", pitcherSo=" + pitcherSo
				+ ", regDate=" + regDate + ", avg=" + avg + ", obp=" + obp + ", slg=" + slg + ", ops=" + ops
				+ ", pitcherAvg=" + pitcherAvg + ", whip=" + whip + ", fpct=" + fpct + "]";
	}

	
	

}