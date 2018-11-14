package com.arock.service;

import java.util.List;

import com.arock.domain.Criteria;
import com.arock.domain.ProductVO;
import com.arock.domain.SearchCriteria;

public interface ProductService {
	public void regist(ProductVO vo)throws Exception;
	public ProductVO read(int productNo)throws Exception;
	public void modify(ProductVO vo)throws Exception;
	public void remove(int productNo)throws Exception;
	public List<ProductVO> listAll()throws Exception;
	public List<ProductVO> listCriteria(Criteria cri)throws Exception;
	public int listCountCriteria(Criteria cri)throws Exception;
	
	/*동적 SQL문을 적용하기 위한 메소드*/
	public List<ProductVO> listSearchCriteria(SearchCriteria cri)throws Exception;
	public int listSearchCount(SearchCriteria cri)throws Exception;
}
