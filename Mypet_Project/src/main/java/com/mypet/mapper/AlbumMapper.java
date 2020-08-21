package com.mypet.mapper;

import java.util.List;

import com.mypet.domain.AlbumVO;

public interface AlbumMapper {

	public List<AlbumVO> getList();
	
	public void insert(AlbumVO album);
	
	public AlbumVO read(int a_no);
	
	public int delete(int a_no);    
	
	public int update(AlbumVO album);
}
