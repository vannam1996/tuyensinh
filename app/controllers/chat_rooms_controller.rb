class ChatRoomsController < ApplicationController
  before_action :load_room, only: :create

  def create
    return if @room
    @room = ChatRoom.new user_id: current_user.id
    @room.save
  end

  private
  def load_room
    @room = ChatRoom.find_by user_id: current_user.id
  end
end
