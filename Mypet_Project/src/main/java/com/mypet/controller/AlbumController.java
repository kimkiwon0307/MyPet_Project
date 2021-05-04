package com.mypet.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	@RequestMapping(value="/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception{
		
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
		
		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte[] fileByte = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\image\\"+storedFileName));
			
		System.out.println(fileByte);
		
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
	
   
	  
	
}
