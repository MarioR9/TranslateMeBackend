class MessagesController < ApplicationController
    def create
        message = Message.create(message_params)
        conversation = Conversation.find(message_params[:conversation_id])
    
          ConversationChannel.broadcast_to(conversation.title, message)
          head :ok
        end
      end
      
      private
      
      def message_params
        params.require(:message).permit(:text, :conversation_id)
      end
end
