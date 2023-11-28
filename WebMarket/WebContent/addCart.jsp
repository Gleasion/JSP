<%@page import="java.util.ArrayList"%>
<%@page import="vo.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
	// id 얻어오기
	String id = request.getParameter("id");
	
	if(id == null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if(product == null){
		response.sendRedirect("exceptionNoProductId.jsp");	
	}
	
	// 상품 전체 조회
	ArrayList<Product> goodsList = dao.getAllProducts();
	
	Product goods = new Product();
	
	// 전체 목록에서 id에 해당하는 상품 꺼내기
	for(int i = 0; i < goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getProductId().equals(id)){
			break;
		}
	}
	
	// 카트목록 꺼내오기
	ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartList");
	if(list == null){
		list = new ArrayList<Product>();
		session.setAttribute("cartList", list);
	}
	
	int cnt = 0;
	Product goodsQnt = new Product();
	for(int i = 0; i < list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getProductId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantitiy() + 1;
			goodsQnt.setQuantitiy(orderQuantity);
		}
	}
	
	if(cnt == 0){
		goods.setQuantitiy(1);
		list.add(goods);
	}
	
	response.sendRedirect("product.jsp?id=" + id);
	
%>