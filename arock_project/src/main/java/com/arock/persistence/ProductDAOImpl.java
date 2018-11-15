package com.arock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.arock.domain.Criteria;
import com.arock.domain.ProductVO;
import com.arock.domain.SearchCriteria;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace="com.arock.mapper.productMapper";
	
	@Override
	public void create(ProductVO vo)throws Exception{
		session.insert(namespace+".create", vo);
	}
	
	@Override
	public ProductVO read(int productNo)throws Exception{
		return session.selectOne(namespace+".read",productNo);
	}
	
	@Override
	public void update(ProductVO vo)throws Exception{
		session.update(namespace+".update",vo);
	}
	
	@Override
	public void delete(int ProductNo)throws Exception{
		session.delete(namespace+".delete",ProductNo);
	}
	
	@Override
	public List<ProductVO> listAll()throws Exception{
		return session.selectList(namespace+".listAll");
	}
	
	@Override
	public List<ProductVO> listPage(int page)throws Exception{
		if(page <=0) {
			page=1;
		}
		page=(page-1)*10;
		return session.selectList(namespace+ ".listPage",page);
	}
	
	@Override
	public List<ProductVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCriteria",cri);
	}
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}

	/*동적 SQL문을 적용하기 위한 메소드*/
	@Override
	public List<ProductVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch",cri);
	}
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount",cri);
	}
	
	/* 댓글 숫자 변경 */
	@Override
	public void updateReviewCnt(int productNo, int amount)throws Exception{
		Map<String, Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("productNo",productNo);
		paramMap.put("amount", amount);
		
		session.update(namespace+".updateReviewCnt", paramMap);
	}
}
