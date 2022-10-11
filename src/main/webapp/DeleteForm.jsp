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
<link rel="stylesheet" type="text/css" href="DeleteForm.css">
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
        <div class="deleteform">
            <div align="center">
                <p class="deleteTitle">You want to delete your writing?</p>
                <br>
        
                <form action="member.mdo?cmd=b_DeletePro&pageNum=${pageNum }"
                    method="post" name="delForm" onsubmit="return deleteSave()">
        
                    <table width="360" align="center" cellpadding="0" cellspacing="0">
                        <tr height="30">
                            <td align="center">
                                <p class="inputSentence">Input your password</p>
                            </td>
                        </tr>
        
                        <tr height="30">
                            <td align="center">
                                <input class="pdInput" type="password" name="pass"size="8" maxlength="12"> 
                                <input class="pdInput" type="hidden" name="num" value="${num }"> 
                                <input class="pdInput" type="hidden" name="pageNum" value="${pageNum }"> 
                                <input class="pdInput" type="hidden" name="imageUID"value="${imageUID }">
                            </td>
                        </tr>
        
                        <tr height="30">
                            <td class="twoButtonBox">
                                <input class="twoButton" type="submit" value="Delete"> 
                                <input class="twoButton" type="button" value="Back to list"
                                onclick="document.location.href='member.mdo?cmd=list&pageNum=${pageNum}'">
                            </td>
                        </tr>
                    </table>
        
                </form>
            </div>
        </div>
    </main>
</body>
</html>