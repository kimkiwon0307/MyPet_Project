package com.mypet.service;

import java.util.List;

import com.mypet.domain.ReplyVO;

public interface ReplyService {
	
	public List<ReplyVO> readReply(int f_no);
	
	public void writeReply(ReplyVO reply);
	
	public void updateReply(ReplyVO reply);
	
	public void deleteReply(ReplyVO reply);
	
	public ReplyVO selectReply(int rno);
}
