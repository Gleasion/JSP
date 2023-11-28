<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="vo.Book"%>
<%@ page import="dao.BookRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	// 1) realFolder 변수에다가 '/resources/images' 경로로 서버 업로드 경로를 설정해주세요.
	String realFolder = request.getServletContext().getRealPath("/resources/images");
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기(5MB)
	
	// 2) 서버 업로드 경로가 존재하지 않는 경우, 동적 생성이 가능하도록 정의해주세요.
	File file = new File(realFolder);
	if(!file.exists()){
		file.mkdirs();
	}

	DiskFileUpload upload = new DiskFileUpload();
	upload.setSizeMax(10000000);	//최대 크기
	upload.setSizeThreshold(maxSize);	//메모리상에 저장할 최대 크기(byte)
	upload.setRepositoryPath(realFolder);	//업로드된 파일을 임시로 저장할 경로
	
	// 3) request 내장객체를 DiskFileUpload의 형태로 wrapping 해주세요.
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
 	String bookId = "";
 	String name = "";
 	String unitPrice = "";
 	String author = "";
 	String publisher = "";
 	String releaseDate = "";
 	String totalPages = "";
 	String description = "";
 	String category = "";
 	String unitsInStock = "";
 	String condition = "";
 	String fileName = "";

	while (params.hasNext()) {
		// 4) FileItem 타입의 item 변수로 값을 꺼내주세요.
		FileItem item = (FileItem)params.next();
		
		if (item.isFormField()) {	//폼 페이지에서 전송된 요청 파라미터가 일반 데이터이면..
			String fieldName = item.getFieldName();	//파라미터의 이름
			
			// 5) 책이름, 금액, 저자, 출판사, 출판일, 총페이지수, 설명, 분류, 재고수, 상태에 대한 데이터를 받아서
			// 각 변수에 넣어주세요.
			if(fieldName.equals("bookId")){
				bookId = item.getString(encType);
			}else if(fieldName.equals("name")){
				name = item.getString(encType);
			}else if(fieldName.equals("unitPrice")){
				unitPrice = item.getString(encType);
			}else if(fieldName.equals("author")){
				author = item.getString(encType);
			}else if(fieldName.equals("description")){
				description = item.getString(encType);
			}else if(fieldName.equals("publisher")){
				publisher = item.getString(encType);
			}else if(fieldName.equals("category")){
				category = item.getString(encType);
			}else if(fieldName.equals("unitsInStock")){
				unitsInStock = item.getString(encType);
			}else if(fieldName.equals("totalPages")){
				totalPages = item.getString(encType);
			}else if(fieldName.equals("releaseDate")){
				releaseDate = item.getString(encType);
			}else if(fieldName.equals("condition")){
				condition = item.getString(encType);
			}else if(fieldName.equals("filename")){
				fileName = item.getString(encType);
			}
		} else {	//폼 페이지에서 전송된 요청 파라미터가 파일이면..
			String fileFieldName  = item.getFieldName();	//요청 파라미터의 이름
			fileName = item.getName(); // 6) 파일명을 꺼내서 fileName 변수에 넣어주세요.
			
			if(!fileName.equals("")){
				String contentType = item.getContentType();	//퍼일 콘텐츠 유형
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				
				long fileSize = item.getSize();	//파일 크기 정보
				File saveFile = new File(realFolder + "/" + fileName);
				// 7) 파일 복사를 진행해주세요.
				item.write(saveFile);
			}
		}
	}
	
	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;

	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);

	BookRepository dao = BookRepository.getInstance();

	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setTotalPages(Long.parseLong(totalPages));
	newBook.setDescription(description);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);
	
	// 8) 새롭게 추가될 책에 파일명을 추가해주세요
	newBook.setFilename(fileName);

	dao.addBook(newBook);

	response.sendRedirect("books.jsp");
%>
