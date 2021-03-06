package com.mypet.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mypet.domain.AlbumVO;
import com.mypet.mapper.AlbumMapper;
import com.mypet.util.FileUtils;

import lombok.AllArgsConstructor;

@Service                 // 서비스인걸 알려준다.
@AllArgsConstructor      // 모든 생성자 생성
public class AlbumServiceImpl implements AlbumService{

	
	private AlbumMapper mapper; // 스프링 4.3 부터 자동주입된다.
   
	private FileUtils fileUtils;
	
	@Override
	public List<AlbumVO> getList() {
		return mapper.getList();
	}

	@Override
	public void register(AlbumVO album, MultipartHttpServletRequest mpRequest) throws Exception {
		
		mapper.insert(album);
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(album, mpRequest);
		int size = list.size();
		
		for(int i=0; i<size; i++) {
			mapper.insertFile(list.get(i));
		}
		
		//mapper.insert(album);
	}

	@Override
	public AlbumVO get(int a_no) {
		return mapper.read(a_no);
	}

	@Override
	public boolean modify(AlbumVO album) {
		return mapper.update(album)==1;
	}

	@Override
	public boolean remove(int a_no) {
		return mapper.delete(a_no)==1;
	}

	@Override
	public List<Map<String, Object>> selectFileList(int a_no) throws Exception {
		// TODO Auto-generated method stub
		return mapper.selectFileList(a_no);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return mapper.selectFileInfo(map);
	}
	
	

}
