package com.test.ajax;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex03data.do")
public class Ex03Data extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//C:\class\dev\eclipse\data.txt
		//C:\class\dev\eclipse\.\data.txt
		//C:\data.txt
		//C:\class\code\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\AjaxTest\data.txt
		
		//webapp > data.txt
		//String path = req.getRealPath("./data.txt");
		//System.out.println(path);
		
		//File file = new File(path);
		//System.out.println(file.getAbsolutePath());
		//System.out.println(file.exists());
		
		//Scanner scan = new Scanner(file);

		//String data = scan.nextLine();
		//System.out.println(data);
		
		//int a = 0;
		//a = 10 / a;
		
		AjaxDAO dao = new AjaxDAO();
		String question = dao.getQuestion();
		
		//req.setAttribute("question", question);
		
		//resp.sendRedirect("/ajax/ex03.do?data=" + URLEncoder.encode("가장 자신있는 프로그래밍 언어는?", "UTF-8"));
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/ex03ok.jsp");
		//dispatcher.forward(req, resp);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/plain");
		
		PrintWriter writer = resp.getWriter();
		writer.print(question);
		writer.close();
		
		
	}

}

