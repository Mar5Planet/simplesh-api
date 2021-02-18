class MessagesController < ApplicationController

    def index
        messages = Message.all 
        render json: messages
    end

    def create
        @message = Message.new(messages_params)
    
        if @message.save
          render json: @message, status: :created, location: @message
        else
          render json: @message.errors, status: :unprocessable_entity
        end
    end


    private

    def messages_params 
        params.require(:message).permit(:conversation_id, :text)
    end

end
