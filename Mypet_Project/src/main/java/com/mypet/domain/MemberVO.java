package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private int m_no;
	private String m_id;
	private String m_pass;
	private String m_passconfirm;
	private String m_email;
	private Date   m_regDate;
	
}
