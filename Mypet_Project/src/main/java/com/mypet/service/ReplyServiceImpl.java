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
		// TODO Auto-generated method stub
		return mapper.selectReply(rno);
	}
	
	/*
	 * @Override public int register(ReplyVO vo) { return mapper.insert(vo); }
	 * 
	 * @Override public ReplyVO get(int rno) { return mapper.read(rno); }
	 * 
	 * @Override public int modify(ReplyVO vo) { return mapper.update(vo); }
	 * 
	 * @Override public int remove(int rno) { return mapper.delete(rno) ; }
	 * 
	 * @Override public List<ReplyVO> getList(Criteria cri, int f_no) { // TODO
	 * Auto-generated method stub return mapper.getListWithPaging(cri, f_no); }
	 */
}
