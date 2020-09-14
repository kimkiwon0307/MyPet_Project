package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class FreeVO {
	
	private int f_no;
	private String f_title;
	private String f_content;
	private String f_writer;
	private String f_photo;
	private Date f_date;
	private Date f_udate;
	

}
