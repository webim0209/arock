package com.arock.persistence;

import java.util.List;

import com.arock.domain.Criteria;
import com.arock.domain.ProductVO;
import com.arock.domain.SearchCriteria;

public interface ProductDAO {
	public void create(ProductVO vo)throws Exception;
	public ProductVO read(int productNo)throws Exception;
	public void update(ProductVO vo)throws Exception;
	public void delete(int productNo)throws Exception;
	public List<ProductVO> listAll()throws Exception;
	public List<ProductVO> listPage(int page)throws Exception;
	public List<ProductVO> listCriteria(Criteria cri)throws Exception;
	public int countPaging(Criteria cri)throws Exception;
	
	/*동적 SQL문을 적용하기 위한 메소드*/
	public List<ProductVO> listSearch(SearchCriteria cri)throws Exception;
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
	/* 댓글 숫자 변경 */
	public void updateReviewCnt(int productNo, int amount)throws Exception;
}
