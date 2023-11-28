package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {
	
	// 필터를 종료하기 전에 호출하도록 destory() 메소드를 작성한다.
	@Override
	public void destroy() {
		System.out.println("Filter01 해제..!");
	}

	// 등록된 필터가 실행할 때 사용할 url이 동작할 때마다 실행된다.
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter01 수행...!");
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		// 이름을 입력받고 서버로 넘어오는 과정에서 해당 필터가 요청을 잡는다.
		// 이때, name 키에 들어있는 값이 null 또는 공백인 경우 필터가 브라우저로 메세지를 출력하며 돌려보내준다.
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			String msg = "<p>입력된 name 값은 null입니다. 다시 입력해주세요!</p>"
					+ "<a href ='filter01.jsp'>Filter01이동</a>";
			writer.println(msg);
			return; // 요청 URL로 넘어가지 않고 해당 필터에서 응답 페이지가 결과로 나온다.
		}
		
		// 연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 FilterChain 객체 타입의 doFilter() 메소드를 작성한다.
		chain.doFilter(request, response);
	}
	
	// 필터를 초기화하도록 init()메소드를 작성한다.
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("Filter01 초기화...!");
	}

}
