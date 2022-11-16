package com.aim.movie.db;

import java.sql.Timestamp;

public class ReviewDTO {
  private int reviewNo;   //리뷰번호
  private String review;  //리뷰내용
  private Timestamp date;      //작성날짜
  private String movieCd; //영화코드
  private String mb_nick; //작성자닉네임
  
  public int getReviewNo() {
    return reviewNo;
  }
  public void setReviewNo(int reviewNo) {
    this.reviewNo = reviewNo;
  }
  public String getReview() {
    return review;
  }
  public void setReview(String review) {
    this.review = review;
  }
  public Timestamp getDate() {
    return date;
  }
  public void setDate(Timestamp date) {
    this.date = date;
  }
  public String getMovieCd() {
    return movieCd;
  }
  public void setMovieCd(String movieCd) {
    this.movieCd = movieCd;
  }
  public String getMb_nick() {
    return mb_nick;
  }
  public void setMb_nick(String mb_nick) {
    this.mb_nick = mb_nick;
  }
  
  @Override
  public String toString() {
	  return "ReviewDTO [reviewNo=" + reviewNo + ", review=" + review + ", date=" + date + ", movieCd=" + movieCd
				+ ", mb_nick=" + mb_nick + "]";
	}
}
