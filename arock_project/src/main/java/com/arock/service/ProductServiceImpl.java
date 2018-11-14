package com.arock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.arock.domain.Criteria;
import com.arock.domain.ProductVO;
import com.arock.domain.SearchCriteria;
import com.arock.persistence.ProductDAO;


@Service
public class ProductServiceImpl implements ProductService{
	
	@Inject
	private ProductDAO dao;
	
	@Override
	public void regist(ProductVO vo)throws Exception{
		dao.create(vo);
	}
	
	@Override
	public ProductVO read(int productNo)throws Exception{
		return dao.read(productNo);
	}
	
	@Override
	public void modify(ProductVO vo)throws Exception{
		dao.update(vo);
	}
	
	@Override
	public void remove(int productNo)throws Exception{
		dao.delete(productNo);
	}
	
	@Override
	public List<ProductVO> listAll()throws Exception{
		return dao.listAll();
	}
	
	@Override
	public List<ProductVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
	
	/*동적 sql적용*/
	@Override
	public List<ProductVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
}
