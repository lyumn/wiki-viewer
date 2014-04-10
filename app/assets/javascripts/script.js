$(document).on('ready page:load', function (){ // http://stackoverflow.com/questions/18770517/rails-4-how-to-use-document-ready-with-turbo-links
  $("#white").click(function(){
    $("body").css({"background-color":"#FFFFFF"});
  });
  $("#green").click(function(){
    $("body").css({"background-color":"#C7EDCC"});
  });
  $("#brown").click(function(){
    $("body").css({"background-color":"brown"});
  });
   $("#night").click(function(){
    $("body").css({"background-color":"black"});
  });
});