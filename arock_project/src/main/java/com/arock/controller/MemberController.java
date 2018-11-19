package com.arock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@RequestMapping(value = "/join01", method = RequestMethod.GET)
	public void join01() {
	}
}
