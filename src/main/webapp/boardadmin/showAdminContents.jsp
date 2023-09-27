<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<link rel="stylesheet" href="css/footer.css">
<link href="https://fonts.googleapis.com/earlyaccess/nanumpenscript.css"
	rel="stylesheet" />
<link rel="stylesheet" href="css/header.css">
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

.mpbtn {
	background-color: #000000;
	color: white;
	border: none;
	border-radius: 10px;
	padding: 7px;
	font-size: 13px;
	font-weight: bold;
	cursor: pointer;
	margin-left: 5px;
}

.mpbtn:hover {
	background-color: #ffffff;
	color: rgb(0, 0, 0);
	border: 1px solid #000000;
}

body{
	background-color: whitesmoke;
}

#contents_title {
	font-size: 30px;
	font-weight: bold;
	border-radius: 10px;
}

#title_update_value {
	width: 100%;
}

#view_count {
	text-align: right;
	border-radius: 10px;
	background-color: white;
	font-weight: bold;
}

#contents {
	width: 100%;
	background-color: white;
	border-radius: 10px;
}

#contents_title {
	background-color: white;
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

#searchBtn {
	width: 100px;
	height: 40px;
}

#search {
	width: 300px;
	height: 40px;
}

#title_search {
	text-align: right;
}
.titles{
	margin-top: 70px;
}
#view_count{
	margin-top: 70px;
}
#date {
	text-align: right;
}

#replyText {
	width: 80%;
}

#reply_title {
	display: flex;
	justify-content: center;
	align-items: center;
}

#reply_input {
	display: flex;
	justify-content: center;
	align-items: center;
}

#replyChkBtn {
	width: 100%;
	height: 100%;
	text-align: right;
}

a.black-text-link {
    color: gray;
}

.replyheader{
	font-size: 20px;
	font-weight: bold;
}

.page-link.active {
    text-decoration: underline !important;
    color: white !important; /* 현재 페이지 링크의 글자 색상을 변경 */
    background-color:black !important;
}

</style>
</head>

