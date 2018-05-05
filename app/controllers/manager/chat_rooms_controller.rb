class Manager::ChatRoomsController < Manager::TeachersController
  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_room = ChatRoom.find_by id: params[:id]
    @messages = @chat_room.messages
  end
end
