package com.mypet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mypet.domain.AlbumVO;
import com.mypet.service.AlbumService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/album/*")
@AllArgsConstructor
public class AlbumController {

	private AlbumService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("album",service.getList());
	}
	
	@GetMapping("/photo")
	public void photo(Model model) {
		model.addAttribute("photo",service.getList());
	}

	@GetMapping("/register")
	public void regiseter() {
	}
	
	@PostMapping("/register")
	public String register(AlbumVO album, RedirectAttributes rttr) {
		service.register(album);
		rttr.addFlashAttribute("result", album.getA_no());
		return "redirect:/album/list";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("a_no")int a_no, Model model) {
		model.addAttribute("album",service.get(a_no));
	}
	
	@PostMapping("/modify")
	public String modify(AlbumVO album, RedirectAttributes rttr) {
		
		System.out.println(album.toString());
		
		if(service.modify(album)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/album/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("a_no")int a_no, RedirectAttributes rttr) {
		if(service.remove(a_no)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/album/list";
	}
	
}
