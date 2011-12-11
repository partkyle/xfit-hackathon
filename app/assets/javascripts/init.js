// base init

$.jQTouch({
    icon: 'jqtouch.png',
    statusBar: 'black-translucent',
    formSelector: false
});

$('a').live('click', function(e){
	e.preventDefault();
	window.location.href = $(this).attr('href');
})