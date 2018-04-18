$(function(){
    var client = new Faye.Client('http://127.0.0.1:3006/faye');
    client.subscribe("/notify/aaa",function(data){
        alert(data.content);
    });
});