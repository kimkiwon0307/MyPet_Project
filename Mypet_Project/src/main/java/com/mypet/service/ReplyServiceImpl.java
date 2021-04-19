package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.Criteria;
import com.mypet.domain.ReplyVO;
import com.mypet.mapper.ReplyMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {

	private ReplyMapper mapper;

	@Override
	public List<ReplyVO> readReply(int f_no) {
		// TODO Auto-generated method stub
		return mapper.readReply(f_no);
	}

	@Override
	public void writeReply(ReplyVO reply) {
		
		mapper.writeReply(reply);
		
	}

	@Override
	public void updateReply(ReplyVO reply) {
		
		mapper.updateReply(reply);
		
	}

	@Override
	public void deleteReply(ReplyVO reply) {
		
		mapper.deleteReply(reply);
	}

	@Override
	public ReplyVO selectReply(int rno) {

		 return mapper.selectReply(rno);
	
	
	}
	
	

	
}
