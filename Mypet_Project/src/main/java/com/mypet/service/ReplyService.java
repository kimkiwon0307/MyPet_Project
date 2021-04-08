package com.mypet.service;

import java.util.List;

import com.mypet.domain.ReplyVO;

public interface ReplyService {
	
	/*
	 * public int register(ReplyVO vo);
	 * 
	 * public ReplyVO get (int rno);
	 * 
	 * public int modify(ReplyVO vo);
	 * 
	 * public int remove(int rno);
	 * 
	 * public List<ReplyVO> getList(Criteria cri, int f_no);
	 */
		
	public List<ReplyVO> readReply(int f_no);
	
	public void writeReply(ReplyVO reply);

	public void updateReply(ReplyVO reply);
	
	public void deleteReply(ReplyVO reply);
	
	public ReplyVO selectReply(int rno);
}
