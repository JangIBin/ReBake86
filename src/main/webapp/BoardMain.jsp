<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/1fd422b08e.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Homemade+Apple|Old+Standard+TT:700|Share+Tech+Mono" rel="stylesheet">
    <title>Document</title>
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="BoardMain.css">
    <script type="text/javascript" src="bogun.js"></script>
</head>
<body>
<!-- <c:set var="loginID" value="${sessionScope.loginID }" /> -->
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
	
    <div class="topPart">
	  <img class="headImg" src="image/breadd2.jpeg" alt="">
      <p class="headTitle1">Share your own bread story</p>
	  <p class="headTitle2">& Check out others!</p>
    </div>

    <!-- 검색 창 -->
    <form action="member.mdo?cmd=list&pageNum=1" method="post" name="search" onsubmit="return searchSave()"></form>
    <div class="searchBox">
		<div class="search_content">
			<select class="searchWhat" name="searchWhat">
				<option value="writer">writer</option>
				<option value="subject">subject</option>
				<option value="content">content</option>
			</select> 
			<div class="flour_input">
				<img src="image/flour.png" style="width: 32px; padding-left: 8px;" alt="">
				<input type="text" name="searchText" id="search" placeholder="Username, Title, Content">
			</div>
			<input class="searchButton" type="submit"value="search">
		</div>
    </div>
	</form>
    
		<div class="writeButton">
          <a onclick="return loginIdCheck('${loginID }')" class="write">
            Create new story
          </a>
        </div>
		
	

		<c:if test="${count == 0 }">

			<table width="700" border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td class="nolist" align="center">There are no posts saved on the board.</td>
				</tr>
			</table>
		</c:if>
		
		<c:if test="${count > 0 }">
			<c:forEach var="article" items="${articleList }">
			<div class="listArea">
					<div class="list_content">

						<div class="each_table">
							<div>
								<div class="id_img"> 
									<p class="writer"><a href="mailto:${article.email }"> Haey</a></p>
									<img class="each_Img" src="image/main2.jpeg"alt="">
								</div>
							</div>
							<div>
								<p class="subjectPart">
									<a class="my_text"
									href="member.mdo?cmd=content&num=${article.num }&pageNum=${currentPage }">
									Seong-su dong tour with bread!</a>
								</p>
								<div class="content_info">
									<p class="each_info"> view : 66</p>
									<p class="reco_kubby each_info">
										<c:set var="evCnt" value="${evaluationDAO.countGechu(num) }"></c:set> 
										like : 5
										<c:if test="${article.readcount >= 20 }">
										<img src="image/gingercookie3.png" border="0" height="30">
									</c:if>
									</p>
								</div>
								<p class="each_date each_info">2022.10.20</p>
							</div>
						</div>

						<div class="each_table">
							<div>
								<div class="id_img"> 
									<p class="writer"><a href="mailto:${article.email }"> ${article.writer }</a></p>
									<img class="each_Img" src="image/main5.jpeg"alt="">
								</div>
							</div>
							<div>
								<p class="subjectPart">
									<a class="my_text"
									href="member.mdo?cmd=content&num=${article.num }&pageNum=${currentPage }">
									${article.subject }</a>
								</p>
								<div class="content_info">
									<p> view : ${article.readcount }</p>
									<p class="reco_kubby">
										<c:set var="evCnt" value="${evaluationDAO.countGechu(num) }"></c:set> 
										like :  ${evCnt }
										<c:if test="${article.readcount >= 20 }">
										<img src="image/gingercookie3.png" border="0" height="30">
									</c:if>
									</p>
								</div>
								<p>${article.regdate }</p>
							</div>	
					</div>
					
					
			
			</div>
			<!-- <div style="width: 300px; height: 200px; background-color: aqua;">dd</div> -->
			<div class="listArea">
				<div class="list_content">

					<div class="each_table">
						<div>
							<div class="id_img"> 
								<p class="writer"><a href="mailto:${article.email }"> Haey</a></p>
								<img class="each_Img" src="image/main2.jpeg"alt="">
							</div>
						</div>
						<div>
							<p class="subjectPart">
								<a class="my_text"
								href="member.mdo?cmd=content&num=${article.num }&pageNum=${currentPage }">
								Seong-su dong tour with bread!</a>
							</p>
							<div class="content_info">
								<p class="each_info"> clicked : 66</p>
								<p class="reco_kubby each_info">
									<c:set var="evCnt" value="${evaluationDAO.countGechu(num) }"></c:set> 
									like : 5
									<c:if test="${article.readcount >= 20 }">
									<img src="image/gingercookie3.png" border="0" height="30">
								</c:if>
								</p>
							</div>
							<p class="each_date each_info">2022.10.20</p>
						</div>
					</div>

					<div class="each_table">
						<div>
							<div class="id_img"> 
								<p class="writer"><a href="mailto:${article.email }"> ${article.writer }</a></p>
								<img class="each_Img" src="image/main5.jpeg"alt="">
							</div>
						</div>
						<div>
							<p class="subjectPart">
								<a class="my_text"
								href="member.mdo?cmd=content&num=${article.num }&pageNum=${currentPage }">
								${article.subject }</a>
							</p>
							<div class="content_info">
								<p> 조회수 : ${article.readcount }</p>
								<p class="reco_kubby">
									<c:set var="evCnt" value="${evaluationDAO.countGechu(num) }"></c:set> 
									/ Recommend :  ${evCnt }
									<c:if test="${article.readcount >= 20 }">
									<img src="image/gingercookie3.png" border="0" height="30">
								</c:if>
								</p>
							</div>
							<p>${article.regdate }</p>
						</div>	
				</div>
				
				
		
		</div>
		<div class="listArea">
			<div class="list_content">

				<div class="each_table">
					<div>
						<div class="id_img"> 
							<p class="writer"><a href="mailto:${article.email }"> Haey</a></p>
							<img class="each_Img" src="image/main2.jpeg"alt="">
						</div>
					</div>
					<div>
						<p class="subjectPart">
							<a class="my_text"
							href="member.mdo?cmd=content&num=${article.num }&pageNum=${currentPage }">
							Seong-su dong tour with bread!</a>
						</p>
						<div class="content_info">
							<p class="each_info"> clicked : 66</p>
							<p class="reco_kubby each_info">
								<c:set var="evCnt" value="${evaluationDAO.countGechu(num) }"></c:set> 
								like : 5
								<c:if test="${article.readcount >= 20 }">
								<img src="image/gingercookie3.png" border="0" height="30">
							</c:if>
							</p>
						</div>
						<p class="each_date each_info">2022.10.20</p>
					</div>
				</div>

				<div class="each_table">
					<div>
						<div class="id_img"> 
							<p class="writer"><a href="mailto:${article.email }"> Haey</a></p>
							<img class="each_Img" src="image/main5.jpeg"alt="">
						</div>
					</div>
					<div>
						<p class="subjectPart">
							<a class="my_text"
							href="member.mdo?cmd=content&num=${article.num }&pageNum=${currentPage }">
							${article.subject }</a>
						</p>
						<div class="content_info">
							<p> 조회수 : ${article.readcount }</p>
							<p class="reco_kubby">
								<c:set var="evCnt" value="${evaluationDAO.countGechu(num) }"></c:set> 
								/ Recommend :  ${evCnt }
								<c:if test="${article.readcount >= 20 }">
								<img src="image/gingercookie3.png" border="0" height="30">
							</c:if>
							</p>
						</div>
						<p>${article.regdate }</p>
					</div>	
				</div>
			</div>	
		</div>
		</c:forEach>
		</c:if>

        <div class="listNum"><a href="member.mdo?cmd=list&pageNum=1">The number of post&nbsp;</a><span>51</span></div>

			<!-- 	//페이지 블럭을 이전과 다음 작업 -->

			<c:if test="${startPage > pageBlock }">
				<c:if test="${searchText == null }">
					<a class="back_nextButton" href="member.mdo?cmd=list&pageNum=1"><<</a>
					<a class="back_nextButton"
						href="member.mdo?cmd=list&pageNum=${startPage-pageBlock }">back</a>
					<a class="back_nextButton" href="member.mdo?cmd=list&pageNum=${currentPage - 1 }"><</a>
				</c:if>
				<c:if test="${searchText != null }">
					<a class="back_nextButton"
						href="member.mdo?cmd=list&pageNum=${startPage-pageBlock }&searchWhat=${searchWhat }&searchText=${searchText }">back</a>
				</c:if>
			</c:if>

			<c:forEach var="i" begin="${startPage }" end="${endPage }">
				<c:if test="${searchText == null }">
					<a class="back_nextButton" href="member.mdo?cmd=list&pageNum=${i }">${i }</a>
				</c:if>
				<c:if test="${searchText != null }">
					<a class="back_nextButton"
						href="member.mdo?cmd=list&pageNum=${i }&searchWhat=${searchWhat }&searchText=${searchText }">${i }</a>
				</c:if>
			</c:forEach>

			<c:if test="${endPage < pageCount}">
				<c:if test="${searchText == null }">
					<a class="back_nextButton" href="member.mdo?cmd=list&pageNum=${currentPage + 1}">></a>
					<a class="back_nextButton"
						href="member.mdo?cmd=list&pageNum=${startPage+pageBlock}">next</a>
					<a class="back_nextButton" href="member.mdo?cmd=list&pageNum=${pageCount }">>></a>
				</c:if>
				<c:if test="${searchText != null }">
					<a class="back_nextButton"
						href="member.mdo?cmd=list&pageNum=${startPage+pageBlock}&searchWhat=${searchWhat }&searchText=${searchText }">next</a>
				</c:if>
			</c:if>
		</div>
	</div>
  </main>
    
</body>
</html>