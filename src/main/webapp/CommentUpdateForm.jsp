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
<link rel="stylesheet" type="text/css" href="CommentUpdateForm.css">
<link rel="stylesheet" href="reset.css">
</head>
<body>
    <div class="sidebar">
        <ul>
        <img class="logoImg" src="image/67739b381c100a796668505daf001123-cupcake-sweet-dessert.png" alt="">
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
    <main>
        <div class="editform" align="center">
            <div>
                <p class="editTitle">
                    Rewriting reply
                </p>
                <form method="post" name=c_commentUpdate
                    action="member.mdo?cmd=commentUpdatePro&num=${num }&commentID=${commentID }&commentText=${commentText}&imageUID=${imageUID }"
                    enctype="multipart/form-data" onsubmit="return updateCommentSave()">
                    <textarea class="inputSentence" type="text" id="update" name="update"
                        maxlength=1024 value="${commentText }"></textarea>
                    <div class="oneButtonBox">
                        <input class="oneButton" type="submit" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </main>
</body>
</html>