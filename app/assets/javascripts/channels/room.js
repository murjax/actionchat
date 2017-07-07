App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    $(".message-list").append(data.message);
    // Called when there's incoming data on the websocket for this channel
    var height = document.getElementById("list-of-messages").scrollHeight;
    $(".message-list").scrollTop(height)
    $(".user-list").hide().fadeIn('fast');
  },

  listen_to_messages: function() {
    return this.perform('listen', {
      room_id: $("[data-room-id]").data("room-id")
    });
  }
});

$(document).on('turbolinks:load', function() {
  App.room.listen_to_messages();
  var height = document.getElementById("list-of-messages").scrollHeight;
    $(".message-list").scrollTop(height)
});


