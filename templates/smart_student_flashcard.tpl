<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <!--
  Copyright (c) 2010, Alex Cruikshank
  All rights reserved.
  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
  Neither the name of Alex Cruikshank nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Finley's Reading Club Flash Cards</title>
	<style type="text/css" media="screen">
        body { background-color: #f9f9f8; font-family:Helvetica,Arial }
        #controls { width: 900px; margin: 0px auto; }
        button { border: 1px solid #999; display: block; float: left; margin-right: 20px; height: 40px; width: 60px; background-color: #f9f9f9; font-size: 12pt; color: #666; }
        button:hover { color: #000; border: 1px solid #000; background-color: #f9f9f0; }
        #card { font-size:100pt; text-align: center; padding: 150px 0px; }
        label { display: block; float: left; width: 150px; text-align: right; padding-right: 10px; color: #999; }
        #instructions { color: #bbb; font-size:10pt; text-align:center; visibility:hidden; display:block; float:none; width:300px; margin:0px auto; }
        span { display: block; float: left; width: 100px; font-style: bold; font-size: 20pt; color: #000; }
        div.comment { font-size: 30px; }
        img { margin: 0px auto; }
        span.late1 { color: #600; }
        span.late2 { color: #800; }
        span.late3 { color: #a00; }
        span.late4 { color: #c00; }
        span.late5 { color: #e00; }
	</style>
	<script language="Javascript">
        
        
        function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
}    
    
    
function getUrlParam(parameter, defaultvalue){
    var urlparameter = defaultvalue;
    if(window.location.href.indexOf(parameter) > -1){
        urlparameter = getUrlVars()[parameter];
        }
    
    urlparameter = decodeURI(urlparameter);
    
    return urlparameter;
}  
          
		window.onload = function() {
			var wordList = [{$LessonVocabulary} ];
			
			var comments = [[1.0, "Great Job!", 'rewardflash.jpg'], 
							[1.25,"Almost There", "rewardflash.jpg"],
							[1.5, "Pretty Good", 'rewardflash.jpg'], 
							[2.0, "Keep Trying", 'rewardflash.jpg'],
							[20000,"Practice, Practice, Practice", "practiceflash.jpg"]];
			
			var wordIndex = 0;
			var words;
			var timer = null;
			var startTime = 0;
			var wordTime = 0;
            
            // document.getElementById("nameField").innerHTML = getUrlParam('name','');	
   
            

			function each(a,f) { for (var i=0,l=a.length;i<l;i++) f(a[i]); }
			function el(id) { return document.getElementById(id); }

			function start( evt ) {
				el('start').blur();
				el('start').style.visibility = 'hidden';
				el('instructions').style.visibility = 'visible';

				words = [];
				each(wordList, function(word) { words.push(word); });
				for ( var i=0,l=words.length; i < l; i++ ) {
					var sindex = Math.floor(Math.random()*l);
					var temp = words[sindex];
					words[sindex] = words[i];
					words[i] = temp;
				}
				wordIndex = 0;
				timer = setInterval( updateClock, 10 );
				startTime = wordTime = (new Date()).getTime();
				updateClock();
				nextWord();
			}
			
			function lateClass(secs) {
				return secs < .500 ? '' : ( secs < 2.5 ? 'late' + Math.floor(secs/.5) : 'late5' );
			}
			
			function updateClock() {
				var ms = (new Date()).getTime() - startTime;
				el('totalTime').innerHTML = Math.floor(ms/1000) + '.' + Math.floor((ms/100) % 10);
				ms = (new Date()).getTime() - wordTime;
				el('wordTime').innerHTML = Math.floor(ms/1000) + '.' + Math.floor((ms/100) % 10);
				el('wordTime').setAttribute('class', lateClass(ms/1000) );
			}
			
			function nextWord() {
				el('counter').innerHTML = ''+(words.length - wordIndex);
				if ( wordIndex >= words.length ) {
					end();
					return;					
				}
				el('card').innerHTML = words[wordIndex++];
				wordTime = (new Date()).getTime();
			}
			
			function end() {
				var average = ((new Date()).getTime() - startTime) / (1000.0 * words.length);
				el('wordTime').innerHTML = Math.floor(average) + '.' + Math.floor((average*10) % 10);
				el('wordTime').setAttribute('class', lateClass(average) );
				
				var comment;
				for ( var i=0, l=comments.length; i < l; i++ ) {
					comment = comments[i];
					if ( average < comment[0] )
						break;
				}
				
				el('card').innerHTML = "<div class='comment'>" + comment[1] + "</div><div><img src='" + comment[2] + "'/></div>";
				clearTimeout( timer );
				timer = null;
				el('instructions').style.visibility = 'hidden';
				el('start').style.visibility = 'visible';
			}
			
			el('start').onclick = start;
			
			document.onkeydown = function( evt ) {
				if (!evt) 
					var evt = window.event;
				var code = evt.keyCode || evt.which;
				if (( code == 32 ) && ( timer != null )) {
					nextWord();
				}
			}
		}
	</script>
</head>
<body>
<div id="controls">
	<button id="start">start</button>
       
    <label for="totalTime">total time:</label>
	<span id="totalTime"></span>

	<label for="wordTime">word time:</label>
	<span id="wordTime"></span>

	<label for="counter">words remaining:</label>
	<span id="counter"></span>
    
     
</div>
<div id="card"></div>
    
<label for="card" id="instructions">Press space when child reads word aloud.</label>


</body>
</html>