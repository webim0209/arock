package com.arock.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arock.domain.Criteria;
import com.arock.domain.PageMaker;
import com.arock.domain.ProductVO;
import com.arock.domain.SearchCriteria;
import com.arock.service.ProductService;

@Controller
@RequestMapping("/sproduct/*")
public class SearchProductController {
	private static final Logger logger = LoggerFactory.getLogger(SearchProductController.class);
	
	@Inject
	private ProductService service;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model)throws Exception{
		logger.info(cri.toString());
		
		model.addAttribute("list", service.listSearchCriteria(cri));
		PageMaker pageMaker= new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker",pageMaker);
	}
	
	@RequestMapping(value="/readPage",method=RequestMethod.GET)
	public void read(@RequestParam("productNo") int productNo, @ModelAttribute("cri") SearchCriteria cri, Model model)throws Exception{
		model.addAttribute(service.read(productNo));
	}
	
	@RequestMapping(value="/removePage",method=RequestMethod.POST)
	public String remove(@RequestParam("productNo") int productNo, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		service.remove(productNo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:/sproduct/list";
	}
	
	@RequestMapping(value="/modifyPage",method=RequestMethod.GET)
	public void modifyPagingGET(int productNo,@ModelAttribute("cri") SearchCriteria cri, Model model)throws Exception{
		model.addAttribute(service.read(productNo));
	}
	
	@RequestMapping(value="/modifyPage",method=RequestMethod.POST)
	public String modifyPagingPOST(ProductVO product, SearchCriteria cri, RedirectAttributes rttr)throws Exception{
		logger.info(cri.toString());
		
		service.modify(product);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg","SUCCESS");
		
		logger.info(rttr.toString());
		return "redirect:/sproduct/list";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public void registerGet(ProductVO vo, Model model)throws Exception{
		logger.info("register get............");
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registPOST(ProductVO vo, RedirectAttributes rttr)throws Exception{
		logger.info("regist post...........");
		logger.info(vo.toString());
		
		service.regist(vo);
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:/sproduct/list";
	}
}
