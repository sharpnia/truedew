package com.td.truedew.product.phoneitem;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.td.truedew.util.DBManager;


public class PhoneItemDAO {

	private static final PhoneItemDAO PIDAO = new PhoneItemDAO();
	
	private PhoneItemDAO() {
	}
	
	public static PhoneItemDAO getPIDAO() {
		return PIDAO;
	}
	
	public void deletePhoneItem(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();

			int PHONEITEM_NO = Integer.parseInt(request.getParameter("PHONEITEM_NO"));
			
			String sql = "delete from TD_PhoneItem where PHONEITEM_NO=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, PHONEITEM_NO);

			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "장바구니 삭제 성공");
			} else {
				request.setAttribute("r", "장바구니 삭제 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "장바구니 삭제 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
//	public void SelectPhoneItem(HttpServletRequest request, HttpServletResponse response) {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		try {
//			con = DBManager.connect();
//
//			String path = request.getServletContext().getRealPath("etc");
//
//			MultipartRequest mr = new MultipartRequest(request, path, 31457280, "euc-kr",
//					new DefaultFileRenamePolicy());
//
//			int PHONEITEM_NO = Integer.parseInt(mr.getParameter("PHONEITEM_NO"));
//			String PHONEITEM_NAME = mr.getParameter("PHONEITEM_NAME");
//			String PHONEITEM_DETAIL = mr.getParameter("PHONEITEM_DETAIL");
//			String PHONEITEM_IMG = mr.getParameter("PHONEITEM_IMG");
//			int PHONEITEM_PRICE = Integer.parseInt(mr.getParameter("PHONEITEM_PRICE")); 
//			int PHONEITEM_STOCK = Integer.parseInt(mr.getParameter("PHONEITEM_STOCK"));
//			int CATEGORY_NO = Integer.parseInt("CATEGORY_NO");
//
//			HttpSession hs = request.getSession();
//			Member m2 = (Member) hs.getAttribute("loginMember");
//
//			String im_img = mr.getFilesystemName("PHONEITEM_img");
//			if (im_img != null) {
//				im_img = URLEncoder.encode(im_img, "euc-kr");
//				im_img = im_img.replace("+", " ");
//
//				// 이전 파일 지우기
//				String oldImg = m2.getPHONEITEM_img();
//				oldImg = URLDecoder.decode(oldImg, "euc-kr");
//				File oldFile = new File(path + "/" + oldImg);
//				oldFile.delete();
//
//			} else {
//				im_img = m2.getIm_img();
//			}
//			String sql = "update TD_PHONEITEM "
//					+ "set PHONEITEM_NAME=?, " 
//					+ "PHONEITEM_DETAIL=?, PHONEITEM_img=?, "
//					+ "PHONEITEM_PRICE=?, PHONEITEM_STOCK=?"
//					+ "where PHONEITEM_NO=?";
//
//			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(6, PHONEITEM_NO);
//			pstmt.setString(1, PHONEITEM_NAME);
//			pstmt.setString(2, PHONEITEM_DETAIL);
//			pstmt.setString(3, PHONEITEM_IMG);
//			pstmt.setInt(5, PHONEITEM_PRICE);
//			pstmt.setInt(4, PHONEITEM_STOCK);
//
//			if (pstmt.executeUpdate() == 1) {
//				Member m = new Member();
//				m.setIm_id(im_id);
//				m.setIm_pw(im_pw);
//				m.setIm_name(im_name);
//				m.setIm_addr(im_addr);
//				m.setIm_img(im_img);
//				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//				m.setIm_birthday(sdf.parse(im_birthday));
//
//				// HttpSession hs = request.getSession();
//				hs.setAttribute("loginMember", m);
//
//				request.setAttribute("r", "장바구니 담기 성공");
//			} else {
//				request.setAttribute("r", "장바구니 담기 실패");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			request.setAttribute("r", "장바구니 담기  실패");
//		} finally {
//			DBManager.close(con, pstmt, null);
//		}
//	}
//	
	
	
	
	
	
	
	
	
	
	}
