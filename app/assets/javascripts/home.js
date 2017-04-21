var homeApp = (function(){
    var getFizzBuzz = function(){
        for(var x = 1; x <= 100; x++){
            $.ajax({
                url : "/fizz_buzz_service/new",
                type : "get",
                data: {
                    number: x
                },
                async: false
            }).done(function(data) {
                $('#content').append("<p>" + data.num + ":" + data.text + "</p>");
            }).fail(function(jqXHR, status, error){
                console.log('Yikes! FizzBuzz service failed with error: ' + error);
            });
        }
    };

    var initialize = function(){
        getFizzBuzz();
    };

    return {
        initialize: initialize
    }
})(this);