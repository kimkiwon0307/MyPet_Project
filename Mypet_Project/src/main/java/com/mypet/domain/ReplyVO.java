package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private int f_no;
	private int rno;
	private String content;
	private String writer;
	private Date regdate;
}
