<%@page import="vo.MemberVO"%>
<%@page import="dao.MemberDAO"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!-- 
	1. 회원가입 폼에서 남겨받은 일반 데이터, 파일데이터를 전달 받아서
		일반 데이터와 파일명을 저장하여 회원 객체를 하나로 생성 후,
		회원 목록에 해당하는 리스트에 저장하여 목록 페이지에서 리스트 데이터를 활용할 수 있도록 해주세요.
			> 회원 등록을 진행해주세요. (회원가입 프로세스)
	
	2. 회원가입이 완료 되면, ch07_test_signin.jsp로 이동하여 로그인을 진행할 수 있도록 해주세요.
 -->
 
 <%
 	request.setCharacterEncoding("UTF-8");
 	
 	String realFolder = request.getServletContext().getRealPath("resources/images");
 
 	String encType = "UTF-8";
 	
 	int maxSize = 5 * 1024 * 1024;
 	
 	File file = new File(realFolder);
 	if(!file.exists()){
 		file.mkdirs();
 	}
 	
 	DiskFileUpload upload = new DiskFileUpload();
 	upload.setSizeMax(10000000);
 	upload.setSizeThreshold(maxSize);
 	upload.setRepositoryPath(realFolder);
 	
 	List items = upload.parseRequest(request);
 	Iterator params = items.iterator();
 	
	String mem_id = "";
	String mem_pw = "";
	String mem_name = "";
	String mem_sex = "";
	String filename = "";
	
	while(params.hasNext()){
		FileItem item = (FileItem) params.next();
		if(item.isFormField()){
			String fieldName = item.getFieldName();
			if(fieldName.equals("mem_id")){
				mem_id = item.getString(encType);
			}else if(fieldName.equals("mem_pw")){
				mem_pw = item.getString(encType);
			}else if(fieldName.equals("mem_name")){
				mem_name = item.getString(encType);
			}else if(fieldName.equals("mem_sex")){
				mem_sex = item.getString(encType);
			}
		}else{
			String fileFieldName = item.getFieldName();
			filename = item.getName();
			String contenType = item.getContentType();
			filename = filename.substring(filename.lastIndexOf("\\") + 1);
			
			long fileSize = item.getSize();
			File uploadFile = new File(realFolder + "/" + filename);
			item.write(uploadFile);
		}
	}
	
	MemberDAO memdao = MemberDAO.getInstance();
	
	MemberVO memvo = new MemberVO();
	memvo.setMem_id(mem_id);
	memvo.setMem_pw(mem_pw);
	memvo.setMem_name(mem_name);
	memvo.setMem_sex(mem_sex);
	memvo.setFilename(filename);
	
	memdao.insertMember(memvo);
// 	MemberVO member = memdao.getMember(mem_id);
	
	response.sendRedirect("ch07_test_signin.jsp");
 %>