$( document ).ready(function() {

    var categoryRender = function(e) {
      e.preventDefault;
      var categoryId = $(this).attr("data-id")
      $.ajax({
        url:"/categories/" + categoryId,
        type: "GET"
      }).done(function(result){
        console.log("FUCK YOU")
        $("#content").empty().append(result)
      })
    }

    $(".category").on("click", categoryRender)
});
