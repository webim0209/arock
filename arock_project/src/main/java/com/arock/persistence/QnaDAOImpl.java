package com.arock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.arock.domain.QnaVO;

@Repository
public class QnaDAOImpl implements QnaDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace="com.arock.mapper.qnaMapper";
	
	@Override
	public List<QnaVO> list(int productNo)throws Exception{
		return session.selectList(namespace+".list", productNo);
	}
	
	@Override
	public void create(QnaVO vo)throws Exception{
		session.insert(namespace+".create",vo);
	}
	
	@Override
	public void update(QnaVO vo)throws Exception{
		session.update(namespace+".update",vo);
	}
	
	@Override
	public void delete(int qnaNo)throws Exception{
		session.delete(namespace+".delete",qnaNo);
	}
}
