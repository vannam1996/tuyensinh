class CreateChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.references :user
      t.integer :un_read, default: 0

      t.timestamps
    end
  end
end
