package com.aim.store.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.aim.store.db.CartDTO;

public class CartDAO {

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	// 디비 연결해주는 메서드(커넥션풀)
	private Connection getConnection() throws Exception{
		
		// 1. 드라이버 로드 // 2. 디비연결
		
		// Context 객체 생성 (JNDI API)
		Context initCTX = new InitialContext(); 
		// 디비연동 정보 불러오기 (context.xml 파일정보)
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/AIM"); 
		// 디비정보(연결) 불러오기
		con = ds.getConnection();
		System.out.println(" DAO : 디비연결 성공(커넥션풀) con "+ con);
		
		return con;
	}
		
		// 자원해제 메서드-closeDB()
		public void closeDB() {
			System.out.println("DAO : 디비연결자원 해제");
			
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		// 자원해제 메서드 - closeDB()
		
		// 기존의 장바구니 체크 - checkCart(DTO)
		public boolean checkcart(CartDTO dto) {
			boolean result = false;
			
			try {
				con = getConnection();
				sql = "select * from cart where mb_id=? and st_num=?"; // 기존의 동일 상품이 있는지 체크
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, dto.getMb_id());
				pstmt.setInt(2, dto.getSt_num());
				
				rs = pstmt.executeQuery();
				
				// data가 있다면
				if(rs.next()) { // 기존의 동일상품이 존재 -> 수량만 update
					sql = "update cart set c_amount=c_amount+? where mb_id=? and st_num=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, dto.getC_amount());
					pstmt.setString(2, dto.getMb_id());
					pstmt.setInt(3, dto.getSt_num());
					
					int tmp = pstmt.executeUpdate();
					if(tmp == 1) {
						result = true;
					}
				}
				System.out.println(" DAO : "+(result? "기존의 정보 수정":"기존의 상품 없음"));
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return result;
		}
		// 기존의 장바구니 체크 - checkCart()
		
		// 장바구니 상품 추가 - cartAdd(DTO)
		public void cartAdd(CartDTO dto) {
			int c_num = 0;
			try {
				con = getConnection();
				// 1) 장바구니 번호 c_num
				sql = "select max(c_num) from cart";
				pstmt = con.prepareStatement(sql);
				// select문의 결과는 rs에 담기
				rs = pstmt.executeQuery();
				if (rs.next()) {
					c_num = rs.getInt(1) + 1;
				}

				// 2) 장바구니 저장 (insert)

				sql = "insert into cart(c_num,st_num,c_amount,st_name,mb_id) values(?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);

				pstmt.setInt(1, c_num);
				pstmt.setInt(2, dto.getSt_num());
				pstmt.setInt(3, dto.getC_amount());
				pstmt.setString(4, dto.getSt_name());
				pstmt.setString(5, dto.getMb_id());

				pstmt.executeUpdate();

				System.out.println(" DAO : 장바구니 등록완료! ");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
		}
		// 장바구니 상품 추가 - cartAdd(DTO)
		
		// 장바구니 상품목록 조회 - getCartList(mb_id)
		public ArrayList getCartList(String mb_id) { // 여기서 mb_id를 어떻게 받아올지 고민해야함,, memberDTO에서 받아와야하나(?)

			ArrayList totalList = new ArrayList();
			List cartList = new ArrayList();
			List giftcardList = new ArrayList();
			
			try {
				con = getConnection();
				sql = "select * from cart where mb_id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, mb_id);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					CartDTO cDTO = new CartDTO();
					
					cDTO.setC_num(rs.getInt("c_num"));
					cDTO.setSt_num(rs.getInt("st_num"));
					cDTO.setC_amount(rs.getInt("c_amount"));
					cDTO.setSt_name(rs.getString("st_name"));
					cDTO.setMb_id(rs.getString("mb_id"));
					
					cartList.add(cDTO);
					System.out.println(" DAO : "+cartList);
					
					// 장바구니에 들어있는 상품정보 조회
					sql = "select * from store where st_num=?";
					PreparedStatement pstmt2 = con.prepareStatement(sql);
					pstmt2.setInt(1, cDTO.getSt_num());
					ResultSet rs2 = pstmt2.executeQuery();
					
					if(rs2.next()) {
						StoreDTO sDTO = new StoreDTO();
						
						sDTO.setSt_num(rs2.getInt("st_num"));
						sDTO.setSt_name(rs2.getString("st_name"));
						sDTO.setSt_price(rs2.getInt("st_price"));
						sDTO.setSt_img(rs2.getString("st_img")); // st_text는 필요없을거같아서 저장 안함
						sDTO.setCategory_name(rs2.getString("category_name"));
						sDTO.setCategory_code(rs2.getString("category_code"));
						
						giftcardList.add(sDTO);
						System.out.println(" DAO : "+giftcardList);
					} // 상품정보 저장완료
				
				}
				// totalList에 저장해줌
				
				totalList.add(cartList);
				totalList.add(giftcardList);
				
				System.out.println(" DAO : 장바구니, 상품정보 저장 완료 ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return totalList;
		}
		// 장바구니 상품목록 조회 - getCartList(mb_id)
		
		// 장바구니 삭제(c_num) - deleteCart(c_num)
		
		public int deleteCart(int c_num) {
			int result = -1;
			
			try {
				con = getConnection();
				sql = "delete from cart where c_num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, c_num);
				result = pstmt.executeUpdate();
				
				System.out.println(" DAO : " + c_num + "번 장바구니 삭제 완료!");
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				closeDB();
			}
			
			return result;
		}
		// 장바구니 삭제(c_num) - deleteCart(c_num)
		
		// 장바구니 삭제(id) - deleteCart(id)
		
		public int deleteCart(String id) {
			int result = -1;
			
			try {
				con = getConnection();
				sql = "delete from cart where mb_id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				result = pstmt.executeUpdate();
				
				System.out.println(" DAO : " + id + "님 구매 후 장바구니 삭제 완료");
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				closeDB();
			}
			
			return result;
		}
		
		// 장바구니 삭제(id) - deleteCart(id)
		
}
