<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>AROCK</title>
    <!--css-->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link rel="stylesheet" href="/css/basic.css?ver2">
    <link rel="stylesheet" href="/css/main.css?ver2">
    <link rel="stylesheet" href="/css/sub.css?ver2">
    <!--script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!--<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>--><!--bxSliderWeb-->
    <!--<script src="jquery/jquery.bxslider.min.js"></script>--><!--bxSliderLocal-->
    <script>
    $(document).ready(function(){
      
    });
    
    $(document).ready(function(){
        /************** search메뉴 *************/
        $('.top_gnb .search_btn').click(function(){
            $('.header_wrap02').removeClass('hidden');

            $('.header_wrap02').addClass(' hidden');
            return false;
        });
    
        /************** tab메뉴 *************/
        $('.tab_menu a').click(function(){
            var tab_id = $(this).attr('data-tab');

            $('.tab_menu a').removeClass('on_tab');
            $('.main_tab ul').removeClass('tab_area');

            $(this).addClass('on_tab');
            $("#"+tab_id).addClass('tab_area');
            return false;
        });
    });
    </script>
</head>
<body>
    <header id="header">
        <div class="header_wrap01">
            <div class="top_header">
                <a href="index.html" class="logo"><h1><img src="http://placehold.it/200x100" alt="logo"></h1></a>
                <ul class="top_gnb">
                    <li><a href="#">회원가입</a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">로그아웃</a></li>
                    <li><a href="#">검색</a></li>
                    <li class="on"><a href="sub140.html">마이페이지</a></li>
                </ul><!--top_gnb-->
            </div><!--top_header-->
            <ul class="top_gnb_step2">
                    <li><a href="sub140.html">MY Home</a></li>
                    <li><a href="sub141.html">MY 찜</a></li>
                    <li><a href="#">장바구니</a></li>
                    <li><a href="#">주문확인</a></li>
                    <li><a href="#">Q&amp;A | 리뷰</a></li>
                    <li><a href="#">쿠폰 | 포인트</a></li>
                    <li><a href="#">회원정보</a></li>
            </ul>
        </div><!--header_wrap01-->
        <div class="header_wrap02">
            <div class="search_wrap">
                <div class="search_area">
                    <div class="search_bar">
                        <form action="">
                            <select name="" id="">
                                <option value="">한식</option>
                                <option value="">중식</option>
                                <option value="">일식</option>
                                <option value="">분식</option>
                                <option value="">다이어트식</option>
                            </select>
                            <input type="text">
                            <button class="search_btn"></button>
                            <button class="voice_search_btn"></button>
                        </form>
                    </div><!--search_bar-->
                    <div class="hidden">검색어 자동완성</div>
                    <div class="recently_search">
                        <p>최근 검색어 | <span>한식</span><span>한식</span></p>
                    </div>
                </div><!--search_area-->
                <a href="#"></a>
            </div><!--search_wrap-->
        </div><!--header_wrap02-->
        <div class="header_wrap03">
            <nav id="main_gnb">
                <h2 class="hidden">메인메뉴</h2>
                <ul class="gnb_step1">
                    <li class="on"><a href="register">상품</a>
                        <ul class="gnb_step2">
                            <li><a href="register">상품등록</a></li>
                        </ul>
                    </li>
                    <li><a href="#">중식</a>
                        <ul class="gnb_step2">
                            <li><a href="#">중식 전체</a></li>
                            <li><a href="#">SMART 추천메뉴</a></li>
                        </ul>
                    </li>
                    <li><a href="#">일식</a>
                        <ul class="gnb_step2">
                            <li><a href="#">일식 전체</a></li>
                            <li><a href="#">SMART 추천메뉴</a></li>
                        </ul>
                    </li>
                    <li><a href="#">분식</a>
                        <ul class="gnb_step2">
                            <li><a href="#">분식 전체</a></li>
                            <li><a href="#">SMART 추천메뉴</a></li>
                        </ul>
                    </li>
                    <li><a href="#">다이어트식</a>
                        <ul class="gnb_step2">
                            <li><a href="#">다이어트식 전체</a></li>
                            <li><a href="#">SMART 추천메뉴</a></li>
                        </ul>
                    </li>
                    <li class="on"><a href="#">이벤트</a>
                        <ul class="gnb_step2">
                            <li><a href="#">특가상품</a></li>
                            <li><a href="#">이벤트</a></li>
                        </ul>
                    </li>
                    <li><a href="#">공지사항</a>
                        <ul class="gnb_step2 hidden">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">사이트 불편사항</a></li>
                            <li><a href="#">위험업체 신고</a></li>
                            <li><a href="#">사이트 이용 가이드</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div><!--header_wrap03-->
    </header><!--header-->