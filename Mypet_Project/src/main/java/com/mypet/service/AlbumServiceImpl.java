package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.AlbumVO;
import com.mypet.mapper.AlbumMapper;

import lombok.AllArgsConstructor;

@Service                 // 서비스인걸 알려준다.
@AllArgsConstructor      // 모든 생성자 생성
public class AlbumServiceImpl implements AlbumService{

	private AlbumMapper mapper; // 스프링 4.3 부터 자동주입된다.
	
	@Override
	public List<AlbumVO> getList() {
		return mapper.getList();
	}

	@Override
	public void register(AlbumVO album) {
		mapper.insert(album);
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
	
	

}
