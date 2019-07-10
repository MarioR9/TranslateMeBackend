class ConversationsController < ApplicationController
    def index
        conversations = Conversation.all
        render json: conversations
      end
  
      
      private
      
      def conversation_params
        params.require(:conversation).permit(:title)
      end
end
