package com.aim.theater.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TheaterDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// 디비 연결해주는 메서드(커넥션풀)
	private Connection getConnection() throws Exception {
		// 1. 드라이버 로드 // 2. 디비연결

		// Context 객체 생성 (JNDI API)
		Context initCTX = new InitialContext();
		// 디비연동정보 불러오기 (context.xml 파일정보)
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/AIM");
		// 디비정보(연결) 불러오기
		con = ds.getConnection();

		System.out.println(" DAO : 디비연결 성공(커넥션풀) ");
		System.out.println(" DAO : con : " + con);

		return con;
	}

	// 자원해제 메서드-closeDB()
	public void closeDB() {
		System.out.println("DAO : 디비연결자원 해제");

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
	}
	// 자원해제 메서드-closeDB()
	
	//스케줄 리스트 - getScheList()
	public List getScheList(int branchCd) {
		List scheList = new ArrayList();
		
		try {
			con= getConnection();
			
			sql = "select * from schedule where branchCd=? order by sc_date";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, branchCd);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				TheaterDTO dto = new TheaterDTO();
				
				dto.setScCode(rs.getInt("scCode"));
				dto.setMovieNm(rs.getString("movieNm"));
				dto.setRoomCd(rs.getInt("roomCd"));
				dto.setSc_date(rs.getString("sc_date"));
				dto.setStarttime(rs.getString("starttime"));
				
				scheList.add(dto);
			}//while
			
			System.out.println("DAO : 스케줄 리스트 저장완료");
			System.out.println("DAO : "+scheList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeDB();
		}
		return scheList;
	}
	//스케줄 리스트 - getScheList()
	
	//지점 소개 - getBranchIntro()
	public TheaterDTO getBranchIntro(int branchCd) {
		TheaterDTO dto=null;
		try {
			// 1.2. 디비연결
			con = getConnection();
			// 3. sql 작성(select) & pstmt 객체
			sql = "select * from theater where branchCd = ?";
			pstmt = con.prepareStatement(sql);
			// ???
			pstmt.setInt(1, branchCd);
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터처리	
			if(rs.next()) {
				// 데이터있을때만 dto객체 생성
				dto = new TheaterDTO();
				
				// DB정보(rs) -> dto 저장
				
				dto.setBranch_name(rs.getString("branch_name"));
				dto.setBranch_addr(rs.getString("branch_addr"));
				
			}
			
			System.out.println(" DAO : 지점명, 주소 저장완료! ");
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return dto;
	}
	
	//지점 소개 - getBranchIntro()
}
