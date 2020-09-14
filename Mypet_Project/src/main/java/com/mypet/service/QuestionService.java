package com.mypet.service;

import java.util.List;

import com.mypet.domain.QuestionVO;

public interface QuestionService {
	public void register(QuestionVO question);
	
	public QuestionVO get(int q_no);
	
	public boolean modify(QuestionVO question);
	
	public boolean remove(int q_no);
	
	public List<QuestionVO> getList();
}
