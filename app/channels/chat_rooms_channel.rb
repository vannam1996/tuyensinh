class ChatRoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_rooms_#{params['chat_room_id']}_channel"
    stream_from "chat_rooms_channel"
  end

  def unsubscribed
  end

  def send_message data
    Message.create!(content: data["content"], chat_room_id: data["chat_room_id"], user_id: data["user_id"])
  end

  def send_message_manager data
    Message.create!(content: data["content"], chat_room_id: data["chat_room_id"], user_id: data["user_id"], is_supporter: true)
  end
end
