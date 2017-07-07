class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stop_all_streams
    stream_for 1
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    current_user.leave_room
  end

  def listen(data)
    stop_all_streams
    stream_for data["room_id"]
  end
end
