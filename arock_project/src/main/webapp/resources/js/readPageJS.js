/** readPage_tab메뉴 - 1.리뷰/Q&A/업체정보 2.상품제공공시/거래조건에관한정보 **/
$('.sub_tab1 a').click(function(){
    var tab_class = $(this).attr('data-tab');
    $('.sub_tab1').removeClass('on');
    $(this).parent().addClass('on');
    $('.sub_tab1').each(function(){
    	$("."+$(this).children().attr('data-tab')).hide();
    });
    $("."+tab_class).show("fast");
    return false;
});

$('.sub_tab2 a').click(function(){
    var tab_class = $(this).attr('data-tab');
    $('.sub_tab2').removeClass('on');
    $(this).parent().addClass('on');
    $('.sub_tab2').each(function(){
    	$("."+$(this).children().attr('data-tab')).hide();
    });
    $("."+tab_class).show("fast");
    return false;
});

/** 별점 등록 **/
   $("#starRev span").on("click", function(){
      	$(this).parent().children('span').removeClass('on');
      	$(this).addClass("on").prevAll('span').addClass('on');
      	return false;
   });
   
/** 별점 핸들바 **/
   Handlebars.registerHelper("printStar",function(starPoint){
	   var starText='';
	   for(var i=0; i<starPoint; i++){
		   starText += "★";
	   }
	   return starText;
   });

 /** 리뷰 핸들바 **/
   Handlebars.registerHelper("prettifyDate",function(timeValue){
	   var dateObj = new Date(timeValue);
	   var year = dateObj.getFullYear();
	   var month = dateObj.getMonth() +1;
	   var date = dateObj.getDate();
	   var time = dateObj.getTime();
	   var hour = dateObj.getHours();
	   var minute = dateObj.getMinutes();
	   return year+"/"+month+"/"+date+" "+hour+":"+minute;
   });
   
   var printData = function(reviewArr, target, templateObject){
	   var template = Handlebars.compile(templateObject.html());
	   $(".text_review").remove();
	   target.html(template(reviewArr));
   }
   
   var reviewPage = 1;
   
   function getPage(pageInfo){
	   $.getJSON(pageInfo,function(data){
		   if(data.list.length>0){
			   /** 리스트 상단 뿌리기 **/
			   $(".list_once").remove();
			   $(".review_register").after("<li class='list_select list_once'><p><span class='on'>최신순 </span>|<span> 평점순</span></p></li>");
		   }
		   printData(data.list,$(".review_list_area"),$("#template"));
		   printPaging(data.pageMaker, $(".review_area .paging"));
	   });
   }
   
/*리뷰 페이징 출력*/
   var printPaging =  function(pageMaker, target){
	   var str = "";
	   if(pageMaker.prev){
		   str += "<li><a href='"+(pageMaker.startPage-1)+"'> << </a></li>";
	   }
	   for(var i = pageMaker.startPage, len = pageMaker.endPage; i<=len; i++){
		   var strClass = pageMaker.cri.page == i? 'class=on' : '';
		   str +="<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
	   }
	   if(pageMaker.next){
		   str += "<li><a href='"+(pageMaker.endPage+1)+"'> >> </a></li>";
	   }
	   target.html(str);
   };
   
/* 리뷰 페이징 이벤트 */
   $(".review_area .paging").on("click","li a", function(event){
	   event.preventDefault();
	   reviewPage = $(this).attr("href");
	   getPage("/review/"+productNo+"/"+reviewPage);
   });
   
/* 기본 페이지에서 리뷰 목록생성 */
   $(document).ready(function(){
	  if($(".review_list_area li").length >1){
		  return;
	  }
	  getPage("/review/"+productNo+"/1");
   });

/* 리뷰 등록 이벤트 */
   $("#reviewAddBtn").on("click", function(){
	   var reviewerObj = $("#newReviewer");
	   var reviewTitleObj = $("#newReviewTitle");
	   var reviewTextObj = $("#newReviewText");
	   var starPoint = $("#starRev span.on").length;
	   
	   var reviewer = reviewerObj.val();
	   var reviewTitle = reviewTitleObj.val();
	   var reviewText = reviewTextObj.val();
	   
	   $.ajax({
		   type:'post',
		   url:'/review/',
		   headers:{
			   "Content-Type" : "application/json",
			   "X-HTTP-Method-Override" : "POST"},
			dataType : 'text',
			data :JSON.stringify({productNo:productNo, reviewTitle:reviewTitle, reviewText:reviewText, starPoint:starPoint, reviewer:reviewer}),
			success:function(msg){
				console.log("msg : "+ msg);
				if(msg == 'SUCCESS'){
					alert("등록되었습니다.");
					reviewPage = 1;
					getPage("/review/"+productNo+"/"+reviewPage);
					reviewerObj.val("");
					reviewTitleObj.val("");
					reviewTextObj.val("");
				}
			}});
   });
   
