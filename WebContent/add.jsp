<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pw = request.getParameter("pass");
	String content = request.getParameter("content");

	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String regDate = sdf.format(cal.getTime());
	
	GuestBookDao dao = new GuestBookDao();
	dao.insert(new GuestBookVo(name, pw, content, regDate));

	response.sendRedirect("list.jsp");
%>