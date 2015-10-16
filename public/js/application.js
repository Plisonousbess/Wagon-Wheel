$(document).ready(function() {

	$(".your_equipment").click(function(e) {
		e.preventDefault();
		$.ajax({
			url: $(this).attr("href"),
			method: 'get'
		}).done(function(response) {
			$(".your_equipment").hide();
			$(".list_space").append(response);
		})
	});

	$(".location_finder").click(function(e) {
		e.preventDefault();
		$.ajax({
			url: $(this).attr("href"),
			method: 'get'
		}).done(function(response) {
			$(".location").hide();
			$(".list_space").append(response)
		})
	})

  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
