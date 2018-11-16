<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>
    <section id="main_section01">
        <div class="main_section01_wrap">
            <ul id="main_visual"class="main_visual">
                <li class="main_slide1 main_slide"><a href="#">이미지1</a></li>
                <li class="main_slide2 main_slide"><a href="#">이미지2</a></li>
                <li class="main_slide3 main_slide"><a href="#">이미지3</a></li>
                <li class="main_slide4 main_slide"><a href="#">이미지4</a></li>
            </ul>
            <ul class="main_visual_btn">
                <li><a href="javascript:curruntDiv(1)" class="main_btn" title="이미지1" ></a></li>
                <li><a href="javascript:curruntDiv(2)" class="main_btn" title="이미지2" ></a></li>
                <li><a href="javascript:curruntDiv(3)" class="main_btn" title="이미지3" ></a></li>
                <li><a href="javascript:curruntDiv(4)" class="main_btn" title="이미지4" ></a></li>
            </ul>
            <button type="button" class="main_visual_prev" onclick="btnDivs('prev')">이전</button>
            <button type="button"  class="main_visual_next" onclick="btnDivs('next')">다음</button>
        </div>
    </section><!--main_section01-->
    <section id="main_section02">
        <h3>이 달의 추천 메뉴</h3>
        <ul id="main_visual2">
            <li><a href="sub112.html">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴1</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printinggggggggggggggg</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴2</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴3</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴4</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴5</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴6</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴7</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
            <li><a href="#">
                <img src="http://placehold.it/150x150" alt="">
                <p class="menu_01">추천메뉴8</p>
                <p class="menu_02">Lorem Ipsum is 
simply dummy text of the printing</p>
            </a></li>
        </ul>
        <button type="button" class="main_menu_prev" onclick="plusSlides(-2)">이전</button>
        <button type="button" class="main_menu_next" onclick="plusSlides(2)">다음</button>
    </section><!--main_section02-->
    <section id="main_section03">
            <div class="tab_menu">
                <a href="#" class="on_tab" data-tab="tab-1">INSTAGRAM</a>
                <a href="#" data-tab="tab-2">FACEBOOK</a>
                <a href="#" data-tab="tab-3">NAVER BLOG</a>
            </div>
            <div class="main_tab">
                <ul id="tab-1" class="tab_area instagram_area">
                    <li><a href="#"><p></p></a></li>
                    <li><a href="#"><p></p></a></li>
                    <li><a href="#"><p></p></a></li>
                    <li><a href="#"><p></p></a></li>
                    <li><a href="#"><p></p></a></li>
                    <li><a href="#"><p></p></a></li>
                </ul>
                <ul id="tab-2" class="facebook_area">
                    <li><a href="#">
                        <p class="facebook_name">facebook</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="facebook_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                    <li><a href="#">
                       <p class="facebook_name">facebook</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="facebook_note">Lorem Ipsum is 
simply dummy text of the printing</p>
                    </a></li>
                    <li><a href="#">
                       <p class="facebook_name">facebook</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="facebook_note">Lorem Ipsum is 
simply dummy text of the printing</p>
                    </a></li>
                    <li><a href="#">
                       <p class="facebook_name">facebook</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="facebook_note">Lorem Ipsum is 
simply dummy text of the printing</p>
                    </a></li>
                    <li><a href="#">
                       <p class="facebook_name">facebook</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="facebook_note">Lorem Ipsum is 
simply dummy text of the printing</p>
                    </a></li>
                </ul><!--facebook_area-->
                <ul id="tab-3" class="naver_area hidden">
                    <li><a href="#">
                        <p class="naver_date">2018.10.01</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="naver_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                    <li><a href="#">
                        <p class="naver_date">2018.10.01</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="naver_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                    <li><a href="#">
                        <p class="naver_date">2018.10.01</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="naver_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                    <li><a href="#">
                        <p class="naver_date">2018.10.01</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="naver_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                    <li><a href="#">
                        <p class="naver_date">2018.10.01</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="naver_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                    <li><a href="#">
                        <p class="naver_date">2018.10.01</p>
                        <img src="http://placehold.it/150x150" alt="">
                        <p class="naver_note">Lorem Ipsum is 
simply dummy text of the printingbbbbbbbbb</p>
                    </a></li>
                </ul>
            </div><!--main_tab-->
    </section><!--main_section03-->
    
    <section id="main_section04">
        <div class="notice">
           <div>
               <h3>공지사항</h3>
               <a href="#">more</a> 
           </div>
           <ul>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
               <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
          <li><a href="#"><p><span></span>Lorem Ipsum is 
simply dummy text of the printing</p></a></li>
           </ul>
        </div><!--notice-->
        <div class="main_sec04_right">
            <div class="mainGuide">
                <div class="arockGuide_user">
                   <a href="#">어락 이용안내 고객편</a> 
                </div>
                <div class="arockGuide_seller">
                   <a href="#">어락 이용안내 판매자편</a> 
                </div>
            </div>
            <div class="cs">
                <a href="#">고객센터</a>
            </div>
        </div>
    </section><!--main_section04-->
    <script type="text/javascript" src="/js/main_java.js"></script>
<%@include file="include/footer.jsp" %>
