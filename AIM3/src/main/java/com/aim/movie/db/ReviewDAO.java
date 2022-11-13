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
   * getReviewList() : 리뷰 글 정보를 가져오는 메서드
   */
  public ArrayList getReviewList() {
    ArrayList reviewList = new ArrayList();
    
    try {
      con = getConnection();
      sql = "select * from review";
      pstmt = con.prepareStatement(sql);
      rs = pstmt.executeQuery();
      
      while(rs.next()) {
        ReviewDTO dto = new ReviewDTO();
        dto.setReviewNo(rs.getInt("reviewNo"));
        dto.setReview(rs.getString("review"));
        dto.setDate(rs.getDate("date"));
        dto.setMovieCd(rs.getString("movieCd"));
        dto.setMb_id(rs.getString("mb_id"));
        
        reviewList.add(dto);
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally { 
      closeDB();
    }
    
    return reviewList;
  }
  
  //getReviewList() 끝
  
}
