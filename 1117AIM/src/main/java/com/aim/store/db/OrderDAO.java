package com.aim.store.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class OrderDAO {
   
   private Connection con = null;
   private PreparedStatement pstmt = null;
   private ResultSet rs = null;
   private String sql = "";
   
   // 디비 연결해주는 메서드(커넥션풀)
   private Connection getConnection() throws Exception{
      
      // 1. 드라이버 로드 // 2. 디비연결
      // Context 객체 생성 (JNDI API)
      Context initCTX = new InitialContext(); // 업캐스팅 관계
      // 디비연동 정보 불러오기 (context.xml 파일정보)
      DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/AIM"); // 다운캐스팅
      // 디비정보(연결) 불러오기
      con = ds.getConnection();
      
      System.out.println(" DAO : 디비연결 성공(커넥션풀) ");
      System.out.println(" DAO : con "+ con);
      
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
      
      // 주문정보 저장 - addOrder(OrderDTO oDTO,ArrayList ctList,ArrayList gcList)
      public void addOrder(OrderDTO oDTO,ArrayList ctList,ArrayList gcList) {
         int o_num = 0; // 일련번호
         
         Calendar cal = Calendar.getInstance();
         SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
         int o_cnum = 0; // 주문번호
         
         try {
            con = getConnection();
            sql = "select max(o_num) from class7_220721_team3.order";
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if(rs.next()) {
               o_num = rs.getInt(1)+1;
            }
            
            o_cnum = o_num;
            
            // 주문정보 저장
            for(int i=0;i<ctList.size();i++) {
               CartDTO ctDTO = (CartDTO)ctList.get(i);
               StoreDTO stDTO = (StoreDTO)gcList.get(i); // 아 이거 이름바꿔 productList
               
               
               sql = "insert into class7_220721_team3.order "
                     + "values(?,?,?,?,?,?,?,?,?,now(),?)";
               pstmt = con.prepareStatement(sql);
               
               pstmt.setInt(1, o_num); // 일련번호
               pstmt.setString(2, sdf.format(cal.getTime())+"-"+o_cnum); // 주문번호
               pstmt.setInt(3, ctDTO.getSt_num()); // 주문한 상품번호
               pstmt.setString(4, stDTO.getSt_name()); // 상품이름
               pstmt.setInt(5, ctDTO.getC_amount()); // 상품수량
               pstmt.setString(6, oDTO.getO_id()); // 주문자 아이디
               pstmt.setString(7, oDTO.getO_tel()); // 주문자 전화번호
               pstmt.setInt(8, ctDTO.getC_amount() * stDTO.getSt_price()); // 구매 총액
               pstmt.setString(9, oDTO.getO_pay()); // 결제방법
               pstmt.setInt(10, oDTO.getO_refund()); // 환불가능여부
               
               pstmt.executeUpdate();
               
               o_num++;
            }
            
            System.out.println(" DAO : 주문정보 저장 완료");
            
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            closeDB();
         }
      }
      // 주문정보 저장 - addOrder(OrderDTO oDTO,ArrayList ctList,ArrayList gcList)
      
      // 주문목록 가져오는 메서드 - getOrderList()

      public List<OrderDTO> getOrderList(String id) {
  		List<OrderDTO> orderList = new ArrayList<>();
  		
		try {
			con = getConnection();
			sql = "select o_num,o_cnum,o_stnum,o_name,o_amount,o_id,o_tel,o_sum,o_pay,o_pdate,o_refund "
					+ "from class7_220721_team3.order "
					+ "where o_id=? "
					+ "group by o_cnum "
					+ "order by o_cnum desc";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				OrderDTO dto = new OrderDTO();
				
				dto.setO_num(rs.getInt(1));
				dto.setO_cnum(rs.getString(2));
				dto.setO_stnum(rs.getInt(3));
				dto.setO_name(rs.getString(4));
				dto.setO_amount(rs.getInt(5));
				dto.setO_id(rs.getString(6));
				dto.setO_tel(rs.getString(7));
				dto.setO_sum(rs.getInt(8));
				dto.setO_pay(rs.getString(9));
				dto.setO_pdate(rs.getTimestamp(10));
				dto.setO_refund(rs.getInt(11));
				
				orderList.add(dto);
			}
			
			System.out.println(" DAO : " + id + "님 주문 저장 완료 " + orderList.size());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
    	  return orderList;
      }
      
      // 주문목록 가져오는 메서드 - getOrderList()
      
      // 주문 번호에 해당하는 상세정보 - orderDetail(o_cnum)
      public List<OrderDTO> orderDetail(String o_cnum) {
    	  List<OrderDTO> orderList = new ArrayList<>();
    	  
    	  try {
			con = getConnection();
			sql = "select * from order where o_cnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, o_cnum);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				OrderDTO dto = new OrderDTO();
				
				dto.setO_name(rs.getString("o_name"));
				dto.setO_amount(rs.getInt("o_amount"));
				dto.setO_pdate(rs.getTimestamp("o_pdate"));
				dto.setO_cnum(rs.getString("o_cnum"));
				dto.setO_sum(rs.getInt("o_sum"));
				dto.setO_refund(rs.getInt("o_refund"));
				dto.setO_pay(rs.getString("o_pay"));
				
				orderList.add(dto);
			}
			System.out.println(" DAO : 주문번호 상세정보 조회 성공 ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
    	  
    	  return orderList;
      }  // 주문 번호에 해당하는 상세정보 - orderDetail(o_cnum)
      
      
}
