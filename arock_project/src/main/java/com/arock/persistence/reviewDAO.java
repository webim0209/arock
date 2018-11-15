package com.arock.persistence;

import java.util.List;

import com.arock.domain.Criteria;
import com.arock.domain.ReviewVO;

public interface reviewDAO {
	public List<ReviewVO> list(int productNo) throws Exception;
	public void create(ReviewVO vo)throws Exception;
	public void update(ReviewVO vo)throws Exception;
	public void delete(int reviewNo) throws Exception;
	
	/* review */
	public List<ReviewVO> listPage(int productNo, Criteria cri) throws Exception;
	public int count(int productNo) throws Exception;
	
	/* 댓글 숫자 변경 */
	public int getProductNo(int reviewNo)throws Exception;
}
