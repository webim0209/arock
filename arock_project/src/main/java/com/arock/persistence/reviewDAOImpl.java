package com.arock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.arock.domain.Criteria;
import com.arock.domain.ReviewVO;

@Repository
public class reviewDAOImpl implements reviewDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace="com.arock.mapper.reviewMapper";
	
	@Override
	public List<ReviewVO> list(int productNo)throws Exception{
		return session.selectList(namespace+".list", productNo);
	}
	
	@Override
	public void create(ReviewVO vo)throws Exception{
		session.insert(namespace+".create",vo);
	}
	
	@Override
	public void update(ReviewVO vo)throws Exception{
		session.update(namespace+".update",vo);
	}
	
	@Override
	public void delete(int reviewNo)throws Exception{
		session.delete(namespace+".delete",reviewNo);
	}
	
	@Override
	public List<ReviewVO> listPage(int productNo, Criteria cri) throws Exception {
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("productNo",productNo);
		paramMap.put("cri",cri);
		return session.selectList(namespace+".listPage",paramMap);
	}
	
	@Override
	public int count(int productNo) throws Exception {
		return session.selectOne(namespace+".count",productNo);
	}
}
