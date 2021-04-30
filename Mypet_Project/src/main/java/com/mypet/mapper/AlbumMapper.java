package com.mypet.mapper;

import java.util.List;
import java.util.Map;

import com.mypet.domain.AlbumVO;

public interface AlbumMapper {

	public List<AlbumVO> getList();      // 리스트
	
	public void insert(AlbumVO album);    // C   
	
	public AlbumVO read(int a_no);        // R
	
	public int update(AlbumVO album);     // U
	
	public int delete(int a_no);          // D
	
	public void insertFile(Map<String,Object>map)throws Exception;
	
	public List<Map<String,Object>> selectFileList(int a_no)throws Exception;
	
}
