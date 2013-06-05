$(function(){
  
	$("#images").slidesjs({
		navigation: {
		 active: false,
		   effect: "fade"
		},
		pagination: {
		active: false,
		},
		effect: {
		  fade: {
		    speed: 400
		  }
		}
	});


	$("section li").hover(
	  function () {
	    $(this).find('div').removeClass("overlay");
	  },
	  function () {
	    $(this).find('div').addClass("overlay");
	  }
	);



	$(".modal_call").click(function() {
 		$('#top_overlay').show();
	});

	$("#top_overlay").click(function() {
 		 slideAction(3);
	});
	$("aside").click(function() {
 		 slideAction(3);
	});

	
	//Function will remove modal and overlay on ESC key press
	$(document).keyup(function(e){
		if(e.which == 27)
		{
		  slideAction(3);
		}
	});

}); 
// END READY



function slideAction(i){
	if (i == 1){
		$(".slidesjs-next").trigger("click");
	}
	else if( i == 2){
		$(".slidesjs-previous").trigger("click"); 
	}
	else if( i == 3){
		$('#modal').html('');
		$('#top_overlay').hide();
	}
	else{
		console.log( "slideAction return invalid param." );
	}
}

