package com.mypet.mapper;

import java.util.List;

import com.mypet.domain.FreeBoardVO;

public interface FreeBoardMapper {

	public List<FreeBoardVO> getList();      // 리스트
	
	public void insert(FreeBoardVO free);    // C   
	
	public FreeBoardVO read(int f_no);        // R
	
	public int update(FreeBoardVO free);     // U
	
	public int delete(int f_no);             // D
	
	
	
}
