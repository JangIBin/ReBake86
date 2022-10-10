<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
 <script src="https://kit.fontawesome.com/1fd422b08e.js" crossorigin="anonymous"></script>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Homemade+Apple|Old+Standard+TT:700|Share+Tech+Mono" rel="stylesheet">
 <title>게시판</title>
<link rel="stylesheet" type="text/css" href="updateForm.css">
<link rel="stylesheet" href="reset.css">
</head>
<body>
<main>
<div class="sidebar">
		<ul>
			<img class="logoImg" src="image/logoImg.png" alt="">
			<li class="title">
				<a class="rebake" href="#">
					RE:
					<span>bake</span>
				</a>
			</li>
	
			<li><a href="member.mdo?cmd=login">Sign in</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Recommend</a></li>
			<li><a href="#">Contact Us</a></li>
	
			<div class="text_wrap">
				<div class="tel_email">
					<span>TEL</span> : +81 02 519 3119 <br />
					<span>Email : qpq</span>85@<span>gmail.com</span>
				</div>
				<div class="socialImo">
					<i class="fa-brands fa-facebook"></i> <i class="fa-brands fa-twitter"></i>
					<i class="fa-brands fa-instagram"></i>
				</div>
			</div>

		</ul>
	</div>

            <div class="updateform">
                <div class="updateformTable">
                    <p class="updateTitle">Editing your own writing</p>
                    <form action="member.mdo?cmd=updatePro&pageNum=${pageNum }"
                        method="post" name="writeForm" onsubmit="return writeSave()"
                        encType="multipart/form-data">
            
                        <table width="630" class="editTable">
            
                            <tr>
                                <td class="inputWhat" align="center"><p class="exceptContent idArea">ID</p></td>
    
                                <td class="inputWhat">
                                    <input class="inputArea idArea" type="text" size="12"
                                    maxlength="12" name="writer" value="${article.writer }"
                                    readonly="readonly"> 
                                    <input type="hidden" name="num"
                                    value="${article.num }"> 
                                    <input type="hidden"
                                    name="imageUID" value="${article.imageUID }">
                                </td>
                            </tr>
            
                            <tr>
                                <td class="inputWhat" align="center"><p class="exceptContent">Title</p></td>
                                <td>
                                    <input class="inputArea"  type="text" size="50"
                                    maxlength="50" name="subject" value="${article.subject }">
                                </td>
                            </tr>
            
                            <tr>
                                <td class="inputWhat" align="center"><p class="exceptContent">Email</p></td>
                                <td>
                                    <input class="inputArea" type="text" size="30"
                                    maxlength="30" name="email" value="${article.email }" readonly="readonly">
                                </td>
                            </tr>
            
                            <tr>
                                <td class="inputWhat"> <p class="content">Content</p></td>
                                <td>
                                    <textarea class="contentArea" name="content">${article.content }</textarea>
                                </td>
                            </tr>
            
                            <tr>
                                <td class="inputWhat"align="center"><p class="exceptContent">Password</p></td>
                                <td>
                                    <input class="inputArea"  type="password" size="10" maxlength="10" name="pass">
                                </td>
                            </tr>
            
                            <tr>
                                <td colspan="2" align="center">
                                    <div class='imagePreview'>
                                        <label class="fileChoose"for="file">
                                            <input type='file' name="fileName" id='btnAtt' multiple='multiple' value="Add photo"/>
                                        </label>
                                        <div id='att_zone'
                                        data-placeholder='To add images, click the Select File button'></div>
                                    </div>
                                </td>
                            </tr>
            
                            <tr>
                                <td class="threeButtonBox" colspan="2" align="center">
                                    <input class="threeButton" type="submit" value="Submit"> 
                                    <input class="threeButton" type="reset" value="Reset"> 
                                    <input class="threeButton" type="button" value="Back to list"
                                    onclick="window.location.href='member.mdo?cmd=list&pageNum=${pageNum }'">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </main>
        <script>
            ( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // 이미지와 체크 박스를 감싸고 있는 div 속성
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // 탐색기에서 드래그앤 드롭 사용
    attZone.addEventListener('dragenter', function(e){
      e.preventDefault();
      e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
      e.preventDefault();
      e.stopPropagation();
      
    }, false)
  
    attZone.addEventListener('drop', function(e){
      var files = {};
      e.preventDefault();
      e.stopPropagation();
      var dt = e.dataTransfer;
      files = dt.files;
      for(f of files){
        imageLoader(f);
      }
      
    }, false)
    

    
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  }
)('att_zone', 'btnAtt')



function writeSave(){
	if(document.writeForm.writer.value==""){
		alert("작성자를 입력하십시요.");
		document.writeForm.writer.focus();
		return false;
	}
	
	if(document.writeForm.email.value==""){
		alert("이메일을 입력하십시요.");
		document.writeForm.email.focus();
		return false;
	}
	
	if(document.writeForm.subject.value==""){
		alert("제목을 입력하십시요.");
		document.writeForm.subject.focus();
		return false;
	}
	
	if(document.writeForm.content.value==""){
		alert("내용을 입력하십시요.");
		document.writeForm.content.focus();
		return false;
	}
	
	if(document.writeForm.pass.value==""){
		alert("비밀번호를 입력하십시요.");
		document.writeForm.pass.focus();
		return false;
	}
	
}

function searchSave() {
	if(document.search.searchText.value==""){
		alert("검색어를 입력하십시요.");
		document.search.searchText.focus();
		return false;
	}
	
}

function updateCommentSave() {
	if(document.c_commentUpdate.update.value==""){
		alert("댓글 내용을 입력하십시요.");
		document.c_commentUpdate.update.focus();
		return false;
	}
	
}

function loginIdCheck(loginID){
	
	if(loginID == ""){
		alert('로그인이 필요한 기능입니다.');
 		location.href = 'member.mdo?cmd=login';
 		return true;
 	}else{
	 	location.href = 'member.mdo?cmd=writeForm';
 		return true;
 	}
	
}

function checkText() {
	if(commentInputForm.commentText.value==""){
		alert("댓글을 입력하세요.");
		commentInputForm.commentText.focus();
		return false;
	}else{
		return true;
	}
}

function nwindow(num,commentID){
		window.name = "commentParant";
		var url= "member.mdo?cmd=commentUpdate&num="+num+"&commentID="+commentID;
		window.open(url,"","width=600,height=230,left=300");
}

        </script>
</body>
</html>