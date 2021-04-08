package com.mypet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mypet.domain.MemberVO;
import com.mypet.service.MemberService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/member")
public class MemberController {

	MemberService service;
	
	
	@GetMapping("/register")
	public void register(){
		
	}
	
	@PostMapping("/register")
	public String register(MemberVO member) {
		
		service.register(member);
		
		return "/mypet/free/list";
	}
	
	
	@GetMapping("/login")
	public void login() {}
	
	
	@PostMapping("/login")
	public String login(MemberVO member, RedirectAttributes rttr, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		MemberVO login = service.login(member);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/free/list";
	}
	
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/memberUpdateView")
	public String registerUpdateView() {
		
		return "mypet/member/memberupdateView";
	}
	
	
	@PostMapping("/memberUpdate")
	public String registerUpdate(MemberVO member, HttpSession session) {
		
		service.memberUpdate(member);
		
		session.invalidate();
		
		return "null";
	}
	
	
	@ResponseBody
	@PostMapping("/passChk")
	public int passChk(MemberVO member) {
			
		
	int result =service.passChk(member);
	
	System.out.println("반가워요" + result);
	return result;
	}
	
	
	@ResponseBody
	@PostMapping("/idChk")
	public int idChk(MemberVO member) {
			
		
	int result =service.idChk(member);
	
	System.out.println("반가워요" + result);

	return result;
	}
	
	
}
