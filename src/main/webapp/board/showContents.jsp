<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	integrity="sha256-7ZWbZUAi97rkirk4DcEp4GWDPkWpRMcNaEyXGsNXjLg="
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
	integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg="
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"
	integrity="sha256-5slxYrL5Ct3mhMAp/dgnb5JSnTYMtkr4dHby34N10qw="
	crossorigin="anonymous"></script>

<!-- language pack -->
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/lang/summernote-ko-KR.min.js"
	integrity="sha256-y2bkXLA0VKwUx5hwbBKnaboRThcu7YOFyuYarJbCnoQ="
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	rel="stylesheet">
<style>
/* div {
            border: 1px solid black;
        } */
.title>.titleContents {
	display: flex;
	width: 100%;
	height: 100%;
}

.titleContents>.left {
	width: 30%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 30px;
	font-weight: bold;
}

.titleContents>form {
	height: 100%;
	width: 70%;
}

form>.searchArea {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
	width: 100%;
}

.navbox {
	width: 100%;
}

.navlist {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.nonnav {
	display: flex;
}

#contents {
	width: 100%;
	height: 500px;
	overflow: auto;
	background-color: whitesmoke;
}

#contents_title {
	background-color: whitesmoke;
}

/* input 요소와 textarea 요소의 테두리 없애기 */
#contents {
	border: none;
	outline: none;
	/* 다른 스타일을 추가할 수 있습니다. */
}

#contents {
	display: flex;
	justify-content: center;
	align-items: center;
	display: inline-block;
}

#suggestion_buttons {
	display: flex;
	justify-content: center;
	align-items: center;
}

#reply_pagenation {
	display: flex;
	justify-content: center;
	align-items: center;
}
#searchBtn{
	width: 100px;
	height: 40px;
}
#search{
	width: 300px;
	height: 40px;
}
/* Style for the current page link */
.page-item.active .page-link {
	background-color: #007bff; /* Change to your desired background color */
	color: #fff; /* Change to your desired text color */
}
</style>
</head>

