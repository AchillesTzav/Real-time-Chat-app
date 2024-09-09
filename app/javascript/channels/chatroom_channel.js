import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data.message);

    const messageContainer = document.getElementById('message-container');
    if (messageContainer) {
      // Insert the HTML content as actual HTML, not as text
      messageContainer.insertAdjacentHTML('beforeend', data.message);
    }
  }
});
