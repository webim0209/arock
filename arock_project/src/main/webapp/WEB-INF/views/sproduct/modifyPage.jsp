<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../include/sellerHeader.jsp"%>
	<section id="sub" class="sub113">
        <div class="sub_area">
        	<form role="form" action="modifyPage" method="post">
        		<input type="hidden" name="page" value="${cri.page}">
        		<input type="hidden" name="perPageNum" value="${cri.perPageNum}">	
        		<input type="hidden" name="searchType" value="${cri.searchType}">
        		<input type="hidden" name="keyword" value="${cri.keyword}">	
        		<input type="hidden" name="productNo" value="${productVO.productNo}">	
	           <div class="sub_form_list">
	               <p>* 필수입력사항입니다.</p>
		               <ul>
		                   <li class="half">
		                       <label for="productName"><span>*</span>상품명</label>
		                       <input type="text" name="productName" value="${productVO.productName}">
		                   </li><li class="half" style="border-top:0;">
		                   <label for="productCategory"><span>*</span>카테고리</label>
		                   		<select name="productCategory">
		                   			<option value="한식" <c:out value="${productVO.productCategory eq '한식'? 'selected':''}"/>>한식</option>
                                    <option value="중식" <c:out value="${productVO.productCategory eq '중식'? 'selected':''}"/>>중식</option>
                                    <option value="일식" <c:out value="${productVO.productCategory eq '일식'? 'selected':''}"/>>일식</option>
                                    <option value="분식" <c:out value="${productVO.productCategory eq '분식'? 'selected':''}"/>>분식</option>
                                    <option value="다이어트식" <c:out value="${productVO.productCategory eq '다이어트식'? 'selected':''}"/>>다이어트식</option>
		                   		</select>
		                   </li>
		                   <li class="half">
		                       <label for="productPrice"><span>*</span>상품 가격</label>
		                       <input type="text" name="productPrice" value="${productVO.productPrice}">
		                   </li><li class="half">
		                       <label for="productSalePrice">상품 할인가격</label>
		                       <input type="text" name="productSalePrice" value="${productVO.productSalePrice}">
		                   </li>
		                    <li>
		                       <label for="productSummary">상품 요약정보</label>
		                       <textarea name="productSummary">${productVO.productSummary}</textarea>
		                   </li>
		                   <li>
		                       <label for="productDetail">상품 상세정보</label>
		                       <textarea name="productDetail">${productVO.productDetail}</textarea>
		                   </li>
		               </ul>
	           </div><!-- sub_form_list -->
	            <ul class="btn_area right">
	                <li><button type="button" class="modifyCancel" onclick="history.back(-1);">수정취소</button></li>
	                <li><button type="button" class="modifyComplete">수정완료</button></li>
	            </ul>
             </form>
             <script>
             	$(document).ready(function(){
             		var formObj = $("form[role='form']");
             		console.log(formObj);
             		
             		/* $(".sub113 .modifyCancel").on("click",function(){
             			self.location="/sproduct/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+"$searchType=${cri.searchType}&keyword=${cri.keyword}";
             		}); */
             		
             		$(".sub113 .modifyComplete").on("click",function(){
             			formObj.submit();
             		});
             	});
             </script>
        </div><!--sub_area-->
    </section><!--sub-->
<%@ include file="../include/footer.jsp"%>