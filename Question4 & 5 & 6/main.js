var BASE_URL = "http://localhost:3000/";
$(document).ready(function(){
  $.ajax({
    method: "GET",
    url: BASE_URL + "companies.json",
    error: function(){
      alert("Cant load product");
    },
    success: function (data){
      var template = $('#company-template').html();
      Mustache.parse(template);
      for(var i = 0; i <data.length; i++){
        var company = data[i];

        var rendered = Mustache.render(template, company);
        $("#companies").prepend(rendered);

      }
      $(".company").hide().each(function(i) {
        $(this).delay(i*50).fadeIn(1000);
      });
    }
  });

});
