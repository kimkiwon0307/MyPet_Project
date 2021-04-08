package com.mypet.mapper;

import java.util.List;

import com.mypet.domain.AlbumVO;

public interface AlbumMapper {

	public List<AlbumVO> getList();      // 리스트
	
	public void insert(AlbumVO album);    // C   
	
	public AlbumVO read(int a_no);        // R
	
	public int update(AlbumVO album);     // U
	
	public int delete(int a_no);          // D
	
	
	
}
