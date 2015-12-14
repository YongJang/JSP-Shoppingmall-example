$(document).ready(function() {
	$('.color-pallet').click(function(e) {
		var color = $(this).attr('title');
		$('#scheme-source').attr('href', '../assets/bootstrap-3.3.5-dist/css/schemes/' + color + '.css');
		e.preventDefault();
	});
	
	$('.panel-ticker').click(function() {
		$('#section-colors').toggleClass('panel-close', 'panel-open', 1000);
		$('#section-colors').toggleClass('panel-open', 'panel-close', 1000);
	})
	return false;
});