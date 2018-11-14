<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>

<%@ include file="../include/header.jsp"%>
	    <section id="sub" class="sub111">
        <c:if test="${cri.searchType eq 'k'}"><img src="/resources/img/subimg/sub_visual101.jpg" alt="" class="sub_visualImg"></c:if>
		<c:if test="${cri.searchType eq 'c'}"><img src="http://placehold.it/1980x300" alt="" class="sub_visualImg"></c:if>
		<c:if test="${cri.searchType eq 'j'}"><img src="http://placehold.it/1980x300" alt="" class="sub_visualImg"></c:if>
		<c:if test="${cri.searchType eq 'b'}"><img src="http://placehold.it/1980x300" alt="" class="sub_visualImg"></c:if>
		<c:if test="${cri.searchType eq 'd'}"><img src="http://placehold.it/1980x300" alt="" class="sub_visualImg"></c:if>        
        <div class="sub_area sub_space">
            <ul class="sub_menu">
                <li class="on"><a href="/sproduct/list${pageMaker.makeQuery(1)}&searchType=k&keyword=">
        					<c:if test="${cri.searchType == null}"></c:if>
							<c:if test="${cri.searchType eq 'k'}">한식</c:if>
							<c:if test="${cri.searchType eq 'c'}">중식</c:if>
							<c:if test="${cri.searchType eq 'j'}">일식</c:if>
							<c:if test="${cri.searchType eq 'b'}">분식</c:if>
							<c:if test="${cri.searchType eq 'd'}">다이어트</c:if>         
                 전체</a>
                    <ul class="subMenu_step02 hidden">
                        <li><a href="#">테스트1</a></li>
                        <li><a href="#">테스트2</a></li>
                    </ul>
                </li>
                <li><a href="sub120.html">SMART 추천메뉴</a></li>
            </ul>
            <div class="sub_right">
                <div class="sub_navi">
                    <ul>
                        <li><a href="#">Home ></a></li>
                        <li>
	                        <c:if test="${cri.searchType == null}"><a href="#">전체메뉴 ></a></c:if>
							<c:if test="${cri.searchType eq 'k'}"><a href="#">한식 ></a></c:if>
							<c:if test="${cri.searchType eq 'c'}"><a href="#">중식 ></a></c:if>
							<c:if test="${cri.searchType eq 'j'}"><a href="#">일식 ></a></c:if>
							<c:if test="${cri.searchType eq 'b'}"><a href="#">분식 ></a></c:if>
							<c:if test="${cri.searchType eq 'd'}"><a href="#">다이어트식 ></a></c:if>
                        </li>
                        <li class="on">
	                        <c:if test="${cri.searchType == null}"></c:if>
							<c:if test="${cri.searchType eq 'k'}"><a href="/sproduct/list${pageMaker.makeQuery(1)}&searchType=k&keyword=">한식 전체</a></c:if>
							<c:if test="${cri.searchType eq 'c'}"><a href="#">중식 전체</a></c:if>
							<c:if test="${cri.searchType eq 'j'}"><a href="#">일식 전체</a></c:if>
							<c:if test="${cri.searchType eq 'b'}"><a href="#">분식 전체</a></c:if>
							<c:if test="${cri.searchType eq 'd'}"><a href="#">다이어트 전체</a></c:if>
                        </li>
                    </ul>
                </div><!--sub_navi-->
                <div class="sub_search">
                    <div class="sub_search_area">
                        <div class="sub_search_bar">
                            <form>
                                <select name="searchType">
                                	<option value="" <c:out value="${cri.searchType == null? 'selected':''}"/>>전체</option>
                                    <option value="k" <c:out value="${cri.searchType eq 'k'? 'selected':''}"/>>한식</option>
                                    <option value="c" <c:out value="${cri.searchType eq 'c'? 'selected':''}"/>>중식</option>
                                    <option value="j" <c:out value="${cri.searchType eq 'j'? 'selected':''}"/>>일식</option>
                                    <option value="b" <c:out value="${cri.searchType eq 'b'? 'selected':''}"/>>분식</option>
                                    <option value="d" <c:out value="${cri.searchType eq 'd'? 'selected':''}"/>>다이어트식</option>
                                </select>
                                <input type="text" name="keyword" id="keywordInput" value='${cri.keyword}'>
                                <button class="search_btn"></button>
                                <button class="voice_search_btn"></button>
                            </form>
                        </div><!--sub_search_bar-->
                        <div class="hidden">검색어 자동완성</div>
                        <div class="recently_search">
                            <p>최근 검색어 | <span>한식</span><span>한식</span></p>
                        </div>
                    </div><!--sub_search_area-->
                    <div class="detail_search_area">
                       <ul>
                           <li> <label for="">가격대</label>
                            <select name="" id="">
                                <option value="">1000원~3000원</option>
                            </select></li>
                            <li> <label for="">구입목적</label>
                            <select name="" id="">
                                <option value="">일반</option>
                            </select></li>
                            <li><label for="">배송지역</label>
                            <select name="" id="">
                                <option value="">서울</option>
                            </select></li>
                            <li><label for="">배송기간</label>
                            <select name="" id="">
                                <option value="">단기배송</option>
                            </select></li>
                            <li><label for="">별점</label>
                            <select name="" id="">
                                <option value="">★★★★★</option>
                            </select></li>
                            <li></li>
                       </ul>
                    </div><!--detail_search_area-->
                    <a href="#" class="sub_detail_search">상세검색</a>
                </div><!--sub_search-->
                <div class="product_list_top">
                   <select>
                        <option value="">정렬기준</option>
                        <option value="">최근</option>
                    </select>
                    <a href="#"></a>
                    <a href="#"></a>
                </div><!--product_list_top-->
                <ul class="product_list">
 <c:forEach items="${list}" var="productVO">
   <li><a href='/sproduct/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&productNo=${productVO.productNo}'>
     <div class="left_side">
       <div class="left01">
           <img src="http://placehold.it/230" alt="">
           <p>찜 <span>${productVO.likeCount}</span> | <a href="#">♡</a></p>
       </div>
       <div class="left02">
           <p>상품명 <span>${productVO.productName}</span></p>
           <p>상품가격 ${productVO.productPrice}</p>
           <p>구매시 적립금</p>
           <p>상품 요약정보 ${productVO.productSummary}</p>
           <p>등록일 <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${productVO.productCreateDay}"/> | 구매건수 ${productVO.buyCount} | 리뷰 21 </p>
       </div>
     </div>
     <div class="right_side">
         <p>업체명 | 업체등급</p>
         <p>배송유형</p>
         <p>배송비</p>
     </div>
  </a></li>
 </c:forEach>
                </ul><!--product_list-->
                <ul class="paging">
                	<c:if test="${pageMaker.prev}">
                    	<li><a href="list${pageMaker.makeSearch(pageMaker.startPage-1)}">◀◀</a></li>
                    </c:if>
                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                    	<li <c:out value="${pageMaker.cri.page == idx?'class=on':''}"/>><a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
                    </c:forEach>
                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    	<li><a href="list${pageMaker.makeSearch(pageMaker.endPage+1)}">▶▶</a></li>
                    </c:if>
                </ul>
            </div><!--sub_right-->
        </div><!--sub_area-->
    </section><!--sub/sub111-->
    <script>
    	/***************** 상품 등록, 수정, 삭제시 확인 경고창 **************************/
    	var result ='${msg}';
    	if(result=='SUCCESS'){
    		alert("처리가 완료되었습니다.");
    	}
    	
    	/***************** 상품 검색 버튼 동작 **************************/
    	$(document).ready(
    		function(){
    			$('#sub .search_btn').on("click", function(event){
    				self.location = "list"
    				+ '${pageMaker.makeSearch(1)}'
    				+ "&searchType="
    				+ $("select option:selected").val()
    				+ "&keyword=" + encodeURIComponents($('#keywordInput').val());
    			});
    		});
    </script>
<%@ include file="../include/footer.jsp"%>