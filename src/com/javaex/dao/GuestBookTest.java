package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestBookVo;

public class GuestBookTest {

	public static void main(String[] args) {
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = dao.getlist();
		for (GuestBookVo vo : list) {
			System.out.println(vo.toString());
		}

	}

}
