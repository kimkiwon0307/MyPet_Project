package com.mypet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mypet.domain.FreeVO;
import com.mypet.service.FreeBoardService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/free/*")
@AllArgsConstructor
public class FreeBoardContoller {
	
	private FreeBoardService service;
	
	@GetMapping("/list")
	public void list(Model model) {

		model.addAttribute("list",service.getList());
	}
	
	@GetMapping("/register")
	public void register(){};
	
	@PostMapping("/register")
	public String register(FreeVO free) {
		service.register(free);
		return "redirect:/free/list";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("f_no")int f_no, Model model) {
		model.addAttribute("free", service.get(f_no));
	}
	
	
	@PostMapping("/modify")
	public String modify(FreeVO free, RedirectAttributes rttr) {
		if(service.modify(free)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/free/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("f_no")int f_no, RedirectAttributes rttr) {
		if(service.remove(f_no)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/free/list";
	}
}
