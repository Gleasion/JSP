package dao;

import java.util.ArrayList;

import vo.Product;

public class ProductRepository {
	
	// 싱글톤 패턴
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	// 상품을 담을 List 객체
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		
		// 상품 폰 추가
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4,7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		// 상품 노트북 추가
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");
		
		// 상품 태블릿 추가
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*124.6*6.6mm, Super Amored display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		// 총 3가지 상품을 List 공간에 추가
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	// 상품 전체 가져오기
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	// 상품 ID에 해당하는 상품 가져오기
	public Product getProductById(String productId) {
		
		Product productById = null;
		
		for(int i =0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
}
