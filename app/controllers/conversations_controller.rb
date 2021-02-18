class ConversationsController < ApplicationController
    def index
        conversations = Conversation.all 
        render json: conversations
    end

    def create
        @conversation = Conversation.new(conversations_params)
    
        if @conversation.save
          render json: @conversation, status: :created, location: @conversation
        else
          render json: @conversation.errors, status: :unprocessable_entity
        end
    end



    private 

    def conversations_params
        params.require(:conversation).permit(:title)
    end
end
