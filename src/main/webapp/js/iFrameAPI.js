/** IFrame Player APIを実装 */
	
/**
 *  DOMとは・・・Document Object Modelのこと
 *	・ツリー構造とも呼ばれる階層構造を取る
 *	・それぞれの要素はノードという言葉で説明される
 *	・WEBページとJavaScriptなどのプログラミング言語とを繋ぐ
 *  ・xmlやhtmlをオブジェクトとして扱うイメージ / js操作するときに便利
 */

      // 2. IFrame Player APIの読込み
	  //<script>tagを生成
      var tag = document.createElement('script'); //指定の要素を生成
      //tagの中身:<script src="https://www.youtube.com/iframe_api"></script>
      tag.src = "https://www.youtube.com/iframe_api";
      
      //<script>tagをjspに埋込む
      //１つ目の<script>タグ内を取得する.　//Nodeは配列になってる。[0,1,2,3]
      var firstScriptTag = document.getElementsByTagName('script')[0];
      //firstScriptTagの中身:<script src="/golden/js/bootstrap.min.js"></script>
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
      //firstScriptTag.parentNode.insertBefore(新要素,参照要素)
      //つまり、"tag"を"firstScriptTag([0]番目のscriptタグ)"の"前に入れろ(insertBefore)"という指示.
    
      //3.プレイヤーAPIコードがダウンロードされると実行される。(APIが呼び出している。)
      var player;
      function onYouTubeIframeAPIReady() {
    	  //APIのJavaScriptコードが読み込まれると、APIによってonYouTubeIframeAPIReady関数が呼び出される。
    	  //ここで、ページに動画プレーヤーを挿入するYT.Playerオブジェクトが生成される。
    	  /** コンストラクタ引数 YT.Player( playerContainerID, options ) */
    	  	player = new YT.Player('player', {  //埋込む場所の指定
          height: '240',
          width: '360',
          videoId: 'PUtmg5qq4k0', //YoutubeID
          events: {
            'onReady': onPlayerReady, //YT.Playerが動作可能になった時に呼ばれる
            'onStateChange': onPlayerStateChange //状態変化時に呼ばれる(再生・停止・終了など)
          }
        });
      }

      // 4. The API will call this function when the video player is ready.
      function onPlayerReady(event) {
    	  //event.targetプロパティはイベントを開始したDOM要素を返すプロパティ。
        event.target.playVideo();
      }

      // 5. プレイヤーの状態が変わったタイミング(再生、停止、終了など)で呼ばれます。
      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
//        1秒で動画が停止する設定
          setTimeout(stopVideo, 0000);
          done = true;
        }
      }
      function stopVideo() {
        player.stopVideo();
      }
      