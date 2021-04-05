package com.mypet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.mypet.domain.Criteria;
import com.mypet.domain.FreeBoardVO;

public interface FreeBoardMapper {

	
	public List<FreeBoardVO> getList();      // 리스트
	
	public void insert(FreeBoardVO free);    // C   
	
	public FreeBoardVO read(int f_no);        // R
	
	public int update(FreeBoardVO free);     // U
	
	public int delete(int f_no);             // D
	
	public List<FreeBoardVO> getListWithPaging(Criteria cri); // 페이징 처리를 위해 추가한다.
	
	public int getTotalCount(Criteria cri); //  총개수 구하기
	
}
