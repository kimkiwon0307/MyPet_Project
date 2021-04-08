package com.mypet.service;

import java.util.List;

import com.mypet.domain.AlbumVO;

public interface AlbumService {

	public List<AlbumVO> getList();                 // 리스트
	
	public void register(AlbumVO album);             // C
	
	public AlbumVO get(int a_no);                   // R
	
	public boolean modify(AlbumVO album);            // U
	
	public boolean remove(int a_no);                    // D
	

}
