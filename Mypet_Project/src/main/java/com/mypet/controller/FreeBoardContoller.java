package com.mypet.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mypet.domain.FreeVO;
import com.mypet.service.FreeBoardService;

@Controller
@RequestMapping("/free/*")
public class FreeBoardContoller {
	
	private FreeBoardService service;
	
	public List<FreeVO>getList(){
		
		return service.getClass();
	}
	
}
