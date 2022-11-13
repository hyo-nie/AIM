package com.aim.movie.db;

import java.sql.Date;

public class ReviewDTO {
  private int reviewNo;   //리뷰번호
  private String review;  //리뷰내용
  private Date date;      //작성날짜
  private String movieCd; //영화코드
  private String mb_id;   //작성자
  
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
  public Date getDate() {
    return date;
  }
  public void setDate(Date date) {
    this.date = date;
  }
  public String getMovieCd() {
    return movieCd;
  }
  public void setMovieCd(String movieCd) {
    this.movieCd = movieCd;
  }
  public String getMb_id() {
    return mb_id;
  }
  public void setMb_id(String mb_id) {
    this.mb_id = mb_id;
  }
  
  @Override
  public String toString() {
    return "ReviewDTO [reviewNo=" + reviewNo + ", review=" + review + ", date=" + date + ", movieCd=" + movieCd
        + ", mb_id=" + mb_id + "]";
  }
  
}
