$(document).on('turbolinks:load', function() {
  $('#message_text').keydown(function(event) {
    if (event.which == 13) {
      $('.message-form').submit();
      return false;
    }
  });
  $('#clear-btn').on('click', function() {
    $('.message-list').empty();
  });
});

