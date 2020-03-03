/**
 *
 */


//--------------------------
//ラジオボタンその他の制御
//--------------------------

function entryChange(){
	var radio = document.getElementsByName('purpose_form');
	var firstBox = document.getElementById('firstBox');
	if(radio[3].checked){
		document.getElementById('purpose2').style.display = "";
	}else{
		document.getElementById('purpose2').style.display = "none";
		Field.clear('firstBox');
	}

}

//----------------------------
//
//----------------------------

//ライブラリ
/**
* 任意の年が閏年であるかをチェックする
*
* @param {number}
*            チェックしたい西暦年号
* @return {boolean} 閏年であるかを示す真偽値
*/
const isLeapYear = year => (year % 4 === 0) && (year % 100 !== 0) || (year % 400 === 0);

/**
* 任意の年の2月の日数を数える
*
* @param {number}
*            チェックしたい西暦年号
* @return {number} その年の2月の日数
*/
const countDatesOfFeb = year => isLeapYear(year) ? 29 : 28;

/**
* セレクトボックスの中にオプションを生成する
*
* @param {string}
*            セレクトボックスのDOMのid属性値
* @param {number}
*            オプションを生成する最初の数値
* @param {number}
*            オプションを生成する最後の数値
* @param {number}
*            現在の日付にマッチする数値
*/
const createOption = function(id, startNum, endNum, current){
const selectDom = document.getElementById(id);
let optionDom = '';
for (var i = startNum; i <= endNum; i++) {
if (i === current) {
  option = '<option value="' + i + '" selected>' + i + '</option>';
} else {
  option = '<option value="' + i + '">' + i + '</option>';
}
optionDom += option;
}
selectDom.insertAdjacentHTML('beforeend', optionDom);
};


