//$(document).ready(function() {
//    $(".user-info").click(function(event) {
//    	if(event.target.id != "") {
//    		$.post( "/userinfo", { idandtype: event.target.id } );
//    	} else {
//    		$.post( "/userinfo", { idandtype: event.target.parentNode.id } );
//    	}
//    });
//});
//
//
//



$("#userdeleteform").submit(function() {
	if (confirm("Kullanıcıyı silmek istediğinize emin misiniz?")) {
	    return true;
	} else {
		return false;
	}
});


$("#usereditform").submit(function() {
	var selectedStatus = $( "#statusCode option:selected" ).val();
	var type = $( "#type option:selected" ).val();
	if(type == 2) {
		if(selectedStatus != 1 && selectedStatus != 199) {
			alert("Sadece aktif ve pasif arası statü değiştirilebilir!");
			return false;
		} else {
			return true;
		}
	} else {
		alert("Sadece usta tipinde güncelleme yapılabilir!");
		return false;
	}
    return false;
});