<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../include/sellerHeader.jsp"%>
	<section id="sub" class="sub113">
        <div class="sub_area">
        	<form role="form" method="post">	
        		<input type="hidden" name="searchType" value="${cri.searchType}">
        		<input type="hidden" name="keyword" value="${cri.keyword}">	
        		<input type="hidden" name="productNo" value="${productVO.productNo}">	
	           <div class="sub_form_list">
	               <p>* 필수입력사항입니다.</p>
		               <ul>
		                   <li class="half">
		                       <label for="productName"><span>*</span>상품명</label>
		                       <input type="text" name="productName">
		                   </li><li class="half" style="border-top:0;">
		                   <label for="productCategory"><span>*</span>카테고리</label>
		                   		<select name="productCategory">
		                   			<option value="한식">한식</option>
		                   			<option value="중식">중식</option>
		                   			<option value="일식">일식</option>
		                   			<option value="분식">분식</option>
		                   			<option value="다이어트식">다이어트식</option>
		                   		</select>
		                   </li>
		                   <li class="half">
		                       <label for="productPrice"><span>*</span>상품 가격</label>
		                       <input type="text" name="productPrice">
		                   </li><li class="half">
		                       <label for="productSalePrice">상품 할인가격</label>
		                       <input type="text" name="productSalePrice">
		                   </li>
		                    <li>
		                       <label for="productSummary">상품 요약정보</label>
		                       <textarea name="productSummary"></textarea>
		                   </li>
		                   <li>
		                       <label for="productDetail">상품 상세정보</label>
		                       <textarea name="productDetail"></textarea>
		                   </li>
		               </ul>
	           </div><!-- sub_form_list -->
	            <ul class="btn_area right">
	               <li><button type="submit">등록</button></li>
	            </ul>
             </form>
        </div><!--sub_area-->
    </section><!--sub-->
<%@ include file="../include/footer.jsp"%>