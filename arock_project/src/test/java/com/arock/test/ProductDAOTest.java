package com.arock.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.arock.domain.Criteria;
import com.arock.domain.ProductVO;
import com.arock.persistence.ProductDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class ProductDAOTest {
	@Inject
	private ProductDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(ProductDAOTest.class);
	
//	@Test
//	public void testCreate()throws Exception{
//		ProductVO product = new ProductVO();
//		product.setProductName("고구마 도시락");
//		product.setProductCategory("다이어트식");
//		product.setProductPrice("5000");
//		product.setProductSalePrice("300");
//		product.setProductSummary("고구마 다이어트식단입니다.");
//		product.setProductDetail("고구마로 다이어트 하세요");
//		try {
//			dao.create(product);
//		} catch (Exception e) {
//			e.printStackTrace();
//			// TODO: handle exception
//		}
//	}
	
//	@Test
//	public void testRead()throws Exception{
//		logger.info(dao.read(3).toString());
//	}
//	
//	@Test
//	public void testUpdate()throws Exception{
//		ProductVO product = new ProductVO();
//		product.setProductNo(1);
//		product.setProductName("수정상품");
//		product.setProductPrice("7000");
//		product.setProductSalePrice("700");
//		product.setProductSummary("수정상품입니다.");
//		product.setProductDetail("수정상품이랍니다다다ㅏ닫.");
//		dao.update(product);
//	}
	
//	@Test
//	public void testDelete()throws Exception{
//		dao.delete(1);
//	}
//	
//	@Test
//	public void testListPage()throws Exception{
//		int page=3;
//		List<ProductVO> list = dao.listPage(page);
//		for(ProductVO productVO : list) {
//			logger.info(productVO.getProductNo()+":"+productVO.getProductName());
//		}
//	}
	
	@Test
	public void testListCriteria()throws Exception{
		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		
		List<ProductVO> list = dao.listCriteria(cri);
		for(ProductVO productVO : list) {
			logger.info(productVO.getProductNo()+":"+ productVO.getProductName());
		}
				
	}
	
//	@Test
//	public void testURI()throws Exception{
//		UriComponents uriComponents =
//		UriComponentsBuilder.newInstance().path("/product/read").queryParam("productNo", 12).queryParam("perPageNum", 20).build();
//		logger.info("/product/read?productNo=12&perPageNum=20");
//		logger.info(uriComponents.toString());
//				
//	}
	
//	@Test
//	public void testURI2()throws Exception{
//		UriComponents uriComponents =
//		UriComponentsBuilder.newInstance()
//		.path("/{module}/{page}").queryParam("productNo", 12).queryParam("perPageNum", 20).build()
//		.expand("product","read").encode();
//		logger.info("/product/read?productNo=12&perPageNum=20");
//		logger.info(uriComponents.toString());
//				
//	}
	
	/*동적SQL구문테스트*/
//	@Test
//	public void testDinamic1()throws Exception{
//		SearchCriteria cri = new SearchCriteria();
//		cri.setPage(1);
//		cri.setKeyword("짜장");
//		cri.setSearchType("c");
//		
//		logger.info("=============================================================");
//		List<ProductVO> list = dao.listSearch(cri);
//		
//		for(ProductVO productVO :list) {
//			logger.info(productVO.getProductNo()+":"+productVO.getProductName());
//		}
//		
//		logger.info("=============================================================");
//		
//		logger.info("COUNT:" + dao.listSearchCount(cri));
//				
//	}
}
