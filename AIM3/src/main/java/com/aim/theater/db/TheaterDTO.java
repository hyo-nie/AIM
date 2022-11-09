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
	
}
