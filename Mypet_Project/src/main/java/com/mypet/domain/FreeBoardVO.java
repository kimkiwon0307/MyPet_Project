package com.mypet.domain;

import java.util.Date;

import lombok.Data;

@Data // lombok을 활용하여 getter,setter,toString 자동생성
public class FreeBoardVO {
	
	private int f_no;               // 자유게시판 번호
	private String f_title;			// 자유게시판 제목
	private String f_writer;        // 자유게시판 작성자
	private String f_content;       // 자유게시판 내용
	private int f_count;            // 자유게시판 조회수
	private int f_recomend;         // 자유게시판 추천수
	private Date f_date;            // 자유게시판 작성일
	private Date f_udate;           // 자유게시판 수정일
	
}
