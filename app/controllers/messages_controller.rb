class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if  message.save
      ActionCable.server.broadcast('chatroom_channel', {message: message_render(message)})

      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to message_path }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace('message_form', partial: 'messages/form', locals: { message: @message }) }
        format.html { render :new }
      end
    end

  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    ApplicationController.render(partial: 'messages/message', locals: { message: message })
  end
end
