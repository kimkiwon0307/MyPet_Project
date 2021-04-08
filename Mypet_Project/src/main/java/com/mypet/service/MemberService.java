package com.mypet.service;

import com.mypet.domain.MemberVO;

public interface MemberService {
	
	public void register(MemberVO member);

	public MemberVO login(MemberVO member);
	
	public void memberUpdate(MemberVO member);
	
	public int passChk(MemberVO member);
	
	public int idChk(MemberVO member);
}