<body>
	
	<div class="container-fluid">
		<div class="title">
			<div class="titleContents">
				<div class="left col-12 col-sm-5">✨사이트 이름✨</div>

				<!-- 검색시 정보를 controller로 전송 -->
				<form action="/showBoardList.board" method="get"
					class="col-12 col-7">
					<div class="searchArea">
						<input type="text" id="search" name="searchText">
						<button id="searchBtn" class="btn btn-primary col-12 col-sm-2 m-2">검색</button>
					</div>
				</form>

			</div>
		</div>
	</div>
	<div class="container">
		<!-- 게시판 내용 코드 -->
		<div class="navbox mb-4">
			<div class="navlist bg-dark col-12 col-sm-12">
				<ul class="nav navbar-dark bg-dark">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Active</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				</ul>
			</div>
		</div>
		<div class="row header mb-4">
			<div class="col-md-11">
				<!-- 제목 칸과 넓이를 동일하게 하기 위해 col 제거 -->
				<div class="title" id="title_update" style="display: none;">
					<input type="text" id="title_update_value" name="title_update"
						size=100 value="${selectboard.title}" placeholder=""><input
						type="hidden" name="seq" id="seq" readonly>
				</div>
				<div class="title" id="contents_title">${selectboard.title}</div>
			</div>
			<div class="col-md-1">
				<div class="row">날짜 : ${selectboard.formedSignupData}</div>
				<div class="row">조회수 : ${selectboard.view_count}</div>
			</div>
		</div>

		<div class="row contents mb-4">
			<div class="col contents justify-content-end" id="contentContainer">
				<div id="contents" name="contents">${selectboard.contents}</div>
				<div id="summernoteContainer" style="display: none;">
					<textarea id="summernote" name="summernote_contents">${selectboard.contents}</textarea>
				</div>
			</div>
		</div>
		<div class="row update_buttons mb-4" style="display: none;">
			<div class="col botton d-flex justify-content-end">
				<button type="button" class="btn btn-outline-secondary"
					id="update_check" style="margin-right: 10px;">확인</button>
				<button type="button" class="btn btn-outline-secondary"
					id="update_cancel">취소</button>
			</div>
		</div>
		<div class="row suggestion_buttons mb-4">
			<div class="col" id="suggestion_buttons">
				<button type="button" class="btn btn-outline-primary" id="like_btn"
					style="margin-right: 10px;">
					<i class="fa-regular fa-thumbs-up fa-lg"></i>${selectboard.like}
				</button>
				<button type="button" class="btn btn-outline-danger"
					id="dislike_btn">
					<i class="fa-regular fa-thumbs-down fa-lg"></i>${selectboard.dislike}
				</button>
			</div>
		</div>
		<div class="row contents mb-4">
			<div class="col contents justify-content-end" id="contentContainer">
				<fieldset>
					<legend>첨부파일</legend>
					<c:choose>
						<c:when test="${innerFiles.size() != 0}">
							<c:forEach var="i" items="${innerFiles }">
								<a
									href="/download.file?sysname=${i.sys_name }&oriname=${i.ori_name}">${i.ori_name }</a>
								<br>
							</c:forEach>
						</c:when>
					</c:choose>
				</fieldset>
			</div>
		</div>
		<div class="row botton mb-4">
			<div class="col botton d-flex justify-content-end">
				<c:choose>
					<c:when test="${loginID eq selectboard.writer}">
						<button type="button" class="btn btn-outline-secondary"
							style="margin-right: 10px;" id="return">목록으로</button>
						<button type="button" class="btn btn-outline-secondary"
							id="updateBtn" style="margin-right: 10px;">수정하기</button>
						<button type="button" class="btn btn-outline-secondary"
							id="delete">삭제하기</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn btn-outline-secondary"
							style="margin-right: 10px;" id="return">목록으로</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="row reply_list mb-4">
			<div class="col reply_list">
				<c:choose>
					<c:when test="${isParentseq }">
						<table class="table" id="comments-table" width="700">
							<thead>
								<tr>
									<td scope="col" width="10"></td>
									<th scope="col" width="70">작성자</th>
									<th scope="col" width="400">댓글내용</th>
									<th scope="col" width="100">작성날짜</th>
									<th scope="col" width="40">#</th>
									<th scope="col" width="40">#</th>
								</tr>
							</thead>
						</table>
					</c:when>
					<c:otherwise>
						<div class="nonreply">댓글이 존재하지 않습니다.</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<div class="row reply_pagenation mb-4">
			<div class="col reply_pagenation pageNav" id="reply_pagenation">

			</div>
		</div>

		<div class="row reply_write mb-4">
			<div class="col reply_input">
				<div class="d-flex justify-content-between align-items-center">
					댓글쓰기<br> <input type="text" name="reply_write" size=100
						value="" placeholder="서로를 배려하는 깨끗한 인터넷 문화를 만듭시다." id="replyText">
					<button type="button" class="btn btn-outline-secondary"
						id="wirte_reply">입력</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 댓글을 생성하는 ajax 스크립트 부분 여기서 nav도 같이 출력한다. -->
	<script>
	let loginId="${loginID}";
