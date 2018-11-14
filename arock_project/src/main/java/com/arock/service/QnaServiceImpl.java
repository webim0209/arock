package com.arock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.arock.domain.QnaVO;
import com.arock.persistence.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Inject
	private QnaDAO dao;
	
	@Override
	public void addQna(QnaVO vo)throws Exception{
		dao.create(vo);
	}
	
	@Override
	public List<QnaVO> listQna(int productNo) throws Exception {
		return dao.list(productNo);
	}
	@Override
	public void modifyQna(QnaVO vo) throws Exception {
		dao.update(vo);	
	}
	@Override
	public void removeQna(int reviewNo) throws Exception {
		dao.delete(reviewNo);	
	}
}
