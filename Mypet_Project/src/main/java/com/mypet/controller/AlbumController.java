package com.mypet.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	public void list(Model model) {
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/register")
	public void register() {
	
		
	}
	
	@PostMapping("/register")
	public String register(AlbumVO album, RedirectAttributes r) {
		
			service.register(album);
			r.addFlashAttribute("result","ok");

			return "redirect:/album/list";
	}
	
	@GetMapping("/get")
	public void get(int a_no, Model model) {
		model.addAttribute("album", service.get(a_no));
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
	
	  @RequestMapping(value = "requestupload2")
	    public String requestupload2(MultipartHttpServletRequest mtfRequest) {
	        List<MultipartFile> fileList = mtfRequest.getFiles("file");
	        String src = mtfRequest.getParameter("src");
	        System.out.println("src value : " + src);

	        String path = "C:\\image\\";

	        for (MultipartFile mf : fileList) {
	            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
	            long fileSize = mf.getSize(); // 파일 사이즈

	            System.out.println("originFileName : " + originFileName);
	            System.out.println("fileSize : " + fileSize);

	            String safeFile = path + System.currentTimeMillis() + originFileName;
	            try {
	                mf.transferTo(new File(safeFile));
	            } catch (IllegalStateException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            } catch (IOException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }

	        return "redirect:/";
	    }


	
	
}
