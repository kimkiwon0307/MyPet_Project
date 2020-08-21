package com.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mypet.domain.AlbumVO;
import com.mypet.mapper.AlbumMapper;

import lombok.AllArgsConstructor;


@Service
@AllArgsConstructor //모든 파라미터를 이용하는 생성자를 만들어 준다.
public class AlbumServiceImpl implements AlbumService{
	
	private AlbumMapper mapper;
	
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
		return mapper.update(album) == 1;
	}

	@Override
	public boolean remove(int a_no) {
		return mapper.delete(a_no) == 1;
	}
	

}
