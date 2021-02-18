class ThoughtsController < ApplicationController
    def index
        thoughts = Thought.all 
        render json: thoughts
    end

    def create
        @thought = Thought.new(thoughts_params)
    
        if @thought.save
          render json: @thought, status: :created, location: @thought
        else
          render json: @thought.errors, status: :unprocessable_entity
        end
    end

    private

    def thoughts_params
        params.require(:thought).permit(:message_id, :text)
      end
end
