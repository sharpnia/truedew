package com.td.truedew.join;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.td.truedew.util.DBManager;

public class MemberDAO {
	private static final MemberDAO MDAO = new MemberDAO();

	public MemberDAO() {
		// TODO Auto-generated constructor stub
	}

	public static MemberDAO getMdao() {
		return MDAO;
	}

	public void join(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();

			String td_member_id = request.getParameter("td_member_id");
			String td_member_pw = request.getParameter("td_member_pw");
			// String im_pwChk = mr.getParameter("im_pwChk");
			String td_member_name = request.getParameter("td_member_name");
			String td_member_email1 = request.getParameter("td_member_email");
			String td_member_email2 = request.getParameter("td_member_email2");
			String td_member_email=td_member_email1+"@"+td_member_email2;
			String td_member_addr = request.getParameter("td_member_addr");
			String td_member_pn = request.getParameter("td_member_pn"); // "주민번호"
			String td_member_phone1 = request.getParameter("td_member_phone1"); // "주민번호"
			String td_member_phone2 = request.getParameter("td_member_phone2"); // "주민번호"
			String td_member_phone3 = request.getParameter("td_member_phone3"); // "주민번호"

			System.out.println(td_member_id);
			System.out.println(td_member_pw);
			System.out.println(td_member_name);
			System.out.println(td_member_email);
			System.out.println(td_member_addr);
			System.out.println(td_member_pn);
			System.out.println(td_member_phone1);
			System.out.println(td_member_phone2);
			System.out.println(td_member_phone3);

			String sql = "insert into TD_MEMBER values(?,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, td_member_id);
			pstmt.setString(2, td_member_pw);
			pstmt.setString(3, td_member_name);
			pstmt.setString(4, td_member_email);
			pstmt.setString(5, td_member_addr);
			pstmt.setString(6, td_member_pn);
			pstmt.setString(7, td_member_phone1);
			pstmt.setString(8, td_member_phone2);
			pstmt.setString(9, td_member_phone3);

			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "회원 가입 성공");
			} else {
				request.setAttribute("r", "회원 가입 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "회원 가입 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public void login(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.connect();

			String td_member_id = request.getParameter("td_member_id");
			String td_member_pw = request.getParameter("td_member_pw");
			System.out.println(td_member_id);
			System.out.println(td_member_pw);
			
			String sql = "select * from TD_MEMBER " + "where td_member_id=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, td_member_id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				String db_pw = rs.getString("td_member_pw");

				if (td_member_pw.equals(db_pw)) {

					Member m = new Member();
					m.setTd_member_id(td_member_id);
					m.setTd_member_pw(td_member_pw);
					m.setTd_member_name(rs.getString("td_member_name"));
					m.setTd_member_email(rs.getString("td_member_email"));
					m.setTd_member_pn(rs.getString("td_member_pn"));
					m.setTd_member_phone1(rs.getString("td_member_phone1"));
					m.setTd_member_phone2(rs.getString("td_member_phone2"));
					m.setTd_member_phone3(rs.getString("td_member_phone3"));

					//System.out.println("rs가져온이름 : "+rs.getString("td_member_name"));
					//System.out.println("세션가져온이름 : "+m.getTd_member_name());
					// 로그인 세션에 담기.
					HttpSession hs = request.getSession();
					hs.setAttribute("loginMember", m);
					hs.setMaxInactiveInterval(15 * 60); //

					// 로그인 상태 유지 체크했으면
					/*
					 * if (request.getParameter("im_autologin") != null) { Cookie autoLoginID = new
					 * Cookie("ihwacAutoLoginID", im_id); autoLoginID.setMaxAge(86400);
					 * response.addCookie(autoLoginID); }
					 */
				} else {
					request.setAttribute("r", "비밀번호 오류");
				}

			} else {
				request.setAttribute("r", "그런 계정 없음");
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}
	public boolean loginCheck(HttpServletRequest request, HttpServletResponse response) {
		HttpSession hs = request.getSession();
		Member m = (Member) hs.getAttribute("loginMember");

		if (m != null) {
			request.setAttribute("loginPage", "login/loginOK.jsp");
			return true;
		}
		request.setAttribute("loginPage", "login/login.jsp");
		return false;

	}
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession hs = request.getSession();
		// hs.invalidate();
		hs.setAttribute("loginMember", null);

		
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("euc-kr");
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBManager.connect();

			String td_member_id = request.getParameter("td_member_id");
			String td_member_pw = request.getParameter("td_member_pw");
			String td_member_name = request.getParameter("td_member_name");
			String td_member_email = request.getParameter("td_member_email");
			String td_member_addr = request.getParameter("td_member_addr");
			String td_member_pn = request.getParameter("td_member_pn"); // "주민번호"
			String td_member_phone1 = request.getParameter("td_member_phone1"); // "주민번호"
			String td_member_phone2 = request.getParameter("td_member_phone2"); // "주민번호"
			String td_member_phone3 = request.getParameter("td_member_phone3"); // "주민번호"


			String td_member_phone = String.format("%s%s%s", td_member_phone1,td_member_phone2, td_member_phone3);
		
				System.out.println(td_member_pw);
				System.out.println(td_member_email);
				System.out.println(td_member_addr);
				System.out.println(td_member_phone);
				

			
			String sql = "update TD_MEMBER set "
					+ " td_member_pw=?, td_member_email=?, td_member_addr=? ,td_member_phone1=?, "
					+ "td_member_phone2=?, td_member_phone3=? " 
					+ "where td_member_id=? ";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,td_member_pw);
			pstmt.setString(2, td_member_email);
			pstmt.setString(3, td_member_addr);
			pstmt.setString(4, td_member_phone1);
			pstmt.setString(5, td_member_phone2);
			pstmt.setString(6, td_member_phone3);
			pstmt.setString(7, td_member_id);
			

			if (pstmt.executeUpdate() == 1) {
				Member m = new Member();
				m.setTd_member_id(td_member_id);
				m.setTd_member_pw(td_member_pw);
				m.setTd_member_name(td_member_name);
				m.setTd_member_email(td_member_email);
				m.setTd_member_addr(td_member_addr);
				m.setTd_member_pn(td_member_pn);
				m.setTd_member_phone1(td_member_phone1);
				m.setTd_member_phone2(td_member_phone2);
				m.setTd_member_phone3(td_member_phone3);
				
				
				// HttpSession hs = request.getSession();
			
				HttpSession hs = request.getSession();
				hs.setAttribute("loginMember", m);
				hs.setMaxInactiveInterval(15 * 60); //

				request.setAttribute("r", "회원 정보 수정 성공");
			} else {
				request.setAttribute("r", "회원 정보 수정 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "회원 정보 수정 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	public void bye(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			
			con = DBManager.connect();

			HttpSession hs = request.getSession();
			Member m2 = (Member) hs.getAttribute("loginMember");

			String td_member_id = m2.getTd_member_id();
			String td_member_pw = request.getParameter("td_member_pw");

				String sql = "delete from TD_MEMBER where td_member_id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, td_member_id);
				if (pstmt.executeUpdate() == 1) {
					String path = request.getServletContext().getRealPath("etc");
					
					logout(request, response);

					request.setAttribute("r", "회원 탈퇴 성공");
				} else {
					request.setAttribute("r", "회원 탈퇴 실패");
				}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "회원 탈퇴 실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
}