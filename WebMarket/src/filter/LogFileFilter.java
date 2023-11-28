package filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.security.sasl.SaslException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class LogFileFilter implements Filter {
	
	private PrintWriter writer;
	
	@Override
	public void destroy() {
		System.out.println("LogFilter 해제...!");
		writer.close();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		writer.println("접속한 클라이언트 IP : " + request.getRemoteAddr());
		
		writer.println("LogFilter 수행...!");
		
		long start = System.currentTimeMillis();
		writer.println("접근한 URL 경로 : " + getURLPath(request));
		writer.println("요청 처리 시작 시간 : " + getCurrentTime());
		
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		writer.println("요청 처리 종료 시간 : " + getCurrentTime());
		writer.println("요청 처리 소요 시간 : " + (end - start) + "ms");
		writer.println("----------------------------------------------------");
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LogFilter 초기화...!");
		
		String filename = filterConfig.getInitParameter("filename");
		
		if(filename == null) {
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		}
		
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		}catch (IOException e) {
			throw new ServletException("로그 파일을 열수 없습니다.");
		}
		
	}
	
	private String getURLPath(ServletRequest request) {
		HttpServletRequest  req;
		String currnetPath = "";
		String queryString = "";
		
		if(request instanceof HttpServlet) {
			req = (HttpServletRequest) request;
			currnetPath = req.getRequestURI();
			queryString = req.getQueryString();
			queryString = queryString == null ? "" : "?" + queryString;
			
			
		}
		return currnetPath + queryString;
		
	}
	
	private String getCurrentTime() {
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(System.currentTimeMillis());
		return format.format(cal.getTime());
		
	}

}
