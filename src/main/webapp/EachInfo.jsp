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
<link rel="stylesheet" type="text/css" href="EachInfo.css">
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
      <div class="eachinfoBlock">
        <div class="titleArea">
          <p class="title">Ugly Bakery</p>
          <div class="score_reviewNum">
            <p class="score">4.3</p>
            <p class="reviewNum">122 review</p>
          </div>
        </div>


        <div class="imgAndinfo">

          <div class="slideshow-container">
            <div class="mySlides fade">
              <img class="each_img" src="image/main7.jpeg">
            </div>
            <div class="mySlides fade">
              <img class="each_img" src="image/main2.jpeg">
            </div> 
            <div class="mySlides fade">
              <img class="each_img" src="image/main6.jpeg">
            </div>
            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>
          </div>

          <div class="informationArea">
              <div class="twoTitle about">About</div>
              <p class="each_info"><span>Location</span> : 71-73, Passage Brady, 75010 Paris</p>
              <p class="each_info"><span>Hours</span> : 12:00 - 17:00</p>
              <p class="each_info"><span>Contact</span> : 02-338-2018</p>
              <p class="each_info"><span>Basic Info</span> : Take out only, No delivery</p>
              <div class="buttons">
                <button class="homepageButton">Homepage</button>
                <button class="location" id="locationButton" onclick="myLocation()">Location</button>
              </div>
          </div>
        </div>
      

      <script src="EachInfoPage.js"></script>


        <div class="reviewArea">
          <p class="twoTitle review">Review</p>

          <div class="sortList">
            <p class="listEl">Rating</p>
            <p class="listEl">The number of review</p>
            <p class="listEl">Like</p>
          </div>

          <div class="each_review">
            <div class="basicInfo">
              <p class="userName">Haey</p>
              <div class="star_date">
                <p class="star">★★★★☆</p>
                <p class="date">2021.09.22</p>
              </div>
            </div>

            <div class="img_review_reco">
              <img class="reviewImg" src="image/main6.jpeg" width="300px" alt="">
              <div class="review_reco">
                <p class="reviewTitle"><b>Review</b></p>
                <p class="personalReview">The restaurant is located at a great spot not fur from the public transport 
                  and surrounded by great places to grab a drink after. </p>
                <p class="reviewTitle"><b>Recommendation</b></p>
                <p class="personalReview">Matcha choux cream</p>
              </div>
            </div>
          </div>

          <div class="each_review">
            <div class="basicInfo">
              <p class="userName">Haey</p>
              <div class="star_date">
                <p class="star">★★★★☆</p>
                <p class="date">2021.09.22</p>
              </div>
            </div>

            <div class="img_review_reco">
              <img class="reviewImg" src="image/main6.jpeg" width="300px" alt="">
              <div class="review_reco">
                <p class="reviewTitle"><b>Review</b></p>
                <p class="personalReview">The restaurant is located at a great spot not fur from the public transport 
                  and surrounded by great places to grab a drink after. </p>
                <p class="reviewTitle"><b>Recommendation</b></p>
                <p class="personalReview">Matcha choux cream</p>
              </div>
            </div>
          </div>

          <div class="each_review">
            <div class="basicInfo">
              <p class="userName">Haey</p>
              <div class="star_date">
                <p class="star">★★★★☆</p>
                <p class="date">2021.09.22</p>
              </div>
            </div>

            <div class="img_review_reco">
              <img class="reviewImg" src="image/main6.jpeg" width="300px" alt="">
              <div class="review_reco">
                <p class="reviewTitle"><b>Review</b></p>
                <p class="personalReview">The restaurant is located at a great spot not fur from the public transport 
                  and surrounded by great places to grab a drink after. </p>
                <p class="reviewTitle"><b>Recommendation</b></p>
                <p class="personalReview">Matcha choux cream</p>
              </div>
            </div>
          </div>


        </div>

      </div>
    </div>
  </div>
  </main>
  <script>
    function initMap() {
    var seoul = { lat: 37.5642135 ,lng: 127.0016985 };
    var map = new google.maps.Map(
      document.getElementById('map'), {
        zoom: 12,
        center: seoul,
        styles:[
            {
              "elementType": "labels.text",
              "stylers": [
                {
                  "visibility": "on"
                }
              ]
            },
            {
              "featureType": "administrative",
              "stylers": [
                {
                  "color": "#3775ae"
                },
                {
                  "visibility": "simplified"
                },
                {
                  "weight": 0.5
                }
              ]
            },
            {
              "featureType": "administrative.land_parcel",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "administrative.neighborhood",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "landscape",
              "stylers": [
                {
                  "color": "#fafafa"
                },
                {
                  "visibility": "on"
                }
              ]
            },
            {
              "featureType": "poi",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#ffffff"
                }
              ]
            },
            {
              "featureType": "poi.attraction",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "poi.business",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "poi.government",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "poi.medical",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "poi.park",
              "elementType": "geometry.fill",
              "stylers": [
                {
                  "color": "#c6eabe"
                }
              ]
            },
            {
              "featureType": "poi.park",
              "elementType": "geometry.stroke",
              "stylers": [
                {
                  "color": "#c6eabe"
                }
              ]
            },
            {
              "featureType": "poi.park",
              "elementType": "labels.icon",
              "stylers": [
                {
                  "color": "#55af6d"
                },
                {
                  "visibility": "simplified"
                }
              ]
            },
            {
              "featureType": "poi.park",
              "elementType": "labels.text",
              "stylers": [
                {
                  "color": "#267e25"
                },
                {
                  "visibility": "simplified"
                },
                {
                  "weight": 0.5
                }
              ]
            },
            {
              "featureType": "poi.place_of_worship",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "poi.school",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "poi.sports_complex",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "road",
              "stylers": [
                {
                  "weight": 1
                }
              ]
            },
            {
              "featureType": "road",
              "elementType": "labels",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "road.arterial",
              "stylers": [
                {
                  "color": "#ededed"
                },
                {
                  "weight": 1
                }
              ]
            },
            {
              "featureType": "road.arterial",
              "elementType": "labels",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "road.highway",
              "stylers": [
                {
                  "color": "#ebeaea"
                },
                {
                  "weight": 0.5
                }
              ]
            },
            {
              "featureType": "road.highway",
              "elementType": "labels",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "road.local",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            },
            {
              "featureType": "transit.line",
              "stylers": [
                {
                  "color": "#121e59"
                },
                {
                  "weight": 1
                }
              ]
            },
            {
              "featureType": "transit.line",
              "elementType": "geometry",
              "stylers": [
                {
                  "color": "#000c6b"
                },
                {
                  "visibility": "simplified"
                }
              ]
            },
            {
              "featureType": "transit.station",
              "stylers": [
                {
                  "color": "#162050"
                },
                {
                  "visibility": "simplified"
                },
                {
                  "weight": 1
                }
              ]
            },
            {
              "featureType": "transit.station",
              "elementType": "labels.text",
              "stylers": [
                {
                  "color": "#162050"
                }
              ]
            },
            {
              "featureType": "water",
              "stylers": [
                {
                  "color": "#9fcbf9"
                },
                {
                  "visibility": "on"
                }
              ]
            },
            {
              "featureType": "water",
              "elementType": "labels.text",
              "stylers": [
                {
                  "visibility": "off"
                }
              ]
            }
          ]
      });
    
  }



let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}


function myLocation() {
  
    const btn = document.getElementById('locationButton');
    

    if(map.style.display !== 'none') {
      map.style.display = 'none';
    }
    else {
      map.style.display = 'block';
    }
    
  }

  </script>
</body>
</html>