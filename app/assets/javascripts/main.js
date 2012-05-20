$(document).ready(function(){
	$(window).load(function(){
		fixLayout();
	});
	$(window).resize(function(){
		fixLayout();
	});


	//Setup Carousel
	$('.carousel').carousel();
	
	//Setup Tooltips
	
	$(".social a[rel='tooltip']").parent().tooltip({
		placement: 'top',
		animation: 'true',
		trigger: 'hover',
		title: function(){return $(this).text();},
	});

	//Setup Smooth Scrolling
	$('a.smooth').on("click",function(){
		var _target = $(this).attr('href'),
			_targetElement = $(_target).offset().top;
		//$("html:not(:animated),body:not(:animated)").stop();
		$("html:not(:animated),body:not(:animated)").animate({
			scrollTop: _targetElement - 50
		},1100);
		return false;
	});

	//Modal
	
	

});


//Fix Layout
function fixLayout(){
	//Logo to Center
	var wcen =parseInt($('.mainlogo img')[0].offsetWidth/2) +'px';
	console.log(wcen);
	$('.mainlogo img').css("margin-left","-"+wcen);
//	$('.brand.main').css({
//		"left":getDocWidth()/2 - $('.brand')[0].offsetWidth/2+'px',
//		"position":"absolute"
//	});
	//$('.container-fluid.pad58').css('height',getDocHeight()-58+'px');
}








//CROSS_BROWSER DOC HEIGHT .. JAMES PADOLSEY
function getDocHeight() {
    var D = document;
    return Math.max(
        Math.max(D.body.scrollHeight, D.documentElement.scrollHeight),
        Math.max(D.body.offsetHeight, D.documentElement.offsetHeight),
        Math.max(D.body.clientHeight, D.documentElement.clientHeight)
    );
}
function getDocWidth() {
    var D = document;
    return Math.max(
        Math.max(D.body.scrollWidth, D.documentElement.scrollWidth),
        Math.max(D.body.offsetWidth, D.documentElement.offsetWidth),
        Math.max(D.body.clientWidth, D.documentElement.clientWidth)
    );
}