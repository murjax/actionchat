class AddRoomRefToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :room, foreign_key: true
  end
end
