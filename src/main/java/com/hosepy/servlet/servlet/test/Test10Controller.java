package com.hosepy.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
	private final Map<String, String> userMap =  (Map<String, String>) new HashMap<String, String>() {
	    {
	        put("id", "hosepy00kr");
	        put("password", "1111");
	        put("name", "홍승표");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println("<html><head><title>로그인</title></head><body>");
		if(!id.equals(userMap.get("id"))) {
			out.println("<div>id가 일치하지 않습니다.</div></body></html>");
			return;
		}
		if(!password.equals(userMap.get("password"))) {
			out.println("<div>password가 일치하지 않습니다.</div></body></html>");
			return;
		}
		out.println("<div>홍승표님 환영합니다.</div></body></html>");
		
	}

}
