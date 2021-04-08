package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.MemberVO;
import com.mypet.domain.ReplyVO;
import com.mypet.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;

	@Override
	public void register(MemberVO member) {
		
		mapper.register(member);
		
	}

	@Override
	public MemberVO login(MemberVO member) {

		return mapper.login(member);
	}

	@Override
	public int passChk(MemberVO member) {
	
		return mapper.passChk(member);
	}

	@Override
	public void memberUpdate(MemberVO member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int idChk(MemberVO member) {
		return mapper.idChk(member);
	}

	
}
