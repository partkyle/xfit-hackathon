// base init

$.jQTouch({
    icon: 'jqtouch.png',
    statusBar: 'black-translucent'
});

$('a').live('click', function(e){
	e.preventDefault();
	window.location.href = $(this).attr('href');
})

$('#submit').live('click', function(e){
	$('form').unbind().submit();
});