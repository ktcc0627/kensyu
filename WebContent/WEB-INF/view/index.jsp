<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/AccessRecord/css/style.css">
<link type="text/javascript"
	href="/AccessRecord/js/home.js">
<link rel="stylesheet" href="hue.css">
<meta charset="UTF-8">
<title>ホーム画面</title>
</head>
<body>

<div class="holder">
    <div class="first"></div>
    <div class="second"></div>
    <div class="txt">
      <h1>Welcome!!</h1>
      <p></p>
      <div class="light-button button-wrapper">
			<div class="button">
				<a href="./EntryServlet" style="text-decoration: none;">
		        	<span>
		            	Entry
		        	</span>
	        	</a>
	    	</div>
	  </div>
	  <p class="length"></p>

	  <div class="light-button button-wrapper02">
    		<div class="button">
    			<a href="./AdminServlet" style="text-decoration: none;">
        			<span>
            			Admin
        			</span>
        		</a>
    		</div>
	  </div>
    </div>





</div>

</body>
</html>