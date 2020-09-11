package com.mypet.mapper;

import java.util.List;

import com.mypet.domain.FreeVO;

public interface FreeBoardMapper {
	
	public List<FreeVO> getList();
	
	public void insert(FreeVO free);
	
	public FreeVO read(int f_no);
	
	public int delete(int f_no);
	
	public int update(FreeVO free);
	
}
