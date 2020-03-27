<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <%@ page import="db.*, scriptlet.*, java.util.Vector" %>
    <% request.setCharacterEncoding("utf-8"); %>
</head>

<body>

	<% TestDAO dao = new TestDAO(); %>
	
    <div id="wrap">
       
        <div class="box"> <!-- Main ------------->
            <img class="bgImg" src="img/IA.PNG">
            <canvas id="canvas"></canvas>
            <div class="welcome">
               <p class="typing-txt">안녕하세요 :) 
                   프로그래머 박관혁입니다.
               </p>
               <p class="typing"></p> 
            </div>
            <div class="navTop">
               <a href="#"><div>Home</div></a>
                <a href="#"><div>About</div></a>
                <a href="#"><div>Skills</div></a>
                <a href="#"><div>Portfolio</div></a>
                <a href="#"><div>Concat</div></a>
            </div>
            <div class="navMobile">
                <a class="btnMobile" href="onSideBar()"><i class="fa fa-bars"></i></a>
            </div>
        </div>
        
        <div class="box"> <!-- About ------------->
          <h1 class="OJ">About</h1>
          <div class="SectionBar"></div>
           <div class="boxSection">
                <div class="boxMyImg">
                    <img class="myImg" src="img/lionProfile.gif" >
                </div>
                <div class="boxProfile">
                   <div class="profile">
                        <h2><div class="ListOJ"></div>Profile</h2>
                        <p>이름: 박관혁</p>
                        <p>나이: 27세(1994.02.13)</p>
                        <p>주소: 부산시 북구</p>
                        <p>연락처: 010-3345-5943</p>
                        <p>E-mail: alcmskfl17@naver.com</p>

                        <h2><div class="ListOJ"></div>History</h2>
                        <p>2013.02 ~ 2019.08: 동아대학교 경영정보전공</p>
                        <p>2019.11 ~ 2020.04: 자바 기반 디지털 컨버전스
                        <br>[그린컴퓨터아카데미 서면 - 최홍석 강사]</p>

                        <h2><div class="ListOJ"></div>License</h2>
                        <p>워드프로세스</p>
                        <p>정보처리기능사</p>
                    </div> 
                </div> 
           </div>
            
            
        </div>
        <div class="box"> <!-- Skills ------------->
            <h1 class="OJ2">Skills</h1>
            <div class="SectionBar"></div>
            <div class="SkillSection">
                <div class="SkillLine">
                    <img class="icon" src="img/javajpg.jpg">
                    <p class="SkillText"> Java - 95%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/html.png">
                    <p class="SkillText"> Html - 90%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/css.png">
                    <p class="SkillText"> CSS - 70%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/jquery.png">
                    <p class="SkillText"> jQuery - 80%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/js.png">
                    <p class="SkillText"> JS - 90%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/phython.jpg">
                    <p class="SkillText"> Phython - 50%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/mySQL.jpg">
                    <p class="SkillText"> MySQL - 85%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
                <div class="SkillLine">
                    <img class="icon" src="img/android.png">
                    <p class="SkillText"> Android - 30%</p>
                    <div class="SkillBar">
                        <div class="SkillLevel"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box"> <!-- Porfolio ------------->
            <h1 class="OJ">Portfolio</h1>
            <div class="SectionBar"></div>
            <div class="PortfolioSection">
                <div class="SectionWrap">
                    <div class="pf">
                       <a href="#">
                           <img src="img/GogumaC.png">
                       </a>
                        <div>Goguma Talk</div>
                    </div>
                    <div class="pf">
                       <a href="#">
                           <img src="img/GogumaC.png">
                       </a>
                        <div>Goguma Talk</div>
                    </div>
                    <div class="pf">
                       <a href="#">
                           <img src="img/GogumaC.png">
                       </a>
                        <div>Goguma Talk</div>
                    </div>
                    <div class="pf">
                       <a href="#">
                           <img src="img/GogumaC.png">
                       </a>
                        <div>Goguma Talk</div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="box"> <!-- Concat ------------->
            <h1 class="OJ2">Contact</h1>
            <hr>
            <!-- <div class="SectionBar"></div> -->
            <div class="tel">
                <i class="fa fa-phone"></i>
                010-3345-5943
            </div>
            <div class="tel">
                <i class="fa fa-envelope"></i>
                alcmskfl17@naver.com
            </div>
            <form class="guestFrom" action="GuestUpProc.jsp" method="post">
            <div class="ContactSection">
                <div id="guest" class="SectionWrapConcat">
                    <div>
                        <span>방명록</span>
                        <div>
                            <input type="text" class="guestID" placeholder="아이디" name="guestID">
                            <input type="text" class="guestPW" placeholder="비밀번호" name="guestPW">
                            <input type="checkbox" class="guestSecret" name="guestSecret">비밀글
                        </div>
                    </div>
                    <div>
                        <textarea class="guestField" name="guestField"></textarea>
                    </div>
                    
                    <div class="guestAction">
                        <input type="button" class="btnReset" onclick="gFieldClear()" value="초기화">
                        <input type="button" class="btnOK" onclick="guestUpload()" value="확인">
                    </div>
                    
                    <% Vector<TestDTO> vg = dao.selectAll("guestboard"); 
                    
                    for(int i=0; i<vg.size(); i++){ 
                    	int tempIdx = vg.size()-(i+1);%>
                    	<%= FunctionGuest.getGuest(vg.get(tempIdx).getIdx(),
                    			vg.get(tempIdx).getId(), vg.get(tempIdx).getPw(), 
                    			vg.get(tempIdx).getAnswer(), vg.get(tempIdx).getSecret(), 
                    			vg.get(tempIdx).getDate()) %>
                    <% } %>
                    
                    <input type="button" onclick="more()" value="더 보기">
                    
                    <script>
                    	function guestUpload(){
                    		
                    		if($(".guestField").val()==""){
                    			alert("내용을 입력하세요");
                    		} else if($(".guestID").val()==""){
                    			alert("아이디를 입력하세요");
                    		} else if($(".guestPW").val()==""){
                    			alert("비밀번호를 입력하세요");
                    		} else{
                    			var tempField = $(".guestSecret").is(":checked");

                        		$(".guestFrom").submit();
                    		}

                    	}
                    	function gFieldClear(){
                    		$(".guestField").val("");
                    		$(".guestID").val("");
                    		$(".guestPW").val("");
                    	}
                    	
                    	function guestDel(pidx){
                    		var pw = prompt("삭제를 진행하려면 비밀번호를 입력하세요")
                    		location.href="GuestDelProc.jsp?idx="+pidx+"&pw="+pw;
                    	}
                    	
                    	var upidx;
                    	function guestUp(pidx){
                  
                    		upidx = pidx;
							$(".upHiden").css('display', 'block');
							$(".importUp").css('display', 'none');
                    	}
                    	function guestUpProc(pidx){
                    		var pw = prompt("수정를 진행하려면 비밀번호를 입력하세요")
                    		var answer = "자바빈";
                    		location.href="GuestUpdateProc.jsp?idx="+pidx+"&pw="+pw+"$answer="+answer;
							$(".upHiden").css('display', 'none');
							$(".importUp").css('display', 'block');
                    	}
                    	
                    	
                    	
                    </script>

                </div>
            </div>
            </form>
        </div>
    <script> // function script
        $(function(){
            var elm = ".box";
            var cnt = $(elm).length;
            $(elm).on("mousewheel DOMMouseScroll",
            function(e){
                e.preventDefault();

                var E = e.originalEvent;
                var delta = 0;
                if(E.detail){
                   delta = E.detail* -40;
                }else{
                    delta = E.wheelDelta;
                    if(window.opera){
                        delta = -delta;
                    }
                }

                if(delta<0){ // Scroll Down
                  if($(this).index() != (cnt-1)){
                      var next = $(this).next().offset().top;
                      $("html, body").stop().animate({
                        scrollTop:next
                        },500);
                  }
                   if($(this).index()==0){ // First page -> next page
                       onBox2();
                       //onSubNav();
                   }else if($(this).index()==1){
                       offBox2();
                       onBox3();
                   }else if($(this).index()==2){
                       offBox3();
                       onBox4();
                   }else if($(this).index()==3){
                       onBox5();
                   }
                }else{ // Scroll Up
                  if($(this).index() != 0){
                     var prev = $(this).prev().offset().top;
                      $("html, body").stop().animate({
                        scrollTop:prev
                        },500); 
                  }
                  if($(this).index()==1){ //next First Page
                      navLocation(1);
                      offBox2();
                      //onMainNav();
                  }else if($(this).index()==2){
                      onBox2();
                      offBox3();
                  }else if($(this).index()==3){
                      onBox3();
                  }else if($(this).index()==4){
                      onBox4();
                  }
                }
            });
        });
        
        function onBox2(){
            navLocation(2);
            $(".myImg").stop().animate({
               top: "10%",
               opacity: "1"
            },1800);
            $(".profile").stop().animate({
               left:"5%",
               opacity: "1"
            },1300);
            $(".boxProfile").stop().animate({
               width: "100%"
            },1000);
            $(".boxMyImg").stop().animate({
               width: "100%"
            },1000);
        }
        function offBox2(){
            $(".myImg").stop().animate({
               top:"5%",
               opacity: "0"
           },1000);
           $(".profile").stop().animate({
               left:"90%",
               opacity: "0"
           },1000);
        }
        function onBox3(){
            navLocation(3);
            setSkill(1, 95);
            setSkill(2, 90);
            setSkill(3, 70);
            setSkill(4, 80);
            setSkill(5, 90);
            setSkill(6, 50);
            setSkill(7, 85);
            setSkill(8, 30);
        }
        function setSkill(target, level){
            var tempTarget = ".SkillLine:nth-child(" +target+ 
                ") > .SkillBar > .SkillLevel"
            var tempLevel = level*1.5;
            
            if(level>70){
                $(tempTarget).animate({
                    width: tempLevel,
                    backgroundColor: "black"
                }, 1500);
            } else {
                $(tempTarget).animate({
                    width: tempLevel
                }, 1500);
            }
        }
        function offBox3(){
            for(var i=1; i<9; i++){
                setSkill(i, 5);
            }
        }
        function onBox4(){
            navLocation(4);
        
        }
        function onBox5(){
            navLocation(5);
        
        }
        function navLocation(location){
            var index = ".navTop a:nth-child("+location+")";
            $(".navTop a").css({
                'color': 'black'
            });
            
            $(index).css({
                'color': '#82bbb5'
            });
        };
        
    </script>
    <script type="text/javascript"> ///////////////// snow script
        window.onload = function(){
            var mainS = "canvas";
            snow(mainS);
            
            function snow(target){
                var canvas = document.getElementById(target);
                var ctx = canvas.getContext("2d");
                var W = window.innerWidth;
                var H = window.innerHeight;
                canvas.width = W;
                canvas.height = H;
                var mp = 25; //max particles
                var particles = [];
                for(var i = 0; i < mp; i++)
                {
                    particles.push({
                        x: Math.random()*W, //x-coordinate
                        y: Math.random()*H, //y-coordinate
                        r: Math.random()*4+1, //radius
                        d: Math.random()*mp //density
                    })
                }
                function draw()
                {
                    ctx.clearRect(0, 0, W, H);

                    ctx.fillStyle = "rgba(255, 255, 255, 0.8)";
                    ctx.beginPath();
                    for(var i = 0; i < mp; i++)
                    {
                        var p = particles[i];
                        ctx.moveTo(p.x, p.y);
                        ctx.arc(p.x, p.y, p.r, 0, Math.PI*2, true);
                    }
                    ctx.fill();
                    update();
                }
                var angle = 0;
                function update()
                {
                    angle += 0.01;
                    for(var i = 0; i < mp; i++)
                    {
                        var p = particles[i];
                        p.y += Math.cos(angle+p.d) + 1 + p.r/2;
                        p.x += Math.sin(angle) * 2;
                        if(p.x > W+5 || p.x < -5 || p.y > H)
                        {
                            if(i%3 > 0)
                            {
                                particles[i] = {x: Math.random()*W, y: -10, r: p.r, d: p.d};
                            }
                            else
                            {
                                if(Math.sin(angle) > 0)
                                {
                                    particles[i] = {x: -5, y: Math.random()*H, r: p.r, d: p.d};
                                }
                                else
                                {
                                    particles[i] = {x: W+5, y: Math.random()*H, r: p.r, d: p.d};
                                }
                            }
                        }
                    }
                }
                //animation loop
                setInterval(draw, 33);
            } // end snow function

    }
    </script>
    <script> // typing script
        var typingBool = false; 
        var typingIdx=0; 
        var typingTxt = $(".typing-txt").text(); // 타이핑될 텍스트를 가져온다 
        typingTxt=typingTxt.split(""); // 한글자씩 자른다. 
        if(typingBool==false){ // 타이핑이 진행되지 않았다면 
           typingBool=true; 

           var tyInt = setInterval(typing,100); // 반복동작 
         } 

         function typing(){ 
           if(typingIdx<typingTxt.length){ // 타이핑될 텍스트 길이만큼 반복 
             $(".typing").append(typingTxt[typingIdx]); // 한글자씩 이어준다. 
             typingIdx++; 
           } else{ 
             clearInterval(tyInt); //끝나면 반복종료
           } 
         }  
    </script>
</body>
</html>
















