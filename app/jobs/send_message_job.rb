class SendMessageJob < ApplicationJob
  queue_as :message

  def perform message
    ActionCable.server.broadcast "chat_rooms_#{message.chat_room.id}_channel",
      message: render_message(message),
      message_manager: render_message_manager(message)
    ActionCable.server.broadcast "chat_rooms_channel",
      chat_room: message.chat_room.to_json
  end

  private

  def render_message message
    ApplicationController.renderer.render partial: "messages/message",
      locals: {message: message}
  end

  def render_message_manager message
    ApplicationController.renderer.render partial: "manager/messages/message",
      locals: {message: message}
  end
end
