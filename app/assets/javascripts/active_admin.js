//= require active_admin/base
//= require cocoon


$(function(){

  $(".clear_filters_btn").click(function(){
    window.location.search = "";
    return false;
  });

  sortingForAdmin("projects");
});


function serializeArtworks(){
  var artworkIds = $.makeArray(
    $("#projects .homeslide").map(function(){
      return $(this).data("id");
			
    })
  );
	console.log(artworkIds);
  return {ids: artworkIds};
};


function sortingForAdmin(name){
 	$("#projects tbody").sortable({
				update: function() {
					$.ajax({
								  url: name + "/sort",
						      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
									type: 'post',
						      data: serializeArtworks(),
						      complete: function(){
						        $(".paginated_collection").effect("highlight");
										//console.log(artworkIds);
						      }
								 });
					}
		});
	$("#projects tbody").disableSelection();
};

