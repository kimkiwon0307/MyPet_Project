package com.mypet.mapper;

import java.util.List;

import com.mypet.domain.QuestionVO;

public interface QuestionBoardMapper {

	public List<QuestionVO> getList();
	
	public void insert(QuestionVO question);
	
	public QuestionVO read(int q_no);
	
	public int delete(int q_no);
	
	public int update(QuestionVO question);
}
