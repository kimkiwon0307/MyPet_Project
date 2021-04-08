/**
 * 
 */
console.log("reply module.......");

var replyService = (function(){
	
	 function add(reply, callback){
		 console.log("add reply..........");
		
		 $.ajax({

			 type : 'post',
			 url : '/mypet/replies/new',
			 data : JSON.stringify(reply),
			 contentType : "application/json; charset=utf-8",
			 success : function(result, status, xhr){
				 if(callback){
					 callback(result);
				 }
			 },
			 error : function(xhr, status, er){
				 
			 }
		 })
	 }
	 
	 
	 function getList(param, callback, error){
		 
		 var f_no = param.f_no;
		 
		 var page = param.page || 1;
		 
		 $.getJSON("/mypet/replies/pages/" + f_no +"/" +page +".json",
				 function(data){
			 		if(callback){
			 			callback(data);
			 		}
		 		}).fail(function(xhr, status, err){
		 	if(error){
		 		error();
		 	}
		 });
	 }
	 
	 function remove(rno, callback, error){
		 $.ajax({
			 type : 'delete', 
			 url : '/mypet/replies/' + rno,
			 success : function(deleteResult, status, xhr){
				 if(callback){
					 callback(deleteResult);
				 }
			 },
			 error : function(xhr, status, er){
				 if(error){
					 error(er);
				 }
			 }
		 });
	 }
	 
	 function update(reply, callback, error){
		 $.ajax({
			type : 'put',
			url : '/mypet/replies/' + reply.rno,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		 });
	 }
	 
	 function get(rno, callback, error) {
		 $.get("/mypet/replies/" + rno + ".json", function(result){
			
			 if(callback){
				 callback(result);
			 }
		 }).fail(function(xhr, status, err){
			 if(error){
				 error();
			 }
		 });
	 }
	 
	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get    : get
	};
})();