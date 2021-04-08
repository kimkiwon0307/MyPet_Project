package com.mypet.mapper;

import java.util.List;

import com.mypet.domain.ReplyVO;

public interface ReplyMapper {

	
	/*
	 * public int insert(ReplyVO vo);
	 * 
	 * public ReplyVO read(int f_no);
	 * 
	 * public int delete (int rno);
	 * 
	 * public int update(ReplyVO reply);
	 * 
	 * public List<ReplyVO> getListWithPaging(
	 * 
	 * @Param("cri") Criteria cri,
	 * 
	 * @Param("f_no") int f_no);
	 */
	
	
	public List<ReplyVO> readReply(int f_no) ;
	
	public void writeReply(ReplyVO reply);
	
	public void updateReply(ReplyVO reply);
	
	public void deleteReply(ReplyVO reply);
	
	public ReplyVO selectReply(int rno);
	
}
