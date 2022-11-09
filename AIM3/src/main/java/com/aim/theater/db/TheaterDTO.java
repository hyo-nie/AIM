package com.aim.theater.db;

import lombok.Data;

@Data
public class TheaterDTO {
	private int scCode;
	private int branchCd;
	private int roomCd;
	private String starttime;
	private String sc_date;
	private String movieNm;
	
	private String branch_name;
	private String branch_addr;
	
	
	
	public int getScCode() {
		return scCode;
	}



	public void setScCode(int scCode) {
		this.scCode = scCode;
	}



	public int getBranchCd() {
		return branchCd;
	}



	public void setBranchCd(int branchCd) {
		this.branchCd = branchCd;
	}



	public int getRoomCd() {
		return roomCd;
	}



	public void setRoomCd(int roomCd) {
		this.roomCd = roomCd;
	}



	public String getStarttime() {
		return starttime;
	}



	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}



	public String getSc_date() {
		return sc_date;
	}



	public void setSc_date(String sc_date) {
		this.sc_date = sc_date;
	}



	public String getMovieNm() {
		return movieNm;
	}



	public void setMovieNm(String movieNm) {
		this.movieNm = movieNm;
	}



	public String getBranch_name() {
		return branch_name;
	}



	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}



	public String getBranch_addr() {
		return branch_addr;
	}



	public void setBranch_addr(String branch_addr) {
		this.branch_addr = branch_addr;
	}



	@Override
	public String toString() {
		return "TheaterDTO [scCode=" + scCode + ", branchCd=" + branchCd + ", roomCd=" + roomCd + ", starttime="
				+ starttime + ", sc_date=" + sc_date + ", movieNm=" + movieNm + ", branch_name=" + branch_name
				+ ", branch_addr=" + branch_addr + "]";
	}
	
}
