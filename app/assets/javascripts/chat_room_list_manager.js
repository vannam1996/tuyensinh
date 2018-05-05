$(document).ready(function(){
  if(typeof App.chat_room_list == 'undefined'){
    App.chat_room_list = App.cable.subscriptions.create ({
      channel: 'ChatRoomsChannel'
    },
    {
      connected: function(){
        console.log("connected roomlist");
        $('.chat-body').animate({scrollTop: $('#list-messages').height()}, 'slow');
      },

      disconnected: function(){
        console.log("disconnected room list");
      },

      received: function(data){
        json_room = $.parseJSON(data.chat_room);
        if(json_room.un_read != 0) {
          html = '<span class="badge pull-right backgr-red">' + json_room.un_read.toString() + '</span>'
          $('#span-unread-room-' + json_room.id).html(html);
        } else {
          $('#span-unread-room-' + json_room.id).remove();
        }
      },
    });
  }

  $('.js-link-room').on('click', function(){
    $('.js-link-room').removeClass('active-nav');
    $(this).addClass('active-nav');
  })
})
