$(function(){
	$(".logout-btn").click(function() {
		$.ajax({
			url: "include/logout.php"
		}).done(function() {
			toastr.info("Cerrando sesion");
			setTimeout(function () {location.reload();}, 1000); 
		});
	});

	function fxAnim(x,e) {
		e.addClass(x + ' animated').one('webkitAnimationEnd oAnimationEnd', function(){
			$(this).removeClass(x + ' animated');
		});
	}

	$('.q-btn .btn').click(function(event) {

		var status = 0;

		var result = {
			answer : $(this).data('val'),
			qid : $('.active').data('val'),
			tid : $('.q-cnt').data('test'),
			uid : $('.q-cnt').data('user'),
			sid : $('.q-cnt').data('token')
		}

		$.post('include/saveanswer.php', result, function(data, textStatus, xhr) {
			if(data.status=='1'){
				toastr.error(data.msj);
			}
		});
		
		
		var eLi = $(this).closest('li');
		var lastLi = eLi.next();
		eLi.removeClass().addClass('answered '+ $(this).data('val'));
		$('.q-list li').removeClass('active');
		lastLi.addClass('active');
		lastLi.find('.q-btn').addClass('animated fadeInDown');
		if(eLi.index() < $('.q-list li').length - 1){
			$('html, body').animate({
				scrollTop: eLi.offset().top - 50
			}, 600);
		}else{
			$('html, body').animate({
				scrollTop: $('.q-footer').offset().top - 150
			}, 600);
			$('.q-footer').addClass('active animated tada');
			// FINALIZADO
		}
	});

	$('#hide-ins').click(function(event) {
		$('.widget').hide();
	});

	$(window).scroll(function(){
		if($(window).scrollTop() > $('.widget').offset().top - 60){
			$('.instructions').css('position','fixed').css('top','60px').addClass('col-md-3');
		} else {
			$('.instructions').css('position','static').removeClass('col-md-3');
		}
	});
});
