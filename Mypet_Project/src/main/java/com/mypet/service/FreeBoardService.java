package com.mypet.service;

import java.util.List;

import com.mypet.domain.Criteria;
import com.mypet.domain.FreeVO;

public interface FreeBoardService {
	
	public void register(FreeVO free);
	
	public FreeVO get(int f_no);
	
	public boolean modify(FreeVO free);
	
	public boolean remove(int f_no);
	
	public List<FreeVO> getList();
	
	public List<FreeVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
