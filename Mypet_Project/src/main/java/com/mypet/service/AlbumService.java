package com.mypet.service;

import java.util.List;

import com.mypet.domain.AlbumVO;

public interface AlbumService {
	
	public List<AlbumVO> getList();
	
	public void register(AlbumVO album);
	
	public AlbumVO get(int a_no);
	
	public boolean modify(AlbumVO album);
	
	public boolean remove(int a_no);
}
