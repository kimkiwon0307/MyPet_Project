package com.mypet.service;

import java.util.List;

import com.mypet.domain.Criteria;
import com.mypet.domain.FreeBoardVO;

public interface FreeBoardService {

	//public List<FreeBoardVO> getList();                 // 리스트
	
	public void register(FreeBoardVO free);             // C
	
	public FreeBoardVO get(int f_no);                   // R
	
	public boolean modify(FreeBoardVO free);            // U
	
	public boolean remove(int f_no);                    // D
	
	public List<FreeBoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
