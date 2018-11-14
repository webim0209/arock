/********************main_visual***********************/
var main_slide = document.getElementById("main_visual");
var x = main_slide.getElementsByTagName("li");
var dots = document.getElementsByClassName("main_btn");
var slideMax = x.length -1;
var curSlideNo = 0;
var nextSlideNo = null;
var fadeStart = false;
var curSlideLevel = 1;
var nextSlideLevel = 0;

for(i=0; i<=slideMax; i++){
    if(i == curSlideNo){
        changeOpacity(x[i],1);
        dots[i].className += " on_btn";
    } 
    else changeOpacity(x[i],0);
}

function btnDivs(n){
    showDivs(n);
}

function showDivs(n){
    if(fadeStart === true) return;
    if(n == "prev"){
        nextSlideNo = curSlideNo -1;
        if(nextSlideNo < 0) nextSlideNo = slideMax;
    }else if(n == "next"){
        nextSlideNo = curSlideNo +1;
        if(nextSlideNo > slideMax) nextSlideNo=0;
    }else{
        fadeStart = false;
        return;
    }
    fadeStart = true;
    changeOpacity(x[curSlideNo],curSlideLevel);
    changeOpacity(x[nextSlideNo], nextSlideLevel);
    fadeInOutAction(n);
}

function fadeInOutAction(n){
    curSlideLevel = curSlideLevel - 0.1;
    nextSlideLevel = nextSlideLevel +0.1;
    if(curSlideLevel <= 0){
        changeOpacity(x[curSlideNo],0);
        changeOpacity(x[nextSlideNo],1);
        if(n == "prev"){
            curSlideNo = curSlideNo -1;
            if(curSlideNo < 0) curSlideNo = slideMax;
        }else{
            curSlideNo = curSlideNo +1;
            if(curSlideNo > slideMax) curSlideNo = 0;
        }
        curSlideLevel = 1;
        nextSlideLevel = 0;
        for(i=0; i<dots.length; i++){
            if(curSlideNo == i){
                dots[i].className += " on_btn";
            }else{
                dots[i].className = dots[i].className.replace(" on_btn","");
            }
        }

        fadeStart = false;
        return;
    }
    changeOpacity(x[curSlideNo],curSlideLevel);
    changeOpacity(x[nextSlideNo],nextSlideLevel);
    setTimeout(function(){
        fadeInOutAction(n);
    },50);
}

function changeOpacity(obj, level){
    obj.style.opacity = level;
    obj.style.MozOpacity = level;
    obj.style.khtmlOpacity = level;
    obj.style.MsFilter = "'progrid:DXImageTransform.Microsoft.Alpha(Opacity="+(level*100)+")'";
    obj.style.filter = "alpha(opacity="+(level*100)+");";
}

//5초 마다 fade In/Out 슬라이드 반복
var autoslider= setInterval(function(){showDivs('next');},5000);

/************** main_tab메뉴 *************/
$('.tab_menu a').click(function(){
    var tab_id = $(this).attr('data-tab');

    $('.tab_menu a').removeClass('on_tab');
    $('.main_tab ul').removeClass('tab_area');

    $(this).addClass('on_tab');
    $("#"+tab_id).addClass('tab_area');
    return false;
});