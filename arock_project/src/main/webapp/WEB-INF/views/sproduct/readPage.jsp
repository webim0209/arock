<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>

<%@ include file="../include/header.jsp"%>
	    <section id="sub" class="sub112">
        <div class="sub_area">
        <form role="form" method="post">
        	<input type="hidden" name="productNo" value=${productVO.productNo}>
        	<input type="hidden" name="page" value=${cri.page}>
        	<input type="hidden" name="perPageNum" value=${cri.perPageNum}>
        	<input type="hidden" name="searchType" value=${cri.searchType}>
        	<input type="hidden" name="keyword" value=${cri.keyword}>
        </form>
           <div class="sub_navi">
               <ul>
                   <li><a href="#">Home ></a></li>
                   <li class="on">
	                   <c:if test="${cri.searchType eq 'k'}"><a href="#">한식</a></c:if>
						<c:if test="${cri.searchType eq 'c'}"><a href="#">중식</a></c:if>
						<c:if test="${cri.searchType eq 'j'}"><a href="#">일식</a></c:if>
						<c:if test="${cri.searchType eq 'b'}"><a href="#">분식</a></c:if>
						<c:if test="${cri.searchType eq 'd'}"><a href="#">다이어트식</a></c:if>
					</li>
               </ul>
           </div><!--sub_navi-->
           <div class="detail_top">
                <div class="detail_img">
                    <img src="http://placehold.it/400" alt="">
                    <ul>
                        <li><a href="">
                            <img src="http://placehold.it/122" alt="">
                        </a></li>
                        <li><a href="">
                            <img src="http://placehold.it/122" alt="">
                        </a></li>
                        <li><a href="">
                            <img src="http://placehold.it/122" alt="">
                        </a></li>
                    </ul>
                </div><!--detail_img-->
                <div class="detail_title">
                    <p class="productNo">상품번호 ${productVO.productNo}</p>
                    <p class="productName">${productVO.productName}</p>
                    <ul>
                        <li><span class="price_before">${productVO.productPrice}</span><span class="price_after"> ${productVO.productSalePrice}</span><span class="zzim">♡ ${productVO.likeCount}</span></li>
                        <li>구매시 추가되는 적립금</li>
                        <li>배송유형</li>
                        <li>배송비</li>
                        <li>
                            <label for="">배송 예약일</label><input type="date">
                        </li>
                        <li>
                            <label for="">옵션</label>
                            <select name="" id="">
                                <option value="">옵션을 선택해주세요</option>
                            </select>
                        </li>
                    </ul>
                    <input type="textarea" placeholder="상품옵션이 표시됩니다.">
                    <p class="total_price">총 상품금액 <span> ${productVO.productPrice}-${productVO.productSalePrice}</span></p>
                    <div>
                        <a href="#">찜하기</a>
                        <a href="#">장바구니</a>
                        <a href="#">구매</a>
                    </div>
                </div><!--detail_title-->
            </div>
            <div class="sns_area">
               <h3>상품관련 최신리뷰</h3>
               <div class="youtube">
                   <h4>Youtube</h4>
                   <!--<video src="https://youtu.be/1PXUU8ncPB8" controls>이 브라우저는 재생할 수 없습니다.</video>-->
               </div><!--youtube-->
               <div class="instagram">
                   <h4>Instagram</h4>
                   <ul>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                       <li><a href="">
                           <img src="http://placehold.it/200" alt="">
                       </a></li>
                   </ul>
               </div><!--instagram-->
            </div><!--sns_area-->
            <div class="sub_detail_01">
                <h3>제품상세정보</h3>
                <p> ${productVO.productDetail}</p>
                <img src="http://placehold.it/1280x3000" alt="">
            </div><!--sub_detail_01-->
            <div class="sub_tab">
                <ul>
                    <li class="on"><a href="#">상품리뷰</a></li>
                    <li><a href="#">Q&amp;A</a></li>
                    <li><a href="#">업체정보</a></li>
                    <li><a href="#">쿠폰안내</a></li>
                </ul>
            </div><!--sub_tab-->
            <div class="review_area">
               <div class="review_title">
                   <h3>상품리뷰(12)</h3>
               </div><!--review_title-->
               <ul class="review_list">
               	   <li class="review_register">
                   <div class="review_info">
                       <label for="newReviewer">작성자</label>
                       <input type="text" id="newReviewer" placeholder="작성자를 입력해주세요.">
                       <label for="starRev">별점</label>
                       <div id="starRev">
                          <span class="starR on"></span>
                          <span class="starR"></span>
                          <span class="starR"></span>
                          <span class="starR"></span>
                          <span class="starR"></span>
                        </div>
                   </div>
                   <div class="newReviewTextArea">
                      <label for="newReviewTitle">리뷰 제목</label>
                       <input id="newReviewTitle" type="text" placeholder="리뷰 제목을 입력해주세요.">
                       <label for="newReviewText">리뷰 내용</label>
                       <textarea cols="30" rows="10" id="newReviewText" placeholder="리뷰 내용을 입력해주세요."></textarea>
                   </div>
                   <div class="review_text01">
                       <ul class="btn_area right">
                           <li><button type="submit" id="reviewAddBtn">리뷰등록</button></li>
                       </ul>
                   </div>
               	</li><!-- review_register -->
                   <!--<li class="photo_review"><a href="#">
		                   <div class="img_area">
		                      <img src="http://placehold.it/200" alt="">
		                      <p>5</p>
		                   </div>
		                   <div class="review_text">
		                       <p class="review_tit">reviewTitle<span>★★★★★</span></p>
		                       <p>reviewText</p>
		                   </div>
		                   <div class="review_text01">
		                       <p>reviewer</p>
		                       <p>prettifyDate regdate</p>
		                       <ul class="btn_area">
		                       		<li><button class="reviewModifyBtn">수정</button></li>
		                       </ul>
		                   </div>
	               		</a>
                   </li>-->
               </ul>
               <ul class='review_list_area'>
               </ul>
               <ul class="paging">
                </ul>
               <script id="template" type="text/x-handlebars-template">
                   {{#each.}}
					   <li class="text_review" data-reviewNo={{reviewNo}}><a href="#">
                       		<div class="review_text">
                           		<p class="review_tit"><span class="modifyReviewTitle">{{reviewTitle}}</span><span class="modifyStar">{{printStar starPoint}}</span></p>
                           		<p class="reviewTextBody">{{reviewText}}</p>
                       		</div>
                       		<div class="review_text01">
                           		<p class="modifyReviewer">{{reviewer}}</p>
                           		<p>{{prettifyDate reviewUpdateDay}}</p>
                       		</div>
							<ul class="btn_area review_btn">
		                       	<li><button class="reviewModifyBtn">수정</button></li>
								<li><button class="reviewDeleteBtn">삭제</button></li>
		                    </ul>
                   		</a></li>
						<li class="review_register review_modify" style="border-top:1px solid #ddd; display:none;">
                   		<div class="review_info">
                       		<label for="modifyReviewer">작성자</label>
                       		<input type="text" id="modifyReviewer">
                       		<label for="modifyStarRev">별점</label>
                       		<div id="modifyStarRev">
                          		<span class="starR on"></span>
                          		<span class="starR"></span>
                          		<span class="starR"></span>
                          		<span class="starR"></span>
                          		<span class="starR"></span>
                        	</div>
							<div class="reviewModifyNo" style="display:inline-block;"></div>
                   		</div>
                   		<div class="newReviewTextArea">
                      		<label for="reviewModifyTitle">리뷰 제목</label>
                       		<input id="reviewModifyTitle" type="text">
                       		<label for="reviewModifyText">리뷰 내용</label>
                       		<textarea cols="30" rows="10" id="reviewModifyText"></textarea>
                   		</div>
                   		<div class="review_text01">
                       		<ul class="btn_area right">
                           		<li><button type="button" class="reviewModifySuccessBtn">수정완료</button></li>
								<li><button type="button" class="reviewModifyCancelBtn">닫기</button></li>
                       		</ul>
                   		</div>
               			</li><!-- review_register -->
               		{{/each}}
                   </script>
            </div><!--review_area-->
            <script>
            var productNo = ${productVO.productNo}; 
            </script>
            <script type="text/javascript" src="/js/readPageJS.js"></script>
            <script>
           	/* 리뷰 수정 기능 */
           	$(".review_list_area").on("click",".reviewModifySuccessBtn",function(){
          	   var reviewNo = $(".review_idx").text();
          	   var reviewer = $("#modifyReviewer").val();
          	   var reviewTitle = $("#reviewModifyTitle").val();
          	   var reviewText = $("#reviewModifyText").val();
          	   var starPoint = $("#modifyStarRev span.on").length;
          	   
          	   alert(starPoint);
          	   
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
            </script>
            <div class="product_tab">
                <ul>
                    <li class="on"><a href="#">상품제공공시</a></li>
                    <li><a href="#">거래 조건에 관한 정보</a></li>
                </ul>
            </div><!--product_tab-->
            <div class="product_tab_area">
                
            </div><!--product_tab_area-->
            <ul class="btn_area right">
                <li><button type="submit" class="modifyBtn">수정하기</button></li>
                <li><button type="submit" class="removeBtn">삭제하기</button></li>
                <li><button type="submit" class="goListBtn">목록으로</button></li>
            </ul>
        </div><!--sub_area-->
    </section><!--sub-->
    <script>
       	$(document).ready(function(){
       		var formObj=$("form[role='form']");
       		
       		$(".sub112 .goListBtn").on("click", function(){
       			formObj.attr("method","get");
       			formObj.attr("action", "/sproduct/list");
       			formObj.submit();
       		});
       		
       		$(".sub112 .removeBtn").on("click", function(){
       			formObj.attr("action", "/sproduct/removePage");
       			formObj.submit();
       		});
       		
       		$(".sub112 .modifyBtn").on("click", function(){
       			formObj.attr("action", "/sproduct/modifyPage");
       			formObj.attr("method","get");
       			formObj.submit();
       		});
       	});
    </script>
<%@ include file="../include/footer.jsp"%>