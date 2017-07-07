class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  def change_room(room)
    update_attributes(room_id: room.id)
  end

  def leave_room
    update_attributes(room_id: nil)
  end
end
