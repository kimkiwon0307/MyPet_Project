package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data // lombok을 활용하여 getter,setter,toString 자동생성
public class AlbumVO {
	
	private int a_no;               // 앨범 번호
	private String a_title;			// 앨범 제목
	private Date f_date;            // 앨범 작성일
	private Date f_udate;           // 앨범 수정일
	
}
