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
	
	@Override
	public String toString() {
		return "TheaterDTO [scCode=" + scCode + ", branchCd=" + branchCd + ", roomCd=" + roomCd + ", starttime="
				+ starttime + ", sc_date=" + sc_date + ", movieNm=" + movieNm + ", branch_name=" + branch_name
				+ ", branch_addr=" + branch_addr + "]";
	}
	
}
