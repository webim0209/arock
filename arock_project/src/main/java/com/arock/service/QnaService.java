package com.arock.service;

import java.util.List;

import com.arock.domain.QnaVO;

public interface QnaService {
	public void addQna(QnaVO vo)throws Exception;
	public List<QnaVO> listQna(int productNo)throws Exception;
	public void modifyQna(QnaVO vo)throws Exception;
	public void removeQna(int reviewNo)throws Exception;
}
