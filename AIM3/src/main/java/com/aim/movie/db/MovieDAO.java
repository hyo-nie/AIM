package com.aim.movie.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.json.JSONObject;

public class MovieDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// DB 연결
	private Connection getConnection() throws Exception {
		Context initCTX = new InitialContext();

		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/AIM");

		con = ds.getConnection();

		return con;
	}
	// DB 연결

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
	}
	// 자원해제

	/**
	 * 영화 정보 메서드 - getMovieList(movieCd)
	 * 
	 */
	public MovieDTO getMovieList(String movieCd) {
		MovieDTO dto = null;

		try {
			con = getConnection();
			sql = "select * from movie where movieCd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getMovieCd());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto = new MovieDTO();

				dto.setMovieNm(rs.getString("MovieNm"));
				dto.setOpenDt(rs.getString("openDt"));
				dto.setGenreNm(rs.getString("genreNm"));
				dto.setDirectors(rs.getString("directors"));
				dto.setPoster(rs.getString("poster"));
				dto.setAudiAcc(rs.getInt("audiAcc"));
				dto.setBookRating(rs.getInt("bookRating"));
				dto.setWatchGradeNm(rs.getString("watchGradeNm"));
				dto.setShowTm(rs.getString("showTm"));
				dto.setActors(rs.getString("actors"));
				dto.setContents(rs.getString("contents"));
			}
			System.out.println("DAO : 영화 정보 저장 완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return dto;
	}

	/**
	 * 
	 * adminInsertMovie(JSONObject) : 관리자가 DB에 API로 받아온 영화 정보를 저장하는 메서드
	 */
	
	public void adminInsertMovie(JSONObject movieInfo) {
		
		try {
			con = getConnection();
			sql = "insert into movie(movieCd,movieNm,openDt,genreNm,directors,poster,audiAcc,bookRating,watchGradeNm,showTm,actors,contents) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, movieInfo.getString("movieCd")); // 영화코드
			pstmt.setString(2, movieInfo.getString("movieNm")); // 영화제목
			pstmt.setString(3, movieInfo.getString("openDt")); // 개봉일자
			pstmt.setString(4, movieInfo.getString("genreNm[0]")); // 장르
			pstmt.setString(5, movieInfo.getString("directors[0]")); // 감독
			pstmt.setString(6, "image(임시값)"); // 포스터 (일단 보류 @@@@@@@@@@@@)
			
			
			pstmt.setInt(7, 0); // 총관객수 (일단 보류 @@@@@@@@@@@@)
			pstmt.setInt(8, 0); // 예매율 (일단 보류 @@@@@@@@@@@@)
			
			pstmt.setString(9, movieInfo.getString("watchGradeNm")); // 관람등급
			pstmt.setString(10, movieInfo.getString("showTm")); // 상영시간
			pstmt.setString(11, movieInfo.getString("actors[0]")); // 배우
			pstmt.setString(12, "임 시 값 입 니 다"); // 줄거리/내용 (일단 보류 @@@@@@@@@@@@)
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
	} // adminInsertMovie 끝






}
