<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="vo.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	// D:\00.JSP\workspace_jsp\.metadata\.plugins\org.eclipse.wst.server.core\tem0\wtpwebapps\WebMarket\resources\images
	String realFolder = request.getServletContext().getRealPath("/resources/images");	// 웹 어플리케이션 상의 절대경로를 이미지를 업로드할 때 사용할 경로
	
	String encType = "UTF-8";	// 인코딩 타입
	
	int maxSize = 5 * 1024 * 1024;	// 최대 업로드 될 파일의 크기(5MB)
	
	File file = new File(realFolder);
	if(!file.exists()) {
		file.mkdirs();
	}
	
	DiskFileUpload upload = new DiskFileUpload();
	upload.setSizeMax(10000000);
	upload.setSizeThreshold(maxSize);
	upload.setRepositoryPath(realFolder);	// 업로드된 파일을 임시로 저장할 경로
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	String productId = "";
	String name = "";
	String unitPrice = "";
	String description = "";
	String manufacturer = "";
	String category =  "";
	String unitsInStock =  "";
	String condition =  "";
	String fileName = "";
	
	while(params.hasNext()){
		FileItem item = (FileItem)params.next();
		if(item.isFormField()){	// 폼 페이지에서 전송된 요청 파라미터가 일반 데이터라면 여기서 처리!
			String fieldName = item.getFieldName();
			if(fieldName.equals("productId")){
				productId = item.getString(encType);
			}else if(fieldName.equals("name")){
				name = item.getString(encType);
			}else if(fieldName.equals("unitPrice")){
				unitPrice = item.getString(encType);
			}else if(fieldName.equals("description")){
				description = item.getString(encType);
			}else if(fieldName.equals("manufacturer")){
				manufacturer = item.getString(encType);
			}else if(fieldName.equals("category")){
				category = item.getString(encType);
			}else if(fieldName.equals("unitsInStock")){
				unitsInStock = item.getString(encType);
			}else if(fieldName.equals("condition")){
				condition = item.getString(encType);
			}
		}else{	// 폼페이지에서 전송된 요청 파라미터가 파일이라면 여기서 처리!
			String fileFieldName = item.getFieldName();	// 요청 파라미터 이름
			fileName = item.getName();	// 저장 파일의 이름
			String contenType = item.getContentType();	// 파일 MimeType
			// 서버로 넘어온 파일명이 경로를 포함한 파일명으로 받아졌을 때 처리하기 위한 필터
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			
			long fileSize = item.getSize();	// 파일크기 정보
			File uploadFile = new File(realFolder + "/" + fileName);
			item.write(uploadFile);	// 파일 복사
		}
	}
	
	Integer price;
	if(unitPrice.isEmpty()){
		price = 0;
	}else{
		price = Integer.valueOf(unitPrice);
	}
	
	long stock;
	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.valueOf(unitsInStock);
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);

	dao.addProduct(newProduct); // 새롭게 추가될 상품을 List공간에 추가한다.
	
	response.sendRedirect("products.jsp");
	
%>