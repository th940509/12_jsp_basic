package _08_el_jstl;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ElEx01") // http://localhost:8080/12_jsp_basic/ElEx01 사용자가 들어가는 경로
public class ElEx01 extends HttpServlet { // HttpServlet를 상속 받고 있음.
	private static final long serialVersionUID = 1L; // 이 문장의 유무가 중요하지 않음.
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("name", "Timothy");   // setAttribute : 속성 / name : 변수 / Timothy : 값
		request.setAttribute("num1", 12);
		request.setAttribute("num2", 3);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_el_jstl/elEx01.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

// private           > 나만
// default(package)  > 패키지
// protected         > 상속(부모하고 나만)
// public            > 프로젝트
