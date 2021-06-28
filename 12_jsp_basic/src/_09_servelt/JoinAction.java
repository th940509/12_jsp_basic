package _09_servelt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinAction")
public class JoinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("eamil");
		String[] hobbies = request.getParameterValues("hobby");
		
		String hobby = ""; // 위의 배열을 한줄로 만드는 과정
		for(int i=0; i<hobbies.length; i++) {
			hobby += hobbies[i];
			if(hobbies.length -1 != i) {
				hobby += ",";
			}
		}
		
		MemberDTO mdto = new MemberDTO(id, pw, name, email, hobby);
		
		// request 객체에 mdto 클래스를 저장하여 view로 데이터 전송
		request.setAttribute("mdto", mdto);
		
		// view 페이지 이동
		RequestDispatcher dis = request.getRequestDispatcher("chapter09_servlet/02_joinAction.jsp");
		dis.forward(request, response);
	}

}
