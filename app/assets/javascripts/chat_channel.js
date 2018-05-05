$(document).ready(function(){
  chat_room_id = $('#current_room_id').val();
  user_id = $('#current_user_id').val();
  App.chat_room = App.cable.subscriptions.create ({
    channel: 'ChatRoomsChannel',
    chat_room_id: chat_room_id
  },
  {
    connected: function(){
      console.log("connected");
      $('.chat-body').animate({scrollTop: $('#list-messages').height()}, 'slow');
    },

    disconnected: function(){
      console.log("disconnected");
    },

    received: function(data){
      $('#list-messages').append(data.message);
      $('.chat-body').animate({scrollTop: $('#list-messages').height()}, 'slow');
      $('.js-chat-active').addClass('active');
    },

    send_message: function(message){
      this.perform('send_message', {content: message, chat_room_id: chat_room_id, user_id: user_id});
    }
  });

  $('#new_message').submit(function(event){
    event.preventDefault();
    if ($('.chat-field').val().length > 0 && typeof(App.chat_room) != 'undefined') {
      App.chat_room.send_message($('.chat-field').val());
      $('.chat-field').val('');
    }
  })

  $('.js-chat-toggle').click(function(){
    $('.js-chat-active').toggleClass('active');
    var current_scroll = $(".chat-body").scrollTop();
    if(current_scroll == 0 && current_scroll < $('#list-messages').height()){
      $(".chat-body").scrollTop($('#list-messages').height());
    }
  });
})
