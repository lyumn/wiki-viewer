$(document).on('ready page:load', function (){ // http://stackoverflow.com/questions/18770517/rails-4-how-to-use-document-ready-with-turbo-links
  
	readCookie();
  
  $("#white").click(function(){
  $.cookie('theme', '#FFFFFF', { path: '/' });
    $("body").css({"background-color":"#FFFFFF"});
  });
  
  $("#green").click(function(){
	setTheme("green");
    
  });
  
  $("#brown").click(function(){
  $.cookie('theme', 'brown', { path: '/' });
    $("body").css({"background-color":"brown"});
  });
  
   $("#night").click(function(){
	setTheme("night");
   
  });
  
  $("#plus").click(function(){

    var fontSize = parseInt($("#source").css("font-size"));
	fontSize = fontSize + 2 + "px";
	$("#source").css({'font-size':fontSize}); 
	$.cookie('fontsize', fontSize, { path: '/' });
  }); 
  
  $("#minus").click(function(){
  
    var fontSize = parseInt($("#source").css("font-size"));
	fontSize = fontSize - 2 + "px";
	$("#source").css({'font-size':fontSize});
	$.cookie('fontsize', fontSize, { path: '/' });
  });
  
});

function setTheme(opt){

switch(opt)
{
case "green":
  $.cookie('theme', '#C7EDCC', { path: '/' });
  $.cookie('fontcolor', '#333333', { path: '/' });
   readCookie();
  break;
case "night":
  $.cookie('theme', '#333333', { path: '/' });
   $.cookie('fontcolor', '#EEEEEE', { path: '/' });
   readCookie();
  break;
 
}

}

function readCookie(){
  var theme = $.cookie('theme');
  var fontsize = $.cookie('fontsize');
  var fontcolor = $.cookie('fontcolor');
  
  $("body").css({"background-color":theme});
  $("tbody").css({"background-color":theme});
  $("#source").css({'font-size':fontsize});
  $("#source").css({'color':fontcolor}); 
}