document.addEventListener('DOMContentLoaded', function() {


	// ------------------------------------------------------
	// 年月日制御(新)
	// ------------------------------------------------------


	// DOM
	const yearBox = document.getElementById('year');
	const monthBox = document.getElementById('month');
	const dateBox = document.getElementById('date');

	// 日付データ
	const today = new Date();
	const thisYear = today.getFullYear();
	const thisMonth = today.getMonth() + 1;
	const thisDate = today.getDate();

	let datesOfYear= [31, countDatesOfFeb(thisYear), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

	// イベント

	monthBox.addEventListener('change',function(e){
	     dateBox.innerHTML = '';
	     const selectedMonth = e.target.value;
	     createOption('date', 1, datesOfYear[selectedMonth - 1], 1);
	 });

	 yearBox.addEventListener('change',function(e){
	     monthBox.innerHTML = '';
	     dateBox.innerHTML = '';
	     const updatedYear = e.target.value;
	     datesOfYear = [31, countDatesOfFeb(updatedYear), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

	     createOption('month', 1, 12, 1);
	   createOption('date', 1, datesOfYear[0], 1);
	 });

	 // ロード時
	 createOption('year', thisYear, 2030, thisYear);
	 createOption('month', 1, 12, thisMonth);
	 createOption('date', 1, datesOfYear[thisMonth - 1], thisDate);



	//------------------------------
	//文字数チェック項目
	//------------------------------

	 // 30文字以下入力チェック（貴社名）


	var targets = document.getElementsByClassName('company');
	  for (var i=0 ; i<targets.length ; i++) {
	    // ▼文字が入力されたタイミングでチェックする：
	    targets[i].oninput = function () {
	      var alertelement = this.parentNode.getElementsByClassName('alertArea');
	      if( this.value.trim().length > 30 ) {
	        // ▼空白を除いた入力文字数が10文字よりも多ければ
	        if( alertelement[0] ) { alertelement[0].innerHTML = "  <font size=\"3px\" color=\"red\"> ※30文字以下で入力して下さい。</font>"; }
	      }
	      else {
	        // ▼何も入力がないか、または指定文字しかないなら
	        if( alertelement[0] ) { alertelement[0].innerHTML = ""; }
	      }
	    }
	  }




   // 10文字以下の入力チェック


	targets = document.getElementsByClassName('sentense');
	  for (var i=0 ; i<targets.length ; i++) {
	    // ▼文字が入力されたタイミングでチェックする：
	    targets[i].oninput = function () {
	      var alertelement = this.parentNode.getElementsByClassName('alertArea');
	      if( this.value.trim().length > 10 ) {
	        // ▼空白を除いた入力文字数が10文字よりも多ければ
	        if( alertelement[0] ) { alertelement[0].innerHTML = "  <font size=\"3px\" color=\"red\"> ※10文字以下で入力して下さい。</font>"; }
	      }
	      else {
	        // ▼何も入力がないか、または指定文字しかないなら
	        if( alertelement[0] ) { alertelement[0].innerHTML = "";
	        }
	      }
	    }
	  }




	  // 10文字以下入力チェック（同行人）


	 targets = document.getElementsByClassName('accompanySentense');

	  for (var i=0 ; i<targets.length ; i++) {
	    // ▼文字が入力されたタイミングでチェックする：
	    targets[i].oninput = function (e) {
	  	  var isError = false;
	      var alertelement = this.parentNode.getElementsByClassName('alertArea');
	      var accompanySentenses = e.target.parentNode.getElementsByClassName('accompanySentense');


		    for (var j=0 ; j < accompanySentenses.length ; j++) {   // accompanySentenseを繰り返し

			    if( accompanySentenses[j].value.trim().length > 10 ) {
		          // ▼空白を除いた入力文字数が10文字よりも多ければ
		    	    isError = true;
				    console.log(this.value);
		        }
		    }

		    if(isError){
			    alertelement[0].innerHTML = "  <font size=\"3px\" color=\"red\"> ※10文字以下で入力して下さい。</font>";
		    } else {
			    alertelement[0].innerHTML = "";
		    }
		}
  }


		  // ----------------------------------------------------------
		  // 送信時のチェック（※規則に沿わない入力があれば送信しない）
		  // ----------------------------------------------------------

   const form = document.getElementById('checkForm');
//	  for (var i=0 ; i<targets.length ; i++) {                   //IDを取得する場合、単体だからforで回さない（間違えたところ）
//	    // ▼送信直前で全項目を再度チェックしてエラーを数える：
	  form.onsubmit = function () {
	    	// ラジオボタンの値をチェックして、その他だったら除外する項目を変える
	      var purposeVal = document.getElementsByClassName('purpose_form');
	      var selector = 'input:not(.accompanySentense),text';
	      if( !purposeVal[3].checked ) {
	    	  selector = 'input:not(.accompanySentense):not(.firstBox),text';
	      }
	      console.log(selector);
//
	      var inputElements = this.querySelectorAll(selector);  // フォームの中にあるinput要素とtextarea要素をすべて得る
//	      var inputElements = this.querySelectorAll('input:not(.accompanySentense),text');
	      var alerts = this.getElementsByClassName('alertArea');
	      var ret = 0;

	      var hasBlank = false;


	      // ――――――――――――――――――-------
	      // ▽必須項目が空文字、若しくはnullだった場合エラー表示
	      // ――――――――――――――――――-------

	      for (var j=0 ; j < inputElements.length ; j++) {
	    	if( inputElements[j].value === null || inputElements[j].value === '' ) {
	          hasBlank = true;
	          break;
	        } else {
	          continue;
	        }
	      }
	      if (hasBlank) {
	    	  alert( "必須項目を入力してください。");
	    	  return false;
	      }





	      // ――――――――――――――――――
	      // ▽アラートの表示数をカウントする
	      // ――――――――――――――――――

	      for (var j=0 ; j<alerts.length ; j++) {
	        if( alerts[j].innerHTML.length > 0 ) {
	          // アラートが表示されていればカウント
	          ret++;
	        }
	      }
	        if( ret !== 0 ) {

	            // エラーメッセージが1つ以上あれば、アラートを表示して送信をブロック。
	            alert( ret + "個のエラーがあります。");// ※警告用のダイアログボックスを表示したくないなら、この行は削除。
	            return false;
	        }else{
	        	alert("編集が完了しました。");
	        }





	      //---------------------------------------
	      //入退館時刻のアラート表示
	      //---------------------------------------

	      var optionElements = document.getElementsByClassName('option-element');

	      for(var elem of optionElements) {
			  if(elem.value === null || elem.value === ""){
			      alert("入館時刻を選択してください。");
			      return false;
	          };
	      }

	      var exitTimes = document.getElementsByClassName('exitTime');

	      for(var elem of exitTimes) {
			  if(elem.value === null || elem.value === ""){
			      alert("退館時刻を選択してください。");
			      return false;
	          };
	      }

	    }

});





