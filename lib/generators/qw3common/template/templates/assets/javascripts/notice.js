$(function(){
	noticeDiv = $('#notice');
	if( noticeDiv == null )
		return false;
	
	setTimeout( fade, 2000);
});

function fade() {
	noticeDiv.fadeOut('slow');
}
