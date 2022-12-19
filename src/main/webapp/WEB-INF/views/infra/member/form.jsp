<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>JBK Gallery</title>

<!-- Link s -->
<%@include file="../common/user/includeV1/link.jsp"%>
<script src="https://cdn.tiny.cloud/1/7n1jdguo9b2ydncrpb40rrg4bsqofg35xv0zznkbu8e31whq/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<!-- Link e -->
</head>
<body>
	<!-- container s -->
	<div class="container px-4" style="margin-top: 5%">
		<!-- row s -->
		<div class="row gx-5">
			<div class="col-2"></div>

			<!-- Main area s -->
			<div class="col-8">
				<h2>김진범 갤러리</h2>
				<hr />

				<br />

				<form method="POST" name="form" id="form">
					<input id="postHeader" name="postHeader" type="text" class="form-control" placeholder="제목" />
					<br />
					<textarea id="editor"></textarea>
					<br />
					<button type="button" id="btnSave" class="btn btn-primary">게시글 등록</button>
				</form>

				<br />
			</div>
			<!-- Main area e -->

			<!-- Login Form area s -->
			<div class="col-2">
				<form name="" id="" action="" method="POST" class="form">
					<!-- ID -->
					<label for="ifmmId" class="form-label">ID</label>
					<input id="ifmmId" type="text" class="form-control" placeholder="ID" />

					<!-- PW -->
					<label for="ifmmPw" class="form-label">PW</label>
					<input id="ifmmPw" type="text" class="form-control" placeholder="PW" />

					<br />

					<!-- Login Butoon -->
					<button class="btn btn-primary">로그인</button>
				</form>
			</div>
			<!-- Login Form area e -->
		</div>
		<!-- row e -->
	</div>
	<!-- container s -->

	<!-- Footer s -->
	<%@include file="../common/user/includeV1/footer.jsp"%>
	<!-- Footer e -->

	<!-- Bootstrap Script s -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<!-- Bootstrap Script e -->
	
	<!-- Tiny Editor Script s -->
	<script>
	$(function() {
	    var plugins = [ 'advlist', 'autolink', 'lists', 'link', 'image',
		    'charmap', 'preview', 'anchor', 'searchreplace',
		    'visualblocks', 'code', 'fullscreen', 'insertdatetime',
		    'media', 'table', 'code', 'help', 'wordcount', 'save', ];
	    var edit_toolbar = 'formatselect fontselect fontsizeselect |'
		    + ' forecolor backcolor |'
		    + ' bold italic underline strikethrough |'
		    + ' alignjustify alignleft aligncenter alignright |'
		    + ' bullist numlist |' + ' table tabledelete |'
		    + ' link image';

	    tinymce
		    .init({
			language : 'ko_KR', //한글판으로 변경
			selector : '#editor',
			height : 500,
			menubar : false,
			plugins : plugins,
			toolbar : edit_toolbar,

			/*** image upload ***/
			image_title : true,
			/* enable automatic uploads of images represented by blob or data URIs*/
			automatic_uploads : true,
			/*
			    URL of our upload handler (for more details check: https://www.tiny.cloud/docs/configure/file-image-upload/#images_upload_url)
			    images_upload_url: 'postAcceptor.php',
			    here we add custom filepicker only to Image dialog
			 */
			file_picker_types : 'image',
			/* and here's our custom image picker*/
			file_picker_callback : function(cb, value, meta) {
			    var input = document.createElement('input');
			    input.setAttribute('type', 'file');
			    input.setAttribute('accept', 'image/*');

			    /*
			    Note: In modern browsers input[type="file"] is functional without
			    even adding it to the DOM, but that might not be the case in some older
			    or quirky browsers like IE, so you might want to add it to the DOM
			    just in case, and visually hide it. And do not forget do remove it
			    once you do not need it anymore.
			     */
			    input.onchange = function() {
				var file = this.files[0];

				var reader = new FileReader();
				reader.onload = function() {
				    /*
				    Note: Now we need to register the blob in TinyMCEs image blob
				    registry. In the next release this part hopefully won't be
				    necessary, as we are looking to handle it internally.
				     */
				    var id = 'blobid' + new Date().getTime();
				    var blobCache = tinymce.activeEditor.editorUpload.blobCache;
				    var base64 = reader.result.split(',')[1];
				    var blobInfo = blobCache.create(id, file,
					    base64);
				    blobCache.add(blobInfo);

				    /* call the callback and populate the Title field with the file name */
				    cb(blobInfo.blobUri(), {
					title : file.name
				    });
				};
				reader.readAsDataURL(file);
			    };
			    input.click();
			},
			/*** image upload ***/

			content_style : 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }',
		    });

	    $('#btnSave').on('click', function() {
		var content = tinymce.activeEditor.getContent();
		console.log(content);
	    });
	});
    </script>
	<!-- Tiny Editor Script e -->
</body>
</html>