<body class="bg-light">
<div class="container-fluid">
		<div class="row header">
			<div class="col-1 d-sm-block d-none"></div>
			<div class="col-2 ">E.S.C</div>
			<div class="col-8 d-sm-block d-none">
				<ul class="headerul">
					<c:choose>
						<c:when test="${empty sessionScope.loginID}">
							<li class="headerli headerlogin">
								<div class="login" id="login-button">로그인</div>
							</li>
							<li class="headerli membership"><a
								href="/Membership.members">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="headerli headerlogout"><a href="/logout.members">로그아웃</a>
							</li>
							<li class="headerli"><a href="/showBoardList.board?cpage=1">게시판</a></li>
							<li class="headerli headerboard"><a href="/mypage.members">마이페이지</a></li>
						</c:otherwise>

					</c:choose>


				</ul>
			</div>
			<div class="col-1 d-md-block d-none"></div>
			<div class="col-1 d-block d-sm-none">
				<ul class="headerul2">
					<c:choose>
						<c:when test="${empty sessionScope.loginID}">
							<li class="headerli headerlogin2">
								<div class="login" id="login-button2">로그인</div>
							</li>
							<li class="headerli membership2"><a
								href="/Membership.members">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="headerli headerlogout2"><a href="/logout.members">로그아웃</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
				<input type="checkbox" id="active"> <label for="active"
					class="menu-btn"><span></span></label> <label for="active"
					class="close"></label>
				<div class="wrapper">
					<ul>
						<li><a href="#">Board</a></li>
						<li><a href="/mypage.members">MyPage</a></li>
						<li><a href="#">Rank</a></li>
						<li><a href="#">Shop</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mb-4">
			<div class="col-md-10 titles">
				<!-- 제목 칸과 넓이를 동일하게 하기 위해 col 제거 -->
				<div class="title" id="title_update" style="display: none;">
					<input type="text" id="title_update_value" name="title_update"
						value="${selectboard.title}" placeholder=""><input
						type="hidden" name="seq" id="seq" readonly>
				</div>
				<div class="title" id="contents_title">${selectboard.title}</div>
			</div>
			<div class="col-md-2" id="view_count">조회수 :
				${selectboard.view_count}<br><i class="fa-regular fa-calendar"></i>${selectboard.formedSignupData}</div>
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
				<button type="button" class="mpbtn btn-outline-secondary"
					id="update_check" style="margin-right: 10px;">확인</button>
				<button type="button" class="mpbtn btn-outline-secondary"
					id="update_cancel">취소</button>
			</div>
		</div>
		<div class="row contents mb-4">
			<div class="col contents justify-content-end" id="contentContainer">
				<fieldset>
					<legend>첨부파일</legend>
					<c:choose>
						<c:when test="${innerFiles.size() != 0}">
							<c:forEach var="i" items="${innerFiles }">
								<a href="/download.file?sysname=${i.sys_name }&oriname=${i.ori_name}" class="black-text-link">${i.ori_name }</a>
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
						<button type="button" class="mpbtn btn-outline-secondary"
							style="margin-right: 10px;" id="return">목록으로</button>
						<button type="button" class="mpbtn btn-outline-secondary"
							id="updateBtn" style="margin-right: 10px;">수정하기</button>
						<button type="button" class="mpbtn btn-outline-secondary"
							id="delete">삭제하기</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="mpbtn btn-outline-secondary"
							style="margin-right: 10px;" id="return">목록으로</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="second-fluid">
		<div class="row footer gx-0">
			<div class="col-12 col-xl-4 order-4 order-xl-1">
				<div class="row">
					<div class="col-12 foottitle">
						<span>Team E.S.C</span>
					</div>
					<span class="footenter"> <span>팀 프로젝트로 만든 재밌는 게임들</span>
					</span>
				</div>
			</div>
			<div class="col-12 col-xl-3 order-3 order-xl-2">
				<div class="footertitle d-none d-xl-block">
					<span>고객센터</span>
				</div>
				<div class="row">
					<span class="col-12 service"> 문의 : 010-9554-7757 </span>
				</div>
				<div class="row">
					<span class="col-12 service"> <a target="_blank"
						href="https://pf.kakao.com"> 카카오톡 상담 문의 </a></span>
				</div>
				<div class="row opacity-0">
					<br />
				</div>
				<div class="row">
					<span class="col-12 service"> 게임문의·단가문의·견적문의·기타문의 </span>
				</div>
				<div class="row">
					<span class="col-12 service"> 오픈 : 24시간 </span>
				</div>
			</div>
			<div class="col-12 col-xl-1 order-2 order-xl-3 opacity-0"></div>
			<div class="col-12 col-xl-2 order-1 order-xl-4">
				<div class="footertitle d-none d-xl-block">
					<span> Social</span>
				</div>
				<div class="footericon">
					<a target="_blank" class="instaicon"
						href="https://www.instagram.com"><img class="icon"
						src="img/instagram.svg" alt="icon" width="40px" /></a> <a
						target="_blank" class="youtubeicon" href="https://youtube.com"><img
						class="youtube" src="img/youtube.svg" alt="icon" width="40px" /></a>
				</div>
			</div>
		</div>
	</div>

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
				url : "/updateContents.adminboard",
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
					url : "/deleteContents.adminboard",
					data : {
						seq : deleteSeq
					}
				}).done(function(resp) {
					window.location.href = "/showBoardList.adminboard?cpage=${latesPageNum}&searchText=";
				});
			}
			return;
		})

		$("#return").on("click", function() {
			location.href = "/showBoardList.adminboard?cpage=${latesPageNum}&searchText=";
		})  
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

	<script>
                // 게임 박스 마우스 오버시 효과)(hover)
                $(".game").on("mouseover", function () {
                    $(this).css("transform", "scale(1.1)");
                    $(this).css("transition", "all 0.5s");
                    $(this).css("cursor", "pointer");
                    $(this).css("box-shadow", "0px 0px 10px 2px rgba(0, 0, 0, 0.5)");
                });
                $(".game").on("mouseleave", function () {
                    $(this).css("transform", "scale(1)");
                    $(this).css("transition", "all 0.5s");
                    $(this).css("box-shadow", "none");
                });

                // 베너 크기가 변할 때마다 margin 조정
                function adjustBannerMargin() {
                    const windowWidth = window.innerWidth;
                    const banner = document.querySelector('.banner');
                    const loginbox = document.querySelector('.loginbox');
                    const loginbox3 = document.querySelector('.loginbox3');

                    if (loginbox) {
                        // loginbox가 있는 경우
                        if (windowWidth > 1200) {
                            banner.style.marginLeft = '50px';
                            banner.style.marginRight = '30px';
                        } else {
                            banner.style.marginLeft = '0px';
                            banner.style.marginRight = '0px';
                        }
                    }

                    if (loginbox3) {
                        // loginbox가 있는 경우
                        if (windowWidth > 1200) {
                            banner.style.marginLeft = '50px';
                            banner.style.marginRight = '30px';
                        } else {
                            banner.style.marginLeft = '0px';
                            banner.style.marginRight = '0px';
                        }
                    }
                }
                window.addEventListener('load', adjustBannerMargin);
                window.addEventListener('resize', adjustBannerMargin);

                let loginID = "${sessionScope.loginID}";
                // 베너 이미지 클릭시 게임 페이지로 이동
                $(".game1").on("click", function () {
                	$.ajax({
    			        url: "/JumpkingStart.game",
    			        type: "GET",
    			        data: { loginID: loginID }, // loginID를 사용하여 전달합니다.
    			        success: function (gameURL) {
    			            window.open(gameURL, "_blank");
    			        },
    			        error: function () {
    			            alert("게임을 시작하는 데 문제가 발생했습니다.");
    			        }
    			    });
                });
                $(".game2").on("click", function () {
                	$.ajax({
    			        url: "/SkeletonSurvivorStart.game",
    			        type: "GET",
    			        data: { loginID: loginID }, // loginID를 사용하여 전달합니다.
    			        success: function (gameURL) {
    			           
    			            window.open(gameURL, "_blank");
    			        },
    			        error: function () {
    			            alert("게임을 시작하는 데 문제가 발생했습니다.");
    			        }
    			    });
                });
                $(".game3").on("click", function () {
                	$.ajax({
    			        url: "/DinoGameStart.game",
    			        type: "GET",
    			        data: { loginID: loginID }, // loginID를 사용하여 전달합니다.
    			        success: function (gameURL) {
    			           
    			            window.open(gameURL, "_blank");
    			        },
    			        error: function () {
    			            alert("게임을 시작하는 데 문제가 발생했습니다.");
    			        }
    			    });
                });
                $(".game4").on("click", function () {
    			    $.ajax({
    			        url: "/CarCrashStart.game",
    			        type: "GET",
    			        data: { loginID: loginID }, // loginID를 사용하여 전달합니다.
    			        success: function (gameURL) {
    			           
    			            window.open(gameURL, "_blank");
    			        },
    			        error: function () {
    			            alert("게임을 시작하는 데 문제가 발생했습니다.");
    			        }
    			    });
    			});
                $(".game5").on("click", function () {
                	$.ajax({
    			        url: "/RoadOfSamuraiStart.game",
    			        type: "GET",
    			        data: { loginID: loginID }, // loginID를 사용하여 전달합니다.
    			        success: function (gameURL) {
    			           
    			            window.open(gameURL, "_blank");
    			        },
    			        error: function () {
    			            alert("게임을 시작하는 데 문제가 발생했습니다.");
    			        }
    			    });
                })
                $(".game6").on("click", function () {
                    window.open("game/RaiseDragon/raisedragon.jsp");
                })

                // 로그인을 실행했을때 넣을 속성들이 사라지면서 error가 나기 때문에
                // 로그인을 성공하기 전에만 실행하고, 로그인을 성공하면 error가 나지 않도록 제어
                if (loginID == "") {
                    // 쿠키 생성해서 아이디 저장
                    let inputID = document.getElementById("id");
                    let remID = document.getElementById("chk");

                    let userID = Cookies.get("remID");
                    if (userID) {
                        inputID.value = userID;
                        remID.checked = true;
                    }
                    remID.onchange = function () {
                        if (remID.checked) {
                            Cookies.set("remID", inputID.value, {
                                expires: 7
                            }); // 7일간 저장
                        } else {
                            Cookies.remove("remID"); // 쿠키 삭제
                        }
                    }
                    const loginButton = document.getElementById("login-button");
                    const loginButton2 = document.getElementById("login-button2");
                    const loginModal = document.getElementById("login-modal");
                    const closeButton = document.querySelector(".close-button");

                    loginButton.addEventListener("click", function () {
                        loginModal.style.display = "block";
                    });
                    loginButton2.addEventListener("click", function () {
                        loginModal.style.display = "block";
                    });

                    closeButton.addEventListener("click", function () {
                        loginModal.style.display = "none";
                    });

                    window.addEventListener("click", function (event) {
                        if (event.target === loginModal) {
                            loginModal.style.display = "none";
                        }
                    });
                    // 로그인 모달 관련
                    const modal = document.getElementById('login-modal');
                    const openButton = document.getElementById('login-button');
                    const openButton2 = document.getElementById('login-button2');
                    const body = document.body;
                    $(".url").val(window.location.href);

                    // 모달 열기
                    openButton.onclick = function () {
                        modal.style.display = 'block';
                        body.style.overflow = 'hidden'; // 배경 스크롤 막기
                        $(".scroll").val(scrollY);
                    };
                    openButton2.onclick = function () {
                        modal.style.display = 'block';
                        body.style.overflow = 'hidden'; // 배경 스크롤 막기
                        $(".scroll").val(scrollY);
                    };

                    // 모달 닫기
                    function closeModal() {
                        modal.style.display = 'none';
                        body.style.overflow = 'auto'; // 배경 스크롤 다시 활성화
                        $(".scroll").val("");
                    }

                    closeButton.onclick = closeModal;

                    // 모달 외부 클릭 시 모달 닫기
                    window.onclick = function (event) {
                        if (event.target === modal) {
                            closeModal();
                        }
                    };
                }

                if (loginID != "") {
                    $(".headerlogout2").show();
                    $(".headerlogin2").hide();
                    $(".membership2").hide();
                } else {
                    $(".headerlogout2").hide();
                    $(".headerlogin2").show();
                    $(".membership2").show();
                }

                let scrollPosition = 0;
                scrollPosition = "${ scrollPosition }";
                window.scrollTo(0, scrollPosition);

                $.ajax({
                    type: "POST",
                    url: "/scrollout.members",
                    data: {
                        action: scrollY
                    },
                }).done(function (response) {
                    // console.log(response);
                    // window.scrollTo(0, response);
                });

            </script>

</body>
</html>