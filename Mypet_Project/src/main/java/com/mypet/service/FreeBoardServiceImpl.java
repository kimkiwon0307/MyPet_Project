package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.Criteria;
import com.mypet.domain.FreeBoardVO;
import com.mypet.mapper.FreeBoardMapper;

import lombok.AllArgsConstructor;

@Service                 // 서비스인걸 알려준다.
@AllArgsConstructor      // 모든 생성자 생성
public class FreeBoardServiceImpl implements FreeBoardService{

	private FreeBoardMapper mapper; // 스프링 4.3 부터 자동주입된다.

/**	
	@Override
	public List<FreeBoardVO> getList() {
		return mapper.getList();
	}
*/
	@Override
	public void register(FreeBoardVO free) {
		mapper.insert(free);
	}

	@Override
	public FreeBoardVO get(int f_no) {
		return mapper.read(f_no);
	}

	@Override
	public boolean modify(FreeBoardVO free) {
		return mapper.update(free)==1;
	}

	@Override
	public boolean remove(int f_no) {
		return mapper.delete(f_no)==1;
	}

	@Override
	public List<FreeBoardVO> getList(Criteria cri) {
		
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}
	
	

}
