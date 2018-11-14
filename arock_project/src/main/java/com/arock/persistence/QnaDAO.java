package com.arock.persistence;

import java.util.List;

import com.arock.domain.QnaVO;

public interface QnaDAO {
	public List<QnaVO> list(int productNo) throws Exception;
	public void create(QnaVO vo)throws Exception;
	public void update(QnaVO vo)throws Exception;
	public void delete(int reviewNo) throws Exception;
	

}
