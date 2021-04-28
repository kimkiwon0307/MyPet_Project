package com.mypet.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.output.ByteArrayOutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;
import com.mypet.domain.Criteria;
import com.mypet.domain.FreeBoardVO;
import com.mypet.domain.PageDTO;
import com.mypet.domain.ReplyVO;
import com.mypet.service.FreeBoardService;
import com.mypet.service.ReplyService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/free")
@AllArgsConstructor
public class FreeBoardController {

	private FreeBoardService service;
	
	private ReplyService replyService;
/**	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.getList());
	}
*/
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		
		int total = service.getTotal(cri);

		model.addAttribute("list", service.getList(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri,total));
		
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(FreeBoardVO free, RedirectAttributes r, MultipartHttpServletRequest mpRequest) throws Exception {
		
		
			service.register(free,mpRequest);
			r.addFlashAttribute("result","ok");

			return "redirect:/free/list";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(int f_no, Model model, @ModelAttribute("cri")Criteria cri) {
		
		model.addAttribute("free", service.get(f_no));
		
		List<ReplyVO> replyList = replyService.readReply(f_no);
		model.addAttribute("replyList",replyList);
		
		/*
		 * List<Map<String, Object>> fileList = service.selectFileList(f_no);
		 * model.addAttribute("file",fileList);
		 */
	
	}
	
	
	 @PostMapping("/modify") 
	 public String modify(FreeBoardVO free,RedirectAttributes rttr, @ModelAttribute("cri")Criteria cri) {
	  
	  if(service.modify(free)) { rttr.addFlashAttribute("result","success"); }
	  
	  int pageNum = cri.getPageNum(); 
	  int amount = cri.getAmount();
	  
	 return "redirect:/free/list?pageNum="+ pageNum + "&amount="+ amount; }
	 
	
	@PostMapping("/remove")
	public String remove(int f_no, RedirectAttributes rttr) {
		
		
		if(service.remove(f_no)) {
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/free/list";
	}
	
	
	  @PostMapping("/replyWrite") 
	  public String replyWrite(ReplyVO reply, Criteria cri, RedirectAttributes rttr) {
	  
	  replyService.writeReply(reply);
	  
	  int f_no = reply.getF_no(); 
	  int pageNum = cri.getPageNum();  
	  int amount = cri.getAmount();
	  
	  return "redirect:/free/get?pageNum=" + pageNum + "&amount="+ amount + "&f_no=" + f_no;
	  
	  
	 }
	  
	  @GetMapping("/replyUpdateView")
	  public void replyUpdateView(ReplyVO reply, Model model, Criteria cri) {
		  
		  model.addAttribute("replyUpdate", replyService.selectReply(reply.getRno()));
		  model.addAttribute("cri",cri);
		  
		  
	  }
	  
	  
	  @PostMapping("/replyUpdate") 
	  public String replyUpdate(ReplyVO reply,Criteria cri, RedirectAttributes rttr) {
	  
		System.out.println(reply.toString());
		
		replyService.updateReply(reply);
	  
		
		  int f_no = reply.getF_no(); 
		  int pageNum = cri.getPageNum(); 
		  int amount =
		  cri.getAmount();
		  
		  replyService.updateReply(reply);
		  
		  rttr.addAttribute("f_no",f_no); rttr.addAttribute("pageNum",pageNum);
		  rttr.addAttribute("amount",amount);
		 
	  
	  return "redirect:/free/get?pageNum=" + pageNum + "&amount="+ amount +"&f_no=" + f_no; 
	  
	  
	  }
	 
	  @GetMapping("/replyDeleteView")
	  public void replyDeleteView(ReplyVO reply, Model model, Criteria cri) {
		  
		  model.addAttribute("replyDelete", replyService.selectReply(reply.getRno()));
		  model.addAttribute("cri",cri);
		  
	  }
	  
	  
	  @PostMapping("/replyDelete") 
	  public String replyDelete(ReplyVO reply,Criteria cri, RedirectAttributes rttr) {
	  
	  
	  int f_no = reply.getF_no();  
	  int pageNum = cri.getPageNum();  
	  int amount  = cri.getAmount(); 
	  
	  
	  replyService.deleteReply(reply);
	  
	  rttr.addAttribute("f_no",f_no);
	  rttr.addAttribute("pageNum",pageNum);
	  rttr.addAttribute("amount",amount);
	  
	  
	  return "redirect:/free/get?pageNum=" + pageNum + "&amount="+ amount +"&f_no=" + f_no; 
	  
	  }

	
	  @PostMapping("/fileupload.do")
	  @ResponseBody
	  public String fileUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile)
	  throws Exception{
		  
		
		  JsonObject json = new JsonObject();
		 
		  PrintWriter printWriter = null;
		 
		  OutputStream out = null;
		 
		  MultipartFile file = multiFile.getFile("upload");
		
		  if(file != null) {
			  if(file.getSize() > 0 && StringUtils.isEmpty(file.getName())) {
				  if(file.getContentType().toLowerCase().startsWith("image/")) {
					  try {
						  String fileName = file.getName();
						  byte[] bytes = file.getBytes();
						  String uploadPath = req.getServletContext().getRealPath("/imag");
						  File uploadFile = new File(uploadPath);
						  if(!uploadFile.exists()) {
							  uploadFile.mkdirs();
						  }
						  fileName = UUID.randomUUID().toString();
						  uploadPath = uploadPath + "/" + fileName;
						  out = new FileOutputStream(new File(uploadPath));
						  out.write(bytes);
						  
						  printWriter = resp.getWriter();
						  resp.setContentType("text/html");
						  String fileUrl = req.getContextPath() + "/img/" + fileName;
						  
						  json.addProperty("fileName", fileName);
						  json.addProperty("uploaded", 1);
						  json.addProperty("url", fileUrl);
						
						  printWriter.println(json);
					  }catch(IOException e) {
						  e.printStackTrace();
					  
					  }finally {
						  if(out !=null) {
							  out.close();
						  }
						  if(printWriter != null) {
							  printWriter.close();
						  }
					  }
				  }
				  
			  }
			  
		  }
		  
		  System.out.println("왜안됄까");
		  return null;
	  }
	  
}
