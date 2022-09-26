<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	var xhr = new XMLHttpRequest();
	var url = 'http://openapi.seoul.go.kr:8088/5150434475776b643439444f49754e/xml/LOCALDATA_072218/1/5/'; /* URL */
	xhr.open('GET', url);
	xhr.onreadystatechange = function () {
		if (this.readyState == xhr.DONE) {  // <== 정상적으로 준비되었을때
		if(xhr.status == 200||xhr.status == 201){ // <== 호출 상태가 정상적일때
			alert('Status: '+this.status+
				'\nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+
				'\nBody: '+this.responseText);
			}
		}
	};
	xhr.send('');
</script>
</head>
<body>

</body>
</html>