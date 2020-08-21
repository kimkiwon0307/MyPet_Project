package com.mypet.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mypet.domain.AlbumVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AlbumServiceTests {
	
	@Setter(onMethod_ = {@Autowired})
	private AlbumService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		AlbumVO album = new AlbumVO();
		album.setA_title("테스트 타이틀");
		album.setA_content("테스트 콘텐트");
		album.setA_photo("테스트 사진");
		
		service.register(album);
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(album -> log.info(album));
	}
	
	@Test
	public void testGet() {
		log.info(service.get(3));
	}
	
	@Test
	public void testDelete() {
		log.info("REMOVE RESULT: " + service.remove(2));
	}

	@Test
	public void testUpdate() {
		AlbumVO album =service.get(2);
	
		if(album == null) {
			return;
		}
		album.setA_title("업데이트테스트타이틀");
		log.info("MODIFY RESULT:" + service.modify(album));
	}
}
