<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/AccessRecord/css/entry.css">
<script type="text/javascript" src="/AccessRecord/js/kesyu.js"></script>
<script type="text/javascript" src="js/prototype.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録画面</title>
</head>
<body>


	<form name="form1" class="checkForm" id = "checkForm" action="/Confirmation" method="post">
		<div class="contact-form">
			<h1 class="section-title">登録画面</h1>
				<div class="raisya">
					<p>
						来社日<span class="require">必須</span><span class="alertArea"></span>
					</p>
					<div class="select_date">
						<select class="selectElement" id="year" name="year"></select>年
						<select class="selectElement" id="month" name="month"></select>月
						<select class="selectElement" id="date" name="date"></select>日
					</div>
				</div>
			<div>
				<p>
					貴社名<span class="require">必須</span><span class="companyArea"></span>
				</p>
				<input class="company" type="text" name="company" id="company"
					onChange="check()" placeholder="例）株式会社Liblock" >
			</div>
			<div>
				<p>
					ご氏名<span class="require">必須</span><span class="nameArea"></span>
				</p>
				<input class="name" type="text" name="name" id="name" onChange="check()" value=""
					placeholder="例）リブロ　太郎">
			</div>
			<div class="accompany">
				<p class="accompany_name">
					ご同行者名<span class="any">任意</span><span class="alertArea"></span>
				</p>
					<input class="accompanySentense" type="text" name="accompanyName1" id="accompanyName1" value="" placeholder="例）リブロ　太郎">
					<input class="accompanySentense" type="text" name="accompanyName2" id="accompanyName2" value=""><br>
					<input class="accompanySentense" type="text" name="accompanyName3" id="accompanyName3" >
					<input class="accompanySentense" type="text" name="accompanyName4" id="accompanyName4" >
			</div>
			<div><p>来社目的<span class="require">必須</span></p></div><span class="alertArea"></span>
			<table>
				<tr>
					<td>
						<label><input type="radio" class="purpose_form" name="purpose_form" value="打合せ"
						    onclick="entryChange();entryChange1(false);" checked="checked">打合せ</label>
						<label><input type="radio" class="purpose_form" name="purpose_form" value="会議"
						    onclick="entryChange();entryChange1(false);"> 会議</label>
						<label><input type="radio" class="purpose_form" name="purpose_form" value="面接"
						    onclick="entryChange();entryChange1(false);">面接</label>
						<label><input type="radio" class="purpose_form" name="purpose_form" value="その他"
						    onclick="entryChange();entryChange1(true);"> その他</label>
					</td>
				</tr>
			</table>

						<div id="purpose2" style="display:none">
							<input type="text" id="firstBox" class = "firstBox" name="purpose1" value="" style= "width:300px">
						</div>

		<!-- 	<script>
				function entryChange1( $required ) {
				    var $elementReference = document.getElementById( "firstBox" );
				    	$elementReference.required = $required;
				}

			</script> -->

				<div class="time">
					<p>
						入館時刻<span class="require">必須</span><span class="alertArea"></span>
					</p>
						<div class="time-element">
						<select class="option-element" name="morning_afternoon" >
							<option class="option-number" value=""></option>
							<option class="option-number" value="午前">午前</option>
							<option class="option-number" value="午後">午後</option>
						</select>
						<select class="option-element" name="hour" >
							<option class="option-number" value="" selected></option>
							<option class="option-number" value="1">1</option>
							<option class="option-number" value="2">2</option>
							<option class="option-number" value="3">3</option>
							<option class="option-number" value="4">4</option>
							<option class="option-number" value="5">5</option>
							<option class="option-number" value="6">6</option>
							<option class="option-number" value="7">7</option>
							<option class="option-number" value="8">8</option>
							<option class="option-number" value="9">9</option>
							<option class="option-number" value="10">10</option>
							<option class="option-number" value="11">11</option>
							<option class="option-number" value="12">12</option>
						</select><label class="label">時</label>
						<select class="option-element" name="minute" >
							<option class="option-number" value=""></option>
							<option class="option-number" value="0">0</option>
							<option class="option-number" value="5">5</option>
							<option class="option-number" value="10">10</option>
							<option class="option-number" value="15">15</option>
							<option class="option-number" value="20">20</option>
							<option class="option-number" value="25">25</option>
							<option class="option-number" value="30">30</option>
							<option class="option-number" value="35">35</option>
							<option class="option-number" value="40">40</option>
							<option class="option-number" value="45">45</option>
							<option class="option-number" value="50">50</option>
							<option class="option-number" value="55">55</option>
						</select><label class="label">分</label>
					</div>
				</div>
				<div class="name2">
					<p>
						面会者<span class="require">必須</span><span class="visitortArea"></span>
					</p>
						<input class="visitor" type="text" name="visitor" id="visitor" value=""
						onChange="check()" placeholder="例）リブロ　太郎" >
				</div>
		</div>
				<div class="button">
					<input class="button2" type="submit" formaction="./Confirmation" id="confirmation"
						value="登録">
					<button class="button3" type="button" onclick="history.back()">戻る</button>
					<input class="button4" type="reset" value="リセット">
				</div>
	</form>
</body>
</html>