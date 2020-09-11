package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class QuestionVO {

	private int q_no;
	private String q_title;
	private String q_content;
	private String q_write;
	private Date q_date;
	private Date q_udate;
	
}
