package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {

	private FilterConfig filterconfig = null;
	
	@Override
	public void destroy() {
		System.out.println("Filter02 해제...!");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter02 수행...!");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// web.xml에서 설정한 초기 파라미터를 init()에서 전역으로 설정한 filterConfig를 활용하여 가져온다.
		String param1 = filterconfig.getInitParameter("param1");
		String param2 = filterconfig.getInitParameter("param2");
		
		String msg = ""; // 처리에 따른 메세지 초기화
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		if(id.equals(param1) && pw.equals(param2)) {
			msg = "로그인에 성공하였습니다!";
			request.setAttribute("msg", msg);
		}else {
			msg = "로그인에 실패했습니다!";
			msg += "<a href='filter02.jsp'>Filter02로 이동</a>";
			writer.println(msg);
			return;
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterconfig) throws ServletException {
		System.out.println("Filter02 초기화...!");

		System.out.println("web.xml에 설정한 param을 담고 있는 filterConfig를 전역 변수에 먼저 셋팅 후, 그안에 값을 셋팅한다.");
		
		System.out.println(filterconfig.getInitParameter("param1"));
		System.out.println(filterconfig.getInitParameter("param2"));
		this.filterconfig = filterconfig; // init() 진행 시, 초기화 한다.
		
	}

}
