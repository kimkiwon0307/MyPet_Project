package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.QuestionVO;
import com.mypet.mapper.QuestionBoardMapper;

import lombok.AllArgsConstructor;

@Service  
@AllArgsConstructor
public class QuestionServiceImpl implements QuestionService{

	private QuestionBoardMapper mapper;
	
	@Override
	public void register(QuestionVO question) {
			mapper.insert(question);
	}

	@Override
	public QuestionVO get(int q_no) {
		return mapper.read(q_no);
	}

	@Override
	public boolean modify(QuestionVO question) {
		return mapper.update(question)==1;
	}

	@Override
	public boolean remove(int q_no) {
		return mapper.delete(q_no)==1;
	}

	@Override
	public List<QuestionVO> getList() {
		return mapper.getList();
	}

}
