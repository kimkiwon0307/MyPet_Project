package com.mypet.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mypet.domain.FreeBoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class FreeBoardMapperTests {
	
	@Setter(onMethod_= @Autowired)
	private FreeBoardMapper mapper;
	
	@Test
	public void testGetList() {
		
		mapper.getList().forEach(free->log.info(free));
	}
	
	@Test
	public void testInsert() {
		
		FreeBoardVO free = new FreeBoardVO();
		free.setF_title("새로운 제목");
		free.setF_content("새로운 내용");
		free.setF_writer("새로운 작성자");
		
		mapper.insert(free);
		
		log.info("등록은" + free);
	}
	
	@Test
	public void testRead() {
		
		FreeBoardVO free = mapper.read(3);
		log.info("조회는" + free);
		
	}
	
	@Test
	public void testUpdate() {
		
		FreeBoardVO free = new FreeBoardVO();
		
		free.setF_no(3);
		free.setF_title("수정된 제목");
		free.setF_content("수정된 내용");
		free.setF_writer("수정된 작성자");
		
		mapper.update(free);
		log.info("업데이트" + free);
	}

	@Test
	public void testDelete() {
		
		log.info("삭제" + mapper.delete(2));
	}
}
