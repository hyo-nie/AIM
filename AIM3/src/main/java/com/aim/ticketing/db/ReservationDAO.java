package com.aim.ticketing.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.aim.schedule.db.ScheduleDTO;
import com.aim.theater.db.TheaterDTO;

public class ReservationDAO {

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// 디비 연결
	private Connection getConnection() throws Exception {
		Context initCTX = new InitialContext();

		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/AIM");

		con = ds.getConnection();

		return con;
	} // 디비 연결

	// 자원 해제
	public void closeDB() {
		System.out.println("DAO : 연결 자원 해제");
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // 자원해제

	/**
	 * getTheaterList() : 극장 정보 조회 메서드, List<TheaterDTO> 값 리턴
	 */
	public List<TheaterDTO> getTheaterList() {
		List<TheaterDTO> theaterList = null;
		
		try {
			con = getConnection();
			sql = "select * from theater";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			// 데이터처리
			theaterList = new ArrayList<TheaterDTO>();
			while(rs.next()) {
				TheaterDTO dto = new TheaterDTO();
				dto.setBranch_addr(rs.getString("branch_addr"));
				dto.setBranch_name(rs.getString("branch_name"));
				dto.setBranchCd(rs.getInt("branchCd"));
				
				theaterList.add(dto);
			}
			
			System.out.println(" DAO : 극장 리스트 조회 완료! ");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return theaterList;
	} // getTheaterList()
	
	
	/**
	 * getScheduleList() : 지점코드 (branchCd)를 파라미터로 받아서 해당 지점에서 상영하는 영화 목록 조회, List리턴, 영화정보 중복x
	 */
	public List<ScheduleDTO> getScheduleList(int branchCd) {
		List<ScheduleDTO> scheduleList = null;
		
		try {
			con = getConnection();
			sql = "select distinct movieCd from schedule where branchCd = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, branchCd);
			
			rs = pstmt.executeQuery();
			
			// 데이터 처리
			scheduleList = new ArrayList<ScheduleDTO>();
			
			while(rs.next()) {
				ScheduleDTO dto = new ScheduleDTO();
				
//				dto.setScCode(rs.getInt("scCode"));
//				dto.setSc_date(rs.getString("sc_date"));
//				dto.setRoomCd(rs.getInt("roomCd"));
//				dto.setStarttime(rs.getString("starttime"));
//				dto.setBranchCd(rs.getInt("branchCd"));
				dto.setMovieCd(rs.getString("movieCd"));
				
				scheduleList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return scheduleList;
	} // getScheduleList()
	
	
	
	

	
//	/**
//	 * getScheduleList() : 극장/상영관,좌석 정보 조회 메서드, List<ScheduleDTO> 값 리턴
//	 */
//	public List<ScheduleDTO> getScheduleList() {
//		List<ScheduleDTO> scheduleList = null;
//
//		try {
//			con = getConnection();
//			
//			sql = "SELECT A.scCode, A.sc_date, A.starttime, A.movieCd, A.roomCd, "
//					+ " B.branch_name, C.completeCnt, C.totalseatCnt "
//					+ " FROM schedule A JOIN theater B "
//					+ " ON A.branchCd = B.branchCd "
//					+ " JOIN room C "
//					+ " ON A.roomCd = C.roomCd";
//			pstmt = con.prepareStatement(sql);
//			
//			rs = pstmt.executeQuery();
//			
//			// 데이터 처리
//			scheduleList = new ArrayList<ScheduleDTO>();
//			
//			while(rs.next()) {
//				ScheduleDTO dto = new ScheduleDTO();
//				
//				dto.setScCode(rs.getInt("scCode"));
//				dto.setSc_date(rs.getString("sc_date"));
//				dto.setStarttime(rs.getString("starttime"));
//				dto.setMovieCd(rs.getString("movieCd"));
//				dto.setRoomCd(rs.getInt("roomCd"));
//				dto.setBranch_name(rs.getString("branch_name"));
//				dto.setCompleteCnt(rs.getInt("completeCnt"));
//				dto.setTotalseatCnt(rs.getInt("totalseatCnt"));
//				
//				
//				scheduleList.add(dto);
//			}
//			
//			System.out.println(" ReservationDAO : 극장/상영관/스케줄 정보 조회 완료 : " + scheduleList);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			closeDB();
//		}
//		return scheduleList;
//	} // getScheduleList()
}
