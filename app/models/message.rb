class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  after_create :send_message

  def send_message
    room = self.chat_room
    if self.is_supporter?
      room.update_attribute :un_read, 0
    else
      un_read = room.un_read + 1
      room.update_attribute :un_read, un_read
    end
    SendMessageJob.perform_now self
  end
end
