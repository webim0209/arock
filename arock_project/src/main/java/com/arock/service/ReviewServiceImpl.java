package com.arock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arock.domain.Criteria;
import com.arock.domain.ReviewVO;
import com.arock.persistence.ProductDAO;
import com.arock.persistence.reviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Inject
	private reviewDAO dao;
	
	@Inject
	private ProductDAO productDAO;
	
	@Transactional
	@Override
	public void addReview(ReviewVO vo)throws Exception{
		dao.create(vo);
		productDAO.updateReviewCnt(vo.getProductNo(), 1);
	}
	
	@Override
	public List<ReviewVO> listReview(int productNo) throws Exception {
		return dao.list(productNo);
	}
	@Override
	public void modifyReview(ReviewVO vo) throws Exception {
		dao.update(vo);	
	}
	
	@Transactional
	@Override
	public void removeReview(int reviewNo) throws Exception {
		int productNo = dao.getProductNo(reviewNo);
		dao.delete(reviewNo);
		productDAO.updateReviewCnt(productNo, -1);
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
