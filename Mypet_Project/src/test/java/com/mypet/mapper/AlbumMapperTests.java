package com.mypet.mapper;

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

public class AlbumMapperTests {

		@Setter(onMethod_ = @Autowired)
		private AlbumMapper mapper;
		
		@Test
		public void testGetList() {
			mapper.getList().forEach(album -> log.info(album));
		}
		
		@Test
		public void testInsert() {
			
			AlbumVO album = new AlbumVO();
			album.setA_title("테스트 타이틀");
			album.setA_content("테스트컨텐트");
			album.setA_photo("테스트 사진");
			
			mapper.insert(album);
			log.info(album);
		}
		
		@Test
		public void testRead() {
			AlbumVO album = mapper.read(9);
			log.info(album);
		}
		
		@Test
		public void testDelete() {
			log.info("DELETE COUNT :" + mapper.delete(10));
		}
		
		@Test
		public void testUpdate() {
			
			AlbumVO album = new AlbumVO();
			album.setA_no(5);
			album.setA_title("업데이트 타이틀 테스트");
			album.setA_content("업데이트 콘탠트 테스트");
			album.setA_photo("업데이트 사진 테스트");
			
			int count = mapper.update(album);
			log.info("UPDATE COUNT : " + count);
		}
}
