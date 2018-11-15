package com.arock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.arock.domain.Criteria;
import com.arock.domain.PageMaker;
import com.arock.domain.ReviewVO;
import com.arock.service.ReviewService;

@RestController
@RequestMapping("/review")
public class ReviewController {
	
	@Inject
	private ReviewService service;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReviewVO vo){
		ResponseEntity<String> entity=null;
		try {
			service.addReview(vo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity= new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/all/{productNo}", method=RequestMethod.GET)
	public ResponseEntity<List<ReviewVO>> list(
		@PathVariable("productNo") int productNo){
			ResponseEntity<List<ReviewVO>> entity = null;
			try {
				entity = new ResponseEntity<>(
						service.listReview(productNo), HttpStatus.OK);
			}catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
			return entity;
	}
	
	@RequestMapping(value="/{reviewNo}", method={RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(@PathVariable("reviewNo") int reviewNo, @RequestBody ReviewVO vo){
		ResponseEntity<String> entity=null;
		try {
			vo.setReviewNo(reviewNo);
			service.modifyReview(vo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);			
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);	
		}
		return entity;
	}
	
	@RequestMapping(value="/{reviewNo}", method={RequestMethod.DELETE})
	public ResponseEntity<String> remove(@PathVariable("reviewNo") int reviewNo){
		ResponseEntity<String> entity=null;
		try {
			service.removeReview(reviewNo);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);			
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);	
		}
		return entity;
	}
	
	@RequestMapping(value="/{productNo}/{page}", method={RequestMethod.GET})
	public ResponseEntity<Map<String,Object>> listPage(
		@PathVariable("productNo") int productNo, @PathVariable("page") int page){
		ResponseEntity<Map<String,Object>> entity=null;
		try {
			Criteria cri = new Criteria();
			cri.setPage(page);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			Map<String,Object> map = new HashMap<String,Object>();
			List<ReviewVO> list = service.listReviewPage(productNo, cri);
			
			map.put("list", list);
			
			int reviewCount = service.count(productNo);
			pageMaker.setTotalCount(reviewCount);
			
			map.put("pageMaker", pageMaker);
			
			entity = new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
				
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);	
		}
		return entity;
	}
}
