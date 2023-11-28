<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="vo.BoardFileVO"%>
<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="ch11_test_exceptionBoard_error.jsp"%>

<%
    request.setCharacterEncoding("UTF-8");

    String realFolder = request.getServletContext().getRealPath("/resources/images");
    String encType = "UTF-8";
    int maxSize = 5 * 1024 * 1024;
    
    File file = new File(realFolder);
    if (!file.exists()) {
       file.mkdirs();
    }
    
    DiskFileUpload upload = new DiskFileUpload();
    upload.setSizeMax(maxSize);
    upload.setSizeThreshold(maxSize);
    upload.setRepositoryPath(realFolder);
    
    List items = upload.parseRequest(request);
    Iterator params = items.iterator();
    String no = "";
    String title = "";
    String content = "";
    String fileName = "";
    
    while(params.hasNext()) {
        FileItem item = (FileItem)params.next();
        if(item.isFormField()) {
            String fieldName = item.getFieldName();
            if(fieldName.equals("no")){
               no = item.getString(encType);
            }
            else if(fieldName.equals("title")) {
                title = item.getString(encType);
            } else if(fieldName.equals("content")) {
                content = item.getString(encType);
            }
        } else {
            fileName = item.getName();
            if (!fileName.equals("")) {
                fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
                long fileSize = item.getSize();
                File uploadFile = new File(realFolder + "/" + fileName);
                item.write(uploadFile);
            }
        }
    }
    
    BoardRepository dao = BoardRepository.getInstance();
    
    BoardVO board = new BoardVO();
    
    int iNo = Integer.parseInt(no);
        
    board.setNo(iNo);
    board.setTitle(title);
    board.setContent(content);
    
    BoardFileVO fileVO = new BoardFileVO();
    fileVO.setFileName(fileName);
    board.setFileVO(fileVO);
    
    dao.updateBoard(board);
    response.sendRedirect("ch11_test_boardList.jsp");
%>