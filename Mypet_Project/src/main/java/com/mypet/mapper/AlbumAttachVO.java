package com.mypet.mapper;

import java.util.List;

public interface AlbumAttachVO {

	
	public void insert(AlbumAttachVO vo);
	
	public void delete(String uuid);
	
	public List<AlbumAttachVO> findByAno(int a_no);
	
	
}
