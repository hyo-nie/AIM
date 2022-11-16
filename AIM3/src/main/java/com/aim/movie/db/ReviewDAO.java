package com.aim.movie.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReviewDAO {

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
  //DB 연결
          
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
   * getReviewList(movieCD) : 해당 영화의 리뷰 글 정보를 가져오는 메서드
   */
  public ArrayList getReviewList(String movieCd) {
    ArrayList reviewList = new ArrayList();
    
    try {
      con = getConnection();
      sql = "select * from review where movieCd=?";
      pstmt = con.prepareStatement(sql);
      pstmt.setString(1, movieCd);
      rs = pstmt.executeQuery();
      
      while(rs.next()) {
        ReviewDTO dto = new ReviewDTO();
        dto.setMovieCd(rs.getString("movieCd"));
        dto.setReviewNo(rs.getInt("reviewNo"));
        dto.setReview(rs.getString("review"));
        dto.setDate(rs.getTimestamp("date"));
        dto.setMb_nick(rs.getString("mb_nick"));
        
        reviewList.add(dto);
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally { 
      closeDB();
    }
    
    return reviewList;
  }
  //getReviewList(movieCD) 끝
  
  
  /**
   * getReviewCount(movieCD) : 해당 영화의 리뷰 글 전체 개수를 출력하는 메서드
   */
  public int getReviewCount(String movieCd) {
	  ReviewDTO dto = new ReviewDTO();
	  int cnt = 0;
	  	  
	  try {
		con = getConnection();
		sql = "select count(*) from review where movieCd=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, movieCd);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			cnt = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		closeDB();
	}
	return cnt;  
  }
  //getReviewCount(movieCD) 끝
  
  
  /**
   * insertReview(DTO) : 리뷰쓰기 메서드
   */
  public void insertReview(ReviewDTO dto) {
	  int reviewNo = 0;
	  
	  try {
		con = getConnection();
		sql = "select max(reviewNo) from review";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			reviewNo = rs.getInt(1)+1;
		}
		
		sql = "insert into review(reviewNo,review,date,movieCd,mb_nick) values(?,?,now(),?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, reviewNo);
		pstmt.setString(2, dto.getReview());
		pstmt.setString(3, dto.getMovieCd());
		pstmt.setString(4, dto.getMb_nick());
		pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		closeDB();
	}
  }
  //insertReview(DTO) 끝
  
  
  
  
  
}
