<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/AccessRecord/css/confirmation.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>確認画面</title>
</head>
<body>
	<h2>確認画面</h2>
	<label>内容を確認し完了ボタンを押してください。</label>
<form method="post" action="/AccessRecord/EntryServlet" class= "form-element">
	<table>
		<tbody>
			<tr>
				<th>来社日：</th>
				<td><%= request.getAttribute( "year" ) %>年<%= request.getAttribute( "month" ) %>月<%= request.getAttribute( "day" ) %>日</td>
			</tr>
			<tr>
				<th>貴社名：</th>
				<td><%= request.getAttribute( "company" ) %></td>
			</tr>
			<tr>
				<th>ご氏名：</th>
				<td><%= request.getAttribute( "name" ) %></td>
			</tr>
			<tr>
				<th class="list" rowspan="4">ご同行者名：</th>
				<%= request.getAttribute( "accompanyName1" ) %>
			</tr>
			<tr>
				<%= request.getAttribute( "accompanyName2" ) %>
			</tr>
			<tr>
				<%= request.getAttribute( "accompanyName3" ) %>
			</tr>
			<tr>
				<%= request.getAttribute( "accompanyName4" ) %>
			</tr>
			<tr>
				<th>来社目的：</th>
				<td><%= request.getAttribute( "purpose_form" ) %></td>
		</tr>
			<tr>
				<th>入館時刻：</th>
				<td><%= request.getAttribute( "morning_afternoon" ) %><%= request.getAttribute( "hour" ) %>時<%= request.getAttribute( "minute" ) %>分</td>
			</tr>
			<tr>
				<th>面会者名：</th>
				<td><%= request.getAttribute( "visitor" ) %></td>
			</tr>
		</tbody>
	</table>

		<div class="button">
			<button class="button2" type="button" onclick="history.back()">内容を修正する</button>
			<button class="button3" type="submit" formaction="./HelloServlet" onclick="alert('登録が完了しました。')" value="完了" >完了</button>
		</div>
</form>

</body>
</html>