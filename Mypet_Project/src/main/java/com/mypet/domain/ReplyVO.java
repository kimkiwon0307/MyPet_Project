package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private int rno;
	private int f_no;
	
	private String reply;
	private String replyer;
	private Date replyDate;
	private Date updateDate;
}
