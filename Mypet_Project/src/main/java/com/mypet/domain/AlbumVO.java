package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data  //lombok을 이용해서 생성자와 getter/setter,tostring()을 만든다.
public class AlbumVO {

	private int a_no;
	private String a_title;
	private String a_content;
	private String a_photo;
	private Date a_date;
	private Date a_udate;
}
