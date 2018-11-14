package com.arock.service;

import java.util.List;

import com.arock.domain.Criteria;
import com.arock.domain.ReviewVO;

public interface ReviewService {
	public void addReview(ReviewVO vo)throws Exception;
	public List<ReviewVO> listReview(int productNo)throws Exception;
	public void modifyReview(ReviewVO vo)throws Exception;
	public void removeReview(int reviewNo)throws Exception;
	
	/*review ´ñ±Û Ã³¸®*/
	public List<ReviewVO> listReviewPage(int productNo, Criteria cri) throws Exception;
	public int count(int productNo) throws Exception;
}
