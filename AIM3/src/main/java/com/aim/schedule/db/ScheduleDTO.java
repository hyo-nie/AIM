package com.aim.schedule.db;

public class ScheduleDTO {
	private int scCode;
	private String sc_date;
	private String starttime;
	private String movieCd;
	private int roomCd;
	private int branchCd;
	private String branch_name;
	private int completeCnt;
	private int totalseatCnt;
	
	public int getScCode() {
		return scCode;
	}
	public void setScCode(int scCode) {
		this.scCode = scCode;
	}
	public String getSc_date() {
		return sc_date;
	}
	public void setSc_date(String sc_date) {
		this.sc_date = sc_date;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getMovieCd() {
		return movieCd;
	}
	public void setMovieCd(String movieCd) {
		this.movieCd = movieCd;
	}
	public int getRoomCd() {
		return roomCd;
	}
	public void setRoomCd(int roomCd) {
		this.roomCd = roomCd;
	}
	public int getBranchCd() {
		return branchCd;
	}
	public void setBranchCd(int branchCd) {
		this.branchCd = branchCd;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public int getCompleteCnt() {
		return completeCnt;
	}
	public void setCompleteCnt(int completeCnt) {
		this.completeCnt = completeCnt;
	}
	public int getTotalseatCnt() {
		return totalseatCnt;
	}
	public void setTotalseatCnt(int totalseatCnt) {
		this.totalseatCnt = totalseatCnt;
	}
	
	@Override
	public String toString() {
		return "ScheduleDTO [scCode=" + scCode + ", sc_date=" + sc_date + ", starttime=" + starttime + ", movieCd="
				+ movieCd + ", roomCd=" + roomCd + ", branchCd=" + branchCd + ", branch_name=" + branch_name
				+ ", completeCnt=" + completeCnt + ", totalseatCnt=" + totalseatCnt + "]";
	}
	
	
	
	
}
