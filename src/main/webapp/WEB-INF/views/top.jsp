<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="common/common.jsp"%>

</head>
<body background="img.jpg" />
<style>
body {
	background-image: url(img/gdst.jpg);
	background-size: cover;
}
</style>
<body>
	<div class="container" align="center">
		<!-- ヘッダー表示 -->
		<%@ include file="common/nav.jsp"%>
	</div>

	<div align="center">
		<font size="5" color="white">・ゴールデン街を散策しよう!</font> <br>
		<!-- Youtube, Facebook, GoogleMapのAPIを実装 -->
	        <table>
	        <tr>
	        <th bgcolor="#EE0000"><font color="#FFFFFF">Youtube</font></th>
	        <th bgcolor="#EE0000"><font color="#FFFFFF">GoogleMap</font></th>
	        <th bgcolor="#EE0000"><font color="#FFFFFF">Facebook</font></th>
	        </tr>
	        <tr>
	         <!-- 1. IFrameAPIによって、<div>タグが<iframe>タグに置換される。 <iframe>タグを直接配置してもok -->	
	        <td><div id="player"></div></td>
            <td><div id="map"></div></td>
           <td><iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fshinjuku.goldengai.kumiai%2F%3Ffref%3Dts&tabs=timeline&width=360&height=240&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=false&appId" width="360" height="240" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>	    
	        </td>
	        </tr>
	        </table>
	        <br><br>
	        <font size="5" color="white">・ご意見、ご感想お待ちしております。</font><br>
	         <form method="POST" action="sample.cgi">
	        		<label><font size="3" color="white"><input type ="text" name="name" placeholder="名前を入力してください"></font></label>
				    <select name="comment">
				     <option value="#">投稿内容</option>
				 	 <option value="message">ご意見、ご感想</option>
					 <option value="question">Q&A</option>
					 <option value="other">その他</option>
					</select>
					
	 		       <div>
	 				<textarea name="msg" style="width: 300px; height: 150px" placeholder="コメントを記入して下さい"></textarea>
	 			   </div>

				 <input type="submit" value="送信">
			　</form>
		TODO:送信したらjs使って、過去の投稿ログが見れるようにしよう
		          
	</div>

</body>
<script src="${pageContext.request.contextPath}/js/iFrameAPI.js"></script>
<script src="${pageContext.request.contextPath}/js/googleMapAPI.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDksEhWBuS-e45DgaBF9k9KeEDCjMzbNgw&callback=initMap"></script>
</html>

