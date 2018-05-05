class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :chat_room
      t.references :user
      t.boolean :is_supporter, default: 0

      t.timestamps
    end
  end
end
