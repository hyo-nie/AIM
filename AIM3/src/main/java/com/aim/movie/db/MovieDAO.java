package com.aim.movie.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MovieDAO {
  private Connection con = null;
  private PreparedStatement pstmt = null;
  private ResultSet rs = null;
  private String sql = "";
  
  // DB 연결
  private Connection getConnection() throws Exception{
   Context initCTX = new InitialContext();     

   DataSource ds = (DataSource)initCTX.lookup("java:comp/env/jdbc/AIM");   

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
      rs= pstmt.executeQuery();
      
      if(rs.next()) {
        dto = new MovieDTO();
                
        dto.setMovieNm(rs.getString("MovieNm"));
        dto.setOpenDt(rs.getString("openDt"));
        dto.setGenreAlt(rs.getString("genreAlt"));
        dto.setDirector(rs.getString("director"));
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
  
  //영화 정보 메서드 - getMovieList(movieCd)
  
  /**
   * setMovie(dto) 메서드
   */
//  public MovieDTO setMovie(String movieCd) {
//	  
//  }
  
}
