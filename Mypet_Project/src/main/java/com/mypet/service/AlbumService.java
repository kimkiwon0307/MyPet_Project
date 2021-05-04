package com.mypet.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mypet.domain.AlbumVO;

public interface AlbumService {

	public List<AlbumVO> getList();                 // 리스트
	
	public void register(AlbumVO album, MultipartHttpServletRequest mpRequest) throws Exception;             // C
	
	public AlbumVO get(int a_no);                   // R
	
	public boolean modify(AlbumVO album);            // U
	
	public boolean remove(int a_no);                    // D
	
	public List<Map<String, Object>> selectFileList(int a_no) throws Exception;
	
	public Map<String,Object> selectFileInfo(Map<String,Object>map)throws Exception;

}
