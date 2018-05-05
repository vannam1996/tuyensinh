$(document).ready(function(){
  $(document).on('change', '#register_school', function(){
    ajax_request();
  });

  $(document).on('change', '#register_major_id', function(){
    ajax_request();
  });
})

function ajax_request() {
  var school_id = $('#register_school').val();
  var major_id = $('#register_major_id').val();
  data = {school_id: school_id, major_id: major_id}
  $.ajax({
    url: '/registers',
    data: data,
    type: 'GET',
    success: function(response){
      $('#modal-new-register').html(response);
    }
  });
}
