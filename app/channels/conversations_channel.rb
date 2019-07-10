class ConversationsChannel < ApplicationCable::Channel
  def subscribed
   
    stream_from(params[:room])
  end

  def receive(data)
    ActionCable.server.broadcast "#{params[:room]}", data

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
