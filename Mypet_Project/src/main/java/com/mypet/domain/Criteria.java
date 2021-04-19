package com.mypet.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	
		// 기본값을 1페이지당 10개씩으로 지정한다.

	
	  private int pageNum; 
	  private int amount;
	  
	  private String type; 
	  private String keyword;
	  
	  public Criteria() { 
		  this(1,10); }
	  
	  public Criteria(int pageNum, int amount) { 
		  
	 this.pageNum = pageNum;
	  this.amount = amount; 
	  }
	  
	  
	  
	  public String[] getTypeArr() { 
		  return type == null? new String[] {}:
	  type.split(""); }
	 
	

		
}
