package com.mypet.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mypet.domain.Criteria;
import com.mypet.domain.ReplyVO;
import com.mypet.service.ReplyService;

import lombok.AllArgsConstructor;

@RequestMapping("/replies/")
@RestController
@AllArgsConstructor
public class ReplyController {

	
	private ReplyService service;
	
	@PostMapping(value="/getReplyList")
	public List<ReplyVO> getReplyList(@RequestParam("f_no") int f_no){
		return service.readReply(f_no);
	}
	
	/*
	 * @PostMapping(value="/new", consumes="application/json", produces =
	 * {MediaType.TEXT_PLAIN_VALUE}) public ResponseEntity<String>
	 * create(@RequestBody ReplyVO vo){
	 * 
	 * int insertCount = service.register(vo);
	 * 
	 * return insertCount == 1 ? new ResponseEntity<>("success",HttpStatus.OK) : new
	 * ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	 * 
	 * }
	 * 
	 * 
	 * @GetMapping(value = "/pages/{f_no}/{page}", produces = {
	 * MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	 * public ResponseEntity<List<ReplyVO>> getList(@PathVariable("page")int
	 * page, @PathVariable("f_no")int f_no){
	 * 
	 * Criteria cri = new Criteria(page, 10);
	 * 
	 * return new ResponseEntity<>(service.getList(cri, f_no),HttpStatus.OK); }
	 * 
	 * @GetMapping(value="/{rno}", produces = {
	 * MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	 * public ResponseEntity<ReplyVO> get(@PathVariable("rno")int rno){
	 * 
	 * return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	 * 
	 * }
	 * 
	 * @DeleteMapping(value="/{rno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	 * public ResponseEntity<String> remove(@PathVariable("rno")int rno){
	 * 
	 * return service.remove(rno) == 1 ? new
	 * ResponseEntity<>("success",HttpStatus.OK) : new
	 * ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); }
	 * 
	 * @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value =
	 * "/{rno}", consumes = "application/json", produces =
	 * {MediaType.TEXT_PLAIN_VALUE}) public ResponseEntity<String>
	 * modify(@RequestBody ReplyVO vo, @PathVariable("rno")int rno){ vo.setRno(rno);
	 * 
	 * return service.modify(vo) == 1 ? new
	 * ResponseEntity<>("success",HttpStatus.OK) : new
	 * ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); }
	 */
	
	
	
	
	
	
	
	
	
	
	
	
}	
