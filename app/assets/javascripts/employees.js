$(document).on('ready turbolinks:load', function() {
    $("#city").change(function(){
        $.ajax({
          url: "/locations/index", 
          data: {id: this.value},
          dataType: 'script'
        })
      });
    
    
    })
