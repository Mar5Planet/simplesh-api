require 'rails_helper'
describe "posts a message", type: 'request' do
    describe "POST /messages" do
      context "with valid parameters" do
        let(:valid_params) do
          {
             message: {
                conversation_id: Conversation.create('title': 'sample').id,
                text: "fake text"
            }
          }
        end
  
        it "creates a message with the correct attributes" do
           post "/messages", params: valid_params
           expect(Message.last).to have_attributes valid_params[:message]
        end
      end
end
end
