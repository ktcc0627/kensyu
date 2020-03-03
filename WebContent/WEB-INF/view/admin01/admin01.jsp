<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="css/admin01/bootstrap.min.css">
	<link rel="stylesheet" href="css/admin01/font-awesome.min.css">
	<link rel="stylesheet" href="css/admin01/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="css/admin01/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" type="text/css" href="css/datatables.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/admin01/buttons.dataTables.min.css"/>
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- JS -->
	<script src="js/admin01/jquery-3.3.1.js"></script>
	<script src="js/admin01/bootstrap.min.js"></script>
	<script src="js/admin01/jquery.dataTables.min.js"></script>
	<script src="js/admin01/dataTables.buttons.min.js"></script>
	<script src="js/admin01/buttons.html5.min.js"></script>
	<script src="js/admin01/jquery.slimscroll.min.js"></script>
	<script src="js/admin01/klorofil-common.js"></script>
	<script src="js/admin01/csv_download.js"></script>
	<link rel="icon" type="image/png" sizes="96x96" href="img/Liblock-logo.png">



	<title>管理画面</title>

</head>

<body>
<script>
	$(document).ready(function ($) {
	 $('#table1').DataTable({
		 dom: 'lfrtip',
	        buttons: [
	            'csvHtml5'
	       	 ]
	 		}
		 );
	});
</script>

	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">


<!-- ヘッダーロゴ -->

			<div class="brand">
				<a href="#"><img src="img/Liblock-logo.png" alt="Liblock Logo" class="img-responsive logo" width="80"height="80"></a>
			</div>



<!-- ヘッダーの検索欄 -->

			<div class="container-fluid">
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-left">
						<li class="dropdown">
							<a href="HelloServlet">ホーム</a>
						</li>
						<li class="dropdown">
							<a>/</a>
						</li>
						<li class="dropdown">
							<a href="RegisterServlet">新規登録</a>
						</li>

						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>




		<!-- END NAVBAR -->



		<div class="main">


			<!-- MAIN CONTENT -->

			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">検索一覧</h3>
					<a id="download" class= "bt" download="test.csv"onclick="handleDownload()">CSV</a>
					<div class="row">
						<div class="col-md-11" >
							<table id="table1" class="table table-hover text-nowrap display datatables" style="width:100%">
								<thead>
									<tr>
										<th>日付</th>
										<th>来社時間</th>
										<th>名前</th>
										<th>会社名</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2019-01-01</td>
										<td>19:00</td>
										<td>ホワイト三郎</td>
										<td>ホワイトカンパニー</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2018-01-01</td>
										<td>18:00</td>
										<td>グレー三郎</td>
										<td>グレーカンパニー</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2017-01-01</td>
										<td>17:00</td>
										<td>ブラック三郎</td>
										<td>ブラックカンパニー</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2016-01-01</td>
										<td>16:00</td>
										<td>ホワイト二郎</td>
										<td>ホワイト商事</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2015-01-01</td>
										<td>15:00</td>
										<td>グレー二郎</td>
										<td>グレー商事</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2014-01-01</td>
										<td>14:00</td>
										<td>ブラック二郎</td>
										<td>ブラック商事</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2013-01-01</td>
										<td>13:00</td>
										<td>ホワイト太郎</td>
										<td>ホワイト物産</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2012-01-01</td>
										<td>12:00</td>
										<td>グレー太郎</td>
										<td>グレー物産</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2011-01-01</td>
										<td>11:00</td>
										<td>ブラック太郎</td>
										<td>ブラック物産</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
									<tr>
										<td>2010-01-01</td>
										<td>10:00</td>
										<td>リブロ太郎</td>
										<td>Liblock</td>
										<td><button type="button" onclick="location.href='EditServlet'">確認</button></td>
									</tr>
								</tbody>
								</table>
						</div>

					</div>
					<div class="row">

						</div>
					</div>
				</div>
			</div>

			<!-- END MAIN CONTENT -->

		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">

			</div>
		</footer>
	</div>

	<!-- END WRAPPER -->

</body>

</html>
