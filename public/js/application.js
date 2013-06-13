$(document).ready(function(){
  $('#get_color').on("click", function(event) {
    $.getJSON('/color', function(data) {
        $('#color_me li:nth-child('+data.cell+')').css("background-color", data.color);
    })
  })
});
