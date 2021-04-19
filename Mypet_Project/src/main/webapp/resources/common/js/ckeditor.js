ClassicEditor
	.create(document.querySelector('#f_content'))
	.then( editor => {
		console.log(editor);
	})
	.catch( error => {
		console.error( error );
	});