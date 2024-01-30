package com.hosepy.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hosepy.servlet.common.MysqlService;

@WebServlet("/database/test/delete")
public class Test02Controllerdelete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		mysqlService.update("DELETE FROM `book_mark` WHERE `id` = " + id + ";");
		
		response.sendRedirect("/database/test-list.jsp");
	}
	
}
