$(document).ready(function(){
  if(typeof App.chat_room != 'undefined'){
    App.cable.subscriptions.remove(App.chat_room);
  }
  chat_room_id = $('#current_room_id').val();
  user_id = $('#current_user_id').val();
  App.chat_room = App.cable.subscriptions.create ({
    channel: 'ChatRoomsChannel',
    chat_room_id: chat_room_id
  },
  {
    connected: function(){
      console.log("connected room " + chat_room_id + " user " + user_id);
      $('.chat-body').animate({scrollTop: $('#list-messages').height()}, 'slow');
    },

    disconnected: function(){
      console.log("disconnected room " + chat_room_id + " user " + user_id);
    },

    received: function(data){
      $('#list-messages').append(data.message_manager);
      $('.chat-body').animate({scrollTop: $('#list-messages').height()}, 'slow');
    },

    send_message_manager: function(message){
      this.perform('send_message_manager', {content: message, chat_room_id: chat_room_id, user_id: user_id});
    }
  });

  $('#new_message').submit(function(event){
    event.preventDefault();
    if ($('.chat-field').val().length > 0 && typeof(App.chat_room) != 'undefined') {
      App.chat_room.send_message_manager($('.chat-field').val());
      $('.chat-field').val('');
    }
  })
})
