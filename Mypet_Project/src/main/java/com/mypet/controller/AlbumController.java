package com.mypet.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mypet.domain.AlbumVO;
import com.mypet.service.AlbumService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/album")
@AllArgsConstructor
public class AlbumController {

	private AlbumService service;
	
	@GetMapping("/list")
	public void list(Model model, AlbumVO album) throws Exception {
		
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/register")
	public void register() {
	
		
	}
	
	@PostMapping("/register")
	public String register(AlbumVO album, RedirectAttributes r, MultipartHttpServletRequest mpRequest) throws Exception{
			
			System.out.println(album);
			service.register(album, mpRequest);
			
			

			return "redirect:/album/list";
	}
	
	@GetMapping("/get")
	public void get(int a_no, Model model) throws Exception {
		model.addAttribute("album", service.get(a_no));
		List<Map<String, Object>> fileList = service.selectFileList(a_no);
		
		System.out.println(fileList);
		
		model.addAttribute("file", fileList);
		
		
	}
	
	@PostMapping("/modify")
	public String modify(AlbumVO album, RedirectAttributes rttr) {
		
		if(service.modify(album)) {
			rttr.addFlashAttribute("result","suss");
		}
		return "redirect:/album/list";
	}
	
	@PostMapping("/remove")
	public String remove(int a_no, RedirectAttributes rttr) {
		
		if(service.remove(a_no)) {
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/album/list";
	}
	
	  
	
}
