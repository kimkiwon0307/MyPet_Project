package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.Criteria;
import com.mypet.domain.FreeVO;
import com.mypet.mapper.FreeBoardMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class FreeBoardServiceImpl implements FreeBoardService{

	private FreeBoardMapper mapper;
	
	@Override
	public void register(FreeVO free) {
		mapper.insert(free);
	}

	@Override
	public FreeVO get(int f_no) {
		return mapper.read(f_no);
	}

	@Override
	public boolean modify(FreeVO free) {
		return mapper.update(free) == 1;
	}

	@Override
	public boolean remove(int f_no) {
		// TODO Auto-generated method stub
		return mapper.delete(f_no) == 1;
	}

	@Override
	public List<FreeVO> getList() {
		return mapper.getList();
	}

	@Override
	public List<FreeVO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}

}