window.onload = function() {
	//자신이 작성한 댓글만 수정 삭제 하기위한 변수
    let seq = "${selectboard.seq}";
    let commentsTable = $('#comments-table');
	let cpage="${replynaviseq}";
    $.ajax({
        url: '/showReplyList.reply',
        data: { seq: seq ,
        		cpage:cpage
        		},
        dataType: 'json',
    }).done(function(resp) {
    	//댓글을 보여주는 반환결과
		let replyList=resp.replyList;
	
		
		
       for (let i = 0; i < replyList.length; i++) {
           let comment = replyList[i];
         
           
           let commentRow = $('<tr>');
           
           commentRow.append('<td></td>');
           commentRow.append('<td>' + comment.writer + '</td>'); 
           let inputField = $('<input>', {
               type: 'text',
               style: 'border-width: 0;',
               class: 'comment-input',
               value: comment.contents,
               size: "50",
               readonly: true
           });

           let tdElement = $('<td>').append(inputField);
           
           commentRow.append(tdElement);
           
           commentRow.append('<td>' + comment.write_date + '</td>'); 

           let confirmButton = $('<button>', {
               class: 'updateChkBtn',
               text: '확인'
           }).hide();

           let cancelButton = $('<button>', {
               class: 'updateCancelBtn',
               text: '취소'
           }).hide();
           
           let editButton = $('<button>', {
                class: 'edit-btn',
                text: '수정',
                'data-comment-id': comment.seq,
                'data-parent-seq': comment.parent_seq
            });
           
        	
           //ajax에서 보낸 서블릿이 각각의 댓글이 작성자와 일치하는지  확인한 결과값을 가져온다
          	
           if(comment.writer==loginId){
        	   let tdElement2 = $('<td>').append(editButton, confirmButton, cancelButton);
               commentRow.append(tdElement2);
               commentRow.append('<td><button class="delete-btn" data-comment-id="' 
                    		   + comment.seq + '" data-parent-seq="' + comment.parent_seq + '">삭제</button></td>');
           }
           	
            
           	commentsTable.append(commentRow);
       }

       
       //navi를 보여주는 반환결과
    	let paginationData = resp.paginationData;
        
        let recordTotalCount = paginationData.recordTotalCount;
        let recordCountPerPage = paginationData.recordCountPerPage;
        let naviCountPerPage = paginationData.naviCountPerPage;
        let currentPage = paginationData.latestPageNum;
       
       let pageNav = $(".pageNav");
       // Calculate pagination and generate HTML 현재 네비의 개수를 확인
       let pageTotalCount = 0;
       
       if (recordTotalCount % recordCountPerPage > 0) {
           pageTotalCount = Math.floor(recordTotalCount / recordCountPerPage + 1);
       } else {
           pageTotalCount = Math.floor(recordTotalCount / recordCountPerPage);
       }
       if (currentPage < 1) {
           currentPage = 1;
       } else if (currentPage > pageTotalCount) {
           currentPage = pageTotalCount;
       }

       let startNavi = Math.floor((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;

       let endNavi = startNavi + (naviCountPerPage - 1);

       if (endNavi > pageTotalCount) {
           endNavi = pageTotalCount;
       }
		
       
       let needPrev = true;
       let needNext = true;

       if (startNavi == 1) {
           needPrev = false;
       }
       if (endNavi == pageTotalCount) {
           needNext = false;
       }
       
       if (pageTotalCount > 0) {
    	   let paginationHTML = '<nav aria-label="Page navigation example"><ul class="pagination PageNavi">';

    	   paginationHTML += '<li class="page-item"><a class="page-link" href="/showContents.board?cpage=1&searchText=${searchText}&seq=${selectboard.seq}" aria-label="First">First</a></li>';
    	   if (needPrev) {
    	       paginationHTML += '<li class="page-item"><a class="page-link" href="/showContents.board?cpage=' + (startNavi - 1) + '&searchText=${searchText}&seq=${selectboard.seq}" aria-label="Previous">&laquo;</a></li>';
    	   }

    	   for (let i = startNavi; i <= endNavi; i++) {
    	       if (i === currentPage) {
    	           // Add the "active" class to the current page
    	           paginationHTML += '<li class="page-item active"><a class="page-link" href="/showContents.board?cpage=' + i + '&searchText=${searchText}&seq=${selectboard.seq}">' + i + '</a></li>';
    	       } else {
    	           paginationHTML += '<li class="page-item"><a class="page-link" href="/showContents.board?cpage=' + i + '&searchText=${searchText}&seq=${selectboard.seq}">' + i + '</a></li>';
    	       }
    	   }

    	   if (needNext) {
    	       paginationHTML += '<li class="page-item"><a class="page-link" href="/showContents.board?cpage=' + (endNavi + 1) + '&searchText=${searchText}&seq=${selectboard.seq}" aria-label="Next">&raquo;</a></li>';
    	   }
    	   paginationHTML += '<li class="page-item"><a class="page-link" href="/showContents.board?cpage=' + pageTotalCount + '&searchText=${searchText}&seq=${selectboard.seq}" aria-label="Last">Last</a></li>';

    	   paginationHTML += '</ul></nav>';

    	   pageNav.append(paginationHTML);
       	}
       
       
       
        $('.edit-btn').on('click', function() {
            $(this).closest('tr').find('.comment-input').removeAttr('readonly');

            $(this).closest('tr').find('.updateChkBtn').show();
            $(this).closest('tr').find('.updateCancelBtn').show();
            $(this).closest('tr').find('.edit-btn').hide();
        });
       
        $('.updateCancelBtn').on('click', function() {
           window.location.reload();
        });
        
        $('.updateChkBtn').on('click', function() {
            let commentRow = $(this).closest('tr');
            let commentId = commentRow.find('.edit-btn').data('comment-id');
            let parentSeq = commentRow.find('.edit-btn').data('parent-seq');
            let contents = commentRow.find('.comment-input').val();
            let contentsInput = commentRow.find('.comment-input');
            
            contentsInput.focus();
            
            if(contents == ""){
            alert("댓글 내용을 입력하세요");
            contentsInput.focus();
            return;
         }

            $.ajax({
                url: '/update.reply',
                method: 'POST',
                data: {
                    contents: contents,
                    seq: commentId,
                    parent_seq: parentSeq
                },
                success: function() {
                   window.location.reload();
                }
            });
        });

		/*댓글을 삭제하는 함수*/
        $('.delete-btn').on('click', function() {
            let confirmation = confirm('정말로 댓글을 삭제하시겠습니까?');
            if (confirmation) {
                let commentId = $(this).data('comment-id');
                let parentSeq = $(this).data('parent-seq');
                $.ajax({
                    url: '/delete.reply',
                    method: 'POST',
                    data: {
                        seq: commentId,
                        parent_seq: parentSeq 
                          },
                          success: function() {
                              window.location.reload();
                          }
               		 });
           	 	}
       	 	});
    	});
	}
	$('#wirte_reply').on('click', function(){
		let seq = "${selectboard.seq}";
    	if($("#replyText").val() == ""){
       	alert("댓글 내용을 입력하세요");
       	return;
    	}
    	$.ajax({
    	
       	url : "/writeReply.reply",
       	data : {
    		  replyContents : $("#replyText").val(),
        	  parent_seq : seq
       	},
       	success: function() {
            	  window.location.reload();
        	   }
    	});
	 });
	
	$('#replyText').on('keydown', function(event){
		let seq = "${selectboard.seq}";
		if (event.key == "Enter"){
			if($("#replyText").val() == ""){
		       	alert("댓글 내용을 입력하세요");
		       	return;
		    	}
		    	$.ajax({
		    	
		       	url : "/writeReply.reply",
		       	data : {
		    		  replyContents : $("#replyText").val(),
		        	  parent_seq : seq
		       	},
		       	success: function() {
		            	  window.location.reload();
		        	   }
		    	});
		}
    	
	 });
	
	</script>

	<script>
		$('input[name=seq]').attr('value', "${selectboard.seq}");

		$('#updateBtn').click(function() {
			$('#contents').hide();
			$('#summernoteContainer').show();
			$('.update_buttons').show(); // 수정 버튼을 클릭하면 수정 확인 및 취소 버튼을 보이도록 설정
			$('#title_update').show();
			$('#contents_title').hide();
		});

		$('#update_cancel').click(function() {
			$('#contents').show();
			$('#summernoteContainer').hide();
			$('.update_buttons').hide(); // 수정 취소 버튼을 클릭하면 원래 내용과 버튼을 숨기도록 설정
			$('#title_update').hide();
			$('#contents_title').show();
		});

		$('#update_check').click(function() {
			// 여기에 수정 확인 로직을 추가하세요.
			let updatedContent = $('#summernote').val();
			let updateTitle = $('#title_update_value').val();
			let updateSeq = $("#seq").val();
			// 수정한 내용을 서버로 보내는 등의 동작을 수행할 수 있습니다.
			$.ajax({
				url : "/updateContents.board",
				data : {
					title : updateTitle,
					Contents : updatedContent,
					seq : updateSeq
				}
			}).done(function(resp) {
				window.location.reload();
			});

			$('#contents').show();
			$('#summernoteContainer').hide();
			$('.update_buttons').hide(); // 수정 확인 버튼을 클릭하면 수정 내용을 표시하고 버튼을 숨기도록 설정
			$('#title_update').hide();
			$('#contents_title').show();
		});

		$("#delete").on("click", function() {
			let isdelete = confirm("게시물을 삭제하시겠습니까?");
			let deleteSeq = $("#seq").val();
			if (isdelete) {
				$.ajax({
					url : "/deleteContents.board",
					data : {
						seq : deleteSeq
					}
				}).done(function(resp) {
					window.location.href = "/showBoardList.board?cpage=${latesPageNum}";
				});
			}
			return;
		})

		$("#return").on("click", function() {
			location.href = "/showBoardList.board?cpage=${latesPageNum}&searchText="+$("search").val();
		})
		
		// Assuming you have elements with IDs like "like_btn" and "dislike_btn"
$(document).ready(function() {
    $('#like_btn').click(function() {
        // Send an AJAX request to increment the likes count on the server
        $.ajax({
            url: '/like.board',
            method: 'POST', // or 'GET', depending on your server-side implementation
            data: {
                contentId: '${selectboard.seq}', // Pass the content ID or any unique identifier
            },
            success: function(response) {
                // Update the like count on the page based on the server's response
            	 window.location.reload();
            },
            error: function(error) {
                console.error('Error:', error);
            }
        });
    });

    $('#dislike_btn').click(function() {
        // Send an AJAX request to increment the dislikes count on the server
        $.ajax({
            url: '/dislike.board',
            method: 'POST', // or 'GET'
            data: {
                contentId: '${selectboard.seq}',
            },
            success: function(response) {
                // Update the dislike count on the page based on the server's response
            	 window.location.reload();
            },
            error: function(error) {
                console.error('Error:', error);
            }
        });
    });
});

	       
	</script>

	<script>    
    $('#summernote').summernote({
        toolbar: [
          // [groupName, [list of button]]
          ['fontname', ['fontname']],
          ['fontsize', ['fontsize']],
          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
          ['color', ['forecolor','color']],
          ['table', ['table']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          ['insert',['picture','link','video']],
          ['view', ['fullscreen', 'help']]
        ],
      fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
         placeholder: '내용을 작성해 주세요',
         tabsize: 2,
         lang: 'ko-KR', // default: 'en-US'
        	 callbacks: {
                 onImageUpload: function (files) {
                     let editor = $(this);

                     // FormData 객체를 생성하고 이미지를 추가합니다.
                     let formData = new FormData();
                     formData.append(
                         "image",
                         files[0]);

                     // 이미지를 서버로 업로드합니다.
                     $.ajax({
                         url: "/upload.file",
                         method: "post",
                         data: formData,
                         processData: false, // 필수 : FormData 객체를 문자열로 변환하지 않음
                         contentType: false, // 필수 : x-www-form-urlencoded로 파싱되는 것을 방지
                     }).done(function (resp) {
                         let img = $("<img>");
                         img.attr("src", resp);
                         console.log(img);
                         $("#summernote").summernote(
                             "insertNode", img[0]);
                     })
                 }
             }
     });
</script>

</body>
</html>