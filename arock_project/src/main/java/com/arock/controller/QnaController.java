package com.arock.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.arock.domain.QnaVO;
import com.arock.service.QnaService;

@RestController
@RequestMapping("/qna")
public class QnaController {
	
	@Inject
	private QnaService service;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody QnaVO vo){
		ResponseEntity<String> entity=null;
		try {
			service.addQna(vo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity= new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/all/{productNo}", method=RequestMethod.GET)
	public ResponseEntity<List<QnaVO>> list(
		@PathVariable("productNo")int productNo){
			ResponseEntity<List<QnaVO>> entity = null;
			try {
				entity = new ResponseEntity<>(
						service.listQna(productNo), HttpStatus.OK);
			}catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
			return entity;
	}
	
	@RequestMapping(value="/{qnaNo}", method= {RequestMethod.PATCH})
	public ResponseEntity<String> update(@PathVariable("qnaNo") int qnaNo, @RequestBody QnaVO vo){
		ResponseEntity<String> entity=null;
		try {
			vo.setQnaNo(qnaNo);
			service.modifyQna(vo);
			entity= new ResponseEntity<String>("SUCCESS",HttpStatus.OK);			
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
			
			
		}
		return entity;
	}
}
