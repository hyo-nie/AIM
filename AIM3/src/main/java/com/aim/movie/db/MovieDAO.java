package com.aim.movie.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

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
   * allMovieList() : 영화탭 첫페이지에서 영화의 정보를 보여주는 메서드
   */
  public List allMovieList() {
      List movieList = new ArrayList();
      MovieDTO dto = null;
      
      try {
        con = getConnection();
        sql = "select * from movie order by boxrank asc";
        pstmt = con.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        while(rs.next()) {
          dto = new MovieDTO();
          
          dto.setMovieCd(rs.getString("movieCd"));
          dto.setMovieNm(rs.getString("movieNm"));
          dto.setOpenDt(rs.getString("openDt"));
          dto.setGenreNm(rs.getString("genreNm"));
          dto.setDirectors(rs.getString("directors"));
          dto.setPoster(rs.getString("poster"));
          dto.setAudiAcc(rs.getInt("audiAcc"));
          dto.setBookRating(rs.getDouble("bookRating"));
          dto.setWatchGradeNm(rs.getString("watchGradeNm"));
          dto.setShowTm(rs.getString("showTm"));
          dto.setActors(rs.getString("actors"));
          dto.setContents(rs.getString("contents"));
          dto.setBoxrank(rs.getInt("boxrank"));
          
          movieList.add(dto);
        }
        System.out.println("DAO : 영화 정보 저장 완료");
        
      } catch (Exception e) {
        e.printStackTrace();
      } finally {
        closeDB();
      }
      return movieList;
    }
    //allMovieList() 끝
  
  
  /**
   * getMovieDetail(movieCd) : 특정 영화의 상세정보를 보여주는 메서드
   * 
   */
  public MovieDTO getMovieDetail(String movieCd) {
    MovieDTO dto = new MovieDTO();
    
    try {
      con = getConnection();
      sql = "select * from movie where movieCd=?";
      pstmt = con.prepareStatement(sql);
      pstmt.setString(1, movieCd);
      rs = pstmt.executeQuery();
      
      if(rs.next()) {
        dto.setMovieCd(rs.getString("movieCd"));
        dto.setMovieNm(rs.getString("movieNm"));
        
        String oDate = rs.getString("openDt");
        String dd = oDate.substring(6);
        String MM = oDate.substring(4,6);
        String yyyy = oDate.substring(0, 4);
        oDate = yyyy + "." + MM + "." + dd; 
        dto.setOpenDt(oDate);
        
        dto.setGenreNm(rs.getString("genreNm"));
        dto.setDirectors(rs.getString("directors"));
        dto.setPoster(rs.getString("poster"));
        dto.setAudiAcc(rs.getInt("audiAcc"));
        dto.setBookRating(rs.getDouble("bookRating"));
        dto.setWatchGradeNm(rs.getString("watchGradeNm"));
        dto.setShowTm(rs.getString("showTm"));
        dto.setActors(rs.getString("actors"));
        dto.setContents(rs.getString("contents"));
        dto.setBoxrank(rs.getInt("boxrank"));
      }
      System.out.println("DAO : 영화 정보 저장 완료");
      
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      closeDB();
    }
    return dto;
  }
  //getMovieDetail(movieCd) 끝

	/**
	 * 
	 * adminInsertMovie(JSONObject) : 관리자가 DB에 API로 받아온 영화 정보를 저장하는 메서드, 중복값은 빼고 저장
	 */
	public void adminInsertMovie(JSONObject movieInfo, int audiAcc, int boxrank, double bookRating, String poster) {
		
		try {
			con = getConnection();
			
			// DB안에 중복된 movieCd(PK)가 있는지 확인
			
			sql = "select * from movie where movieCd = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, movieInfo.getString("movieCd"));
			rs = pstmt.executeQuery();
			
			// 데이터 처리
			
			if (rs.next()) {
				// DB에 movieCd가 똑같은 영화가 있으면
				System.out.println(" DAO : 이미 등록된 영화입니다! movidNm : " + movieInfo.getString("movieNm"));
			} else {
				// 파라미터로 받은 무비코드가 DB에 없으면
				sql = "insert into movie(movieCd,movieNm,openDt,genreNm,directors,poster,audiAcc,bookRating,watchGradeNm,showTm,actors,contents,boxrank) "
						+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, movieInfo.getString("movieCd")); // 영화코드
				pstmt.setString(2, movieInfo.getString("movieNm")); // 영화제목
				pstmt.setString(3, movieInfo.getString("openDt")); // 개봉일자
				
				// 장르값 추출
				JSONArray movieGenreArr = movieInfo.getJSONArray("genres");
				JSONObject movieGenre = movieGenreArr.getJSONObject(0);
				pstmt.setString(4, movieGenre.getString("genreNm")); // 장르
				
				// 감독값 추출
				JSONArray movieDirectorArr = movieInfo.getJSONArray("directors");
				JSONObject movieDirector = movieDirectorArr.getJSONObject(0);
				pstmt.setString(5, movieDirector.getString("peopleNm")); // 감독
				
				pstmt.setString(6, poster); // 포스터
				
				pstmt.setInt(7, audiAcc); // 총관객수
				pstmt.setDouble(8, bookRating); // 예매율
				
				// 관람등급 추출
				JSONArray movieAuditsArr = movieInfo.getJSONArray("audits");
				JSONObject movieWatchGradeNm = movieAuditsArr.getJSONObject(0);
				pstmt.setString(9, movieWatchGradeNm.getString("watchGradeNm")); // 관람등급
				
				pstmt.setString(10, movieInfo.getString("showTm")); // 상영시간
				
				// 배우 추출
				JSONArray actorsArr = movieInfo.getJSONArray("actors");
				StringBuffer actorsStringBuffer = new StringBuffer();
				for (int i = 0; i < actorsArr.length(); i++) {
					JSONObject actorsObject = actorsArr.getJSONObject(i);
					if (i == actorsArr.length()-1) {
						actorsStringBuffer.append(actorsObject.getString("peopleNm"));
					} else {
						actorsStringBuffer.append(actorsObject.getString("peopleNm")+",");
					}
				}
				String actors = actorsStringBuffer.toString();
				pstmt.setString(11, actors); // 배우
				
				pstmt.setString(12, "임 시 값 입 니 다"); // 줄거리/내용 (일단 보류, 크롤링 해서 가져올 예정 @@@@@@@@@@@@@@@@@@@@@@@@@@)
				pstmt.setInt(13, boxrank); // 순위
				
				
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 영화 등록 완료! movieNm : " + movieInfo.getString("movieNm"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
	} // adminInsertMovie 끝
	
	/**
	 * 관리자용 영화 목록 조회 - adminGetMovieList() : 관리자용 movie테이블 모든 정보 조회 메서드
	 */
	public List<MovieDTO> adminGetMovieList() {
		List<MovieDTO> list = null;
		
		try {
			con = getConnection();
			sql = "select * from movie order by boxrank";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			list = new ArrayList<MovieDTO>();
			while(rs.next()) {
				MovieDTO dto = new MovieDTO();
				
				dto.setActors(rs.getString("actors"));
				dto.setAudiAcc(rs.getInt("audiAcc"));
				dto.setBookRating(rs.getDouble("bookRating"));
				dto.setContents(rs.getString("contents"));
				dto.setDirectors(rs.getString("directors"));
				dto.setGenreNm(rs.getString("genreNm"));
				dto.setMovieCd(rs.getString("movieCd"));
				dto.setMovieNm(rs.getString("movieNm"));
				dto.setOpenDt(rs.getString("openDt"));
				dto.setPoster(rs.getString("poster"));
				dto.setShowTm(rs.getString("showTm"));
				dto.setWatchGradeNm(rs.getString("watchGradeNm"));
				dto.setBoxrank(rs.getInt("boxrank"));
				
				list.add(dto);
			}
			
			System.out.println(" DAO : 관리자 영화 목록 조회 완료 ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return list;
	} // adminGetMovieList 끝

	/**
	 * adminDeleteMoiveAll() - movie 테이블의 데이터를 모두 지우는 메서드 !!수정사항 : rank 컬럼이 1 ~ 10인 무비만 삭제하도록 변경
	 */
	public void adminDeleteRankMoive() {
		
		try {
			con = getConnection();
			sql = "delete from movie where boxrank <= 10;";
			pstmt = con.prepareStatement(sql);
			
			pstmt.executeUpdate();
			
			System.out.println(" DAO : movie 테이블 삭제 완료 ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
	} // adminDeleteMoiveAll 끝
	
	/**
	 * 크롤링해서 cgv에서 title(제목), percents(예매율), image(포스터) 가져오는 메서드
	 */
	public static List<MovieVo> getCGVdata() throws Exception{
		
		Document doc = Jsoup.connect("http://www.cgv.co.kr/movies/?lt=1&ft=0").get();
  
        Elements titles = doc.select("div.box-contents strong.title");        
        Elements percents = doc.select("div.box-contents div.score strong.percent span");
        Elements images = doc.select("div.box-image a span.thumb-image img");
        
        List<MovieVo> list = new ArrayList<MovieVo>();
        
        for(int i = 0; i < 19; i++) {
        	Element title = titles.get(i);
        	Element percent = percents.get(i);
        	
        	String image = images.get(i).attr("src");
        	String t = title.text();
        	String p = percent.text();
        	
        	double pv = Double.parseDouble(p.replace("%",""));
        	
        	MovieVo vo = new MovieVo(t, pv, image);
        	
        	list.add(vo);
        }
        
        return list;
        
	}
	
	
}



