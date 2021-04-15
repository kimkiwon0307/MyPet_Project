package com.mypet.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

		System.out.println("민철이바보");
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
	}
	
	@PostMapping("/modify")
	public String modify(FreeBoardVO free, RedirectAttributes rttr, @ModelAttribute("cri")Criteria cri) {
		
		if(service.modify(free)) {
			rttr.addFlashAttribute("result","success");
		}
		
		int pageNum = cri.getPageNum();
		int amount = cri.getAmount();
		
		return "redirect:/free/list?pageNum="+ pageNum + "&amount="+ amount;
	}
	
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
	
	
	  @PostMapping("/updateReply") 
	  public String replyUpdate(ReplyVO reply, Criteria cri) {
		  
		  System.out.println("�븞�뀞"+ reply.getReply());
		  
		int f_no = reply.getF_no();
		int pageNum = cri.getPageNum();
		int amount = cri.getAmount();
		int rno = reply.getRno();
	  replyService.updateReply(reply);
	  
	  return "redirect:/free/get?pageNum=" + pageNum + "&amount="+ amount + "&f_no=" + f_no; 
	  }
	 
	
	
}
