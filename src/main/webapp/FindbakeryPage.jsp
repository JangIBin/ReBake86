<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1fd422b08e.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/1fd422b08e.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="resources/css/FindbakeryPage.css">
    <link rel="stylesheet" href="resources/css/reset.css">
    
    <title>Document</title>
</head>
<body>
    <ul>
        <img class="logoImg" src="image/67739b381c100a796668505daf001123-cupcake-sweet-dessert.png" alt=""> 
          <li class="title">
            <a class="rebake" href="#">RE:<span>bake86</span></a></li>
          <li><a href="#">Sign in</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Recommend</a></li>
          <li><a href="#">Contact Us</a></li>
          
          <div class="socialImo">
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-instagram"></i>
          </div>
          <div class="tel_email">
            <span>TEL</span> : +81 02 519 3119
            <br />
            <span>Email : qpq</span>85@<span>gmail.com</span>
          </div>
        </ul>

        <header>
            <div class="input">
                <img src="image/flour.png" style="width: 29px;" alt="">
                <input type="text" placeholder="bakery, location, type of bread">
            </div>
            <button class="searchButton">Search</button>
            <p class="stickyRebake">RE:<span>bake86</span></p>
            <div class="sortList">
                <p class="sortBy">SORT BY</p>
                <p class="listEl">Rating</p>
                <p class="listEl">The number of review</p>
                <p class="listEl">Like</p>
            </div>
            <div class="location">
                <a href="javascript:void(0)" class="searchbyLocationButton"
                onclick="myFunction()">SEARCH BY LOCATION</a>
                <div class="location_content" id="location_content">
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">강남구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">강동구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">강북구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">강서구</p>
                    </div>
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">관악구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">광진구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">구로구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">금천구</p>
                    </div>
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">노원구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">도봉구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">동대문구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">동작구</p>
                    </div>
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">마포구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">서대문구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">서초구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">성동구</p>
                    </div>
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">성북구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">송파구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">양천구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">영등포구</p>
                    </div>
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">용산구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">은평구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">종로구</p>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">중구</p>
                    </div>
                    <div>
                        <p class="eachGu"><input type="checkbox" name="each_loca" value="10">중랑구</p>
                        <button class="locationGo">All set</button>
                    </div>
                </div>
            </div>
            <script src="FindbakeryPage.js"></script>
        </header>



        <main>
            <div class="listSection">
                <div class="each_list">
                    <div><img class="imageBox" src="image/uglyBakery.jpeg" alt=""></div>
                    <div>
                        <p class="title">Ugly Bakery</p>
                        <p class="rank">★★★★☆ 4.1</p>
                        <div class="sigBox">
                            <p class="signiture">signiture:</p>
                            <p class="signitureKo"> <span>단호박 맘모스, 말차 슈크림, 스콘, 샌드위치</span></p>
                        </div>
                        <p class="nearStop">location:<span> 강남역</span> 700m</p>
                        <i class="fa-thin fa-eyes"></i>
                    </div>
                </div>
                <div class="each_list">
                    <div><img class="imageBox" src="image/artisee.jpeg" alt=""></div>
                    <div>
                        <p class="title">Artisee</p>
                        <p class="rank">★★★★☆ 3.9</p>
                        <div class="sigBox">
                            <p class="signiture">signiture:</p>
                            <p class="signitureKo"> <span>딸기 생크림 케이크</span></p>
                        </div>
                        <p class="nearStop">location:<span> 서초역</span> 350m</p>
                        <i class="fa-thin fa-eyes"></i>
                    </div>
                </div>
                <div class="each_list">
                    <div><img class="imageBox" src="image/mandong.png" alt=""></div>
                    <div>
                        <p class="title">Mandong Biscuitry</p>
                        <p class="rank">★★★★☆ 4.3</p>
                        <div class="sigBox">
                            <p class="signiture">signiture:</p>
                            <p class="signitureKo"> <span>마늘 크림 바게뜨</span></p>
                        </div>
                        <p class="nearStop">location:<span> 연남동</span> 560m</p>
                        <i class="fa-thin fa-eyes"></i>
                    </div>
                </div>
                <div class="each_list">
                    <div><img class="imageBox" src="image/uglyBakery.jpeg" alt=""></div>
                    <div>
                        <p class="title">Ugly Bakery</p>
                        <p class="rank">★★★★☆ 4.1</p>
                        <div class="sigBox">
                            <p class="signiture">signiture:</p>
                            <p class="signitureKo"> <span>단호박 맘모스, 말차 슈크림, 스콘, 샌드위치</span></p>
                        </div>
                        <p class="nearStop">location:<span> 강남역</span> 700m</p>
                        <i class="fa-thin fa-eyes"></i>
                    </div>
                </div>
                <div class="each_list">
                    <div><img class="imageBox" src="image/uglyBakery.jpeg" alt=""></div>
                    <div>
                        <p class="title">Ugly Bakery</p>
                        <p class="rank">★★★★☆ 4.1</p>
                        <div class="sigBox">
                            <p class="signiture">signiture:</p>
                            <p class="signitureKo"> <span>단호박 맘모스, 말차 슈크림, 스콘, 샌드위치</span></p>
                        </div>
                        <p class="nearStop">location:<span> 강남역</span> 700m</p>
                        <i class="fa-thin fa-eyes"></i>
                    </div>
                </div>
                <div class="each_list">
                    <div><img class="imageBox" src="image/uglyBakery.jpeg" alt=""></div>
                    <div>
                        <p class="title">Ugly Bakery</p>
                        <p class="rank">★★★★☆ 4.1</p>
                        <div class="sigBox">
                            <p class="signiture">signiture:</p>
                            <p class="signitureKo"> <span>단호박 맘모스, 말차 슈크림, 스콘, 샌드위치</span></p>
                        </div>
                        <p class="nearStop">location:<span> 강남역</span> 700m</p>
                        <i class="fa-thin fa-eyes"></i>
                    </div>
                </div>




                <div class="yourPick">
                    <p class="yourPickTitle">Your pick</p>
                    <div class="each_yourPick">
                        <div>
                            <p class="yourPick_title">Ugly Bakery</p>
                            <p class="yourPick_location">강남역 700m</p>
                        </div>
                    <img class="yourPickImg" src="image/uglyBakery.jpeg" alt="">
                    </div>
                    <div class="each_yourPick">
                        <div>
                            <p class="yourPick_title">Ugly Bakery</p>
                            <p class="yourPick_location">강남역 700m</p>
                        </div>
                    <img class="yourPickImg" src="image/uglyBakery.jpeg" alt="">
                    </div>
                    <div class="each_yourPick">
                        <div>
                            <p class="yourPick_title">Ugly Bakery</p>
                            <p class="yourPick_location">강남역 700m</p>
                        </div>
                    <img class="yourPickImg" src="image/uglyBakery.jpeg" alt="">
                    </div>
                </div>
            </div>
        </main>
        
</body>
</html>