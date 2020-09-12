package com.mypet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mypet.service.FreeBoardService;

@Controller
@RequestMapping("/free/*")
public class FreeBoardContoller {
	
	private FreeBoardService service;
}