/* 리뷰 수정 버튼 이벤트 */
   $(".review_list_area").on("click",".reviewModifyBtn",function(event){
	   var review = $(this).closest(".text_review");
	   var reviewModify = review.next();
	   review.find(".reviewModifyBtn").addClass('on');
	   reviewModify.find(".reviewModifyNo").html("<span style='display:inline-block; font-weight:600; margin-right:5px;'>리뷰 번호</span><span class='review_idx'>"+review.attr("data-reviewNo")+"</span>");
	   if(reviewModify.css("display")=="none"){
		   /* 별점 조절 */
    	      var starPoint = review.find('.modifyStar').text();
    	      var starCount = (starPoint.match(/★/g)).length;
    	      
       	  $(".review_modify .modifyReviewer").val(review.find('.modifyReviewer').text());
       	  reviewModify.find(".modifyStarRev").children("span").removeClass('on');
       	  for (var i=0; i<starCount; i++){
       		  reviewModify.find(".modifyStarRev").children('span:nth-child('+(i+1)+')').addClass('on');
       	  }
		  if(reviewModify.next().length >= 1){
			  reviewModify.nextAll(".review_modify").hide("fast");
		  }
		  if(reviewModify.prev().length >= 1){
			  reviewModify.prevAll(".review_modify").hide("fast");
		  }
		  reviewModify.show("fast");
	   }
   	  $(".review_modify .reviewModifyTitle").val(review.find('.modifyReviewTitle').text());
   	  $(".review_modify .reviewModifyText").val(review.find('.reviewTextBody').text());
      /*별점 재선택*/
   	  reviewModify.find(".modifyStarRev span").on("click", function(){
       	$(this).parent().children('span').removeClass('on');
       	$(this).addClass("on").prevAll('span').addClass('on');
       	return false;
      });
   
   	  /* 리뷰 수정 기능 */
   	  $(".reviewModifySuccessBtn").on("click", function(){
   		  var reviewNo = reviewModify.find(".review_idx").text();
    	  var reviewer = reviewModify.find(".modifyReviewer").val();
     	  var reviewTitle = reviewModify.find(".reviewModifyTitle").val();
     	  var reviewText = reviewModify.find(".reviewModifyText").val();
     	  var starPoint = reviewModify.find(".modifyStarRev span.on").length;
     	   
     	   $.ajax({
     		   type:'put',
     		   url:'/review/'+reviewNo,
     		   headers:{
     			   "Content-Type" : "application/json",
     			   "X-HTTP-Method-Override" : "PUT"},
     		   data :JSON.stringify({reviewTitle:reviewTitle, reviewText:reviewText, starPoint:starPoint, reviewer:reviewer}),
     		   dataType:'text',
     		   success:function(msg){
     			   console.log("msg : "+msg);
     			   if(msg =='SUCCESS'){
     				   alert("수정되었습니다.");
     				   getPage("/review/"+productNo+"/"+reviewPage);
     			   }          		   
     	   		}});
   	  });
 	  return false;
   });
   
/* 리뷰 삭제 기능 */
$(".review_list_area").on("click",".reviewDeleteBtn",function(){
	var review = $(this).closest(".text_review");
	alert("hi");
	var reviewNo = review.attr("data-reviewNo");
	  
	$.ajax({
		 type:'delete',
		 url:'/review/'+ reviewNo,
		 headers:{
			 "Content-Type":"application/json",
			 "X-HTTP-Method-Override" : "DELETE"},
		dataType:'text',
		success:function(msg){
			console.log("msg: "+msg);
			if(msg == 'SUCCESS'){
				alert('삭제되었습니다.');
				getPage("/review/"+productNo+"/"+reviewPage);
				}
			}});
	 });
   