package com.arock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.arock.domain.Criteria;
import com.arock.domain.ReviewVO;
import com.arock.persistence.reviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Inject
	private reviewDAO dao;
	
	@Override
	public void addReview(ReviewVO vo)throws Exception{
		dao.create(vo);
	}
	
	@Override
	public List<ReviewVO> listReview(int productNo) throws Exception {
		return dao.list(productNo);
	}
	@Override
	public void modifyReview(ReviewVO vo) throws Exception {
		dao.update(vo);	
	}
	@Override
	public void removeReview(int reviewNo) throws Exception {
		dao.delete(reviewNo);	
	}
	
	@Override
	public List<ReviewVO> listReviewPage(int productNo, Criteria cri) throws Exception {
		return dao.listPage(productNo, cri);
	}
	
	@Override
	public int count(int productNo) throws Exception {
		return dao.count(productNo);
	}
}
