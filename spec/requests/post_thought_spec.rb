require 'rails_helper'
describe "posts a thought", type: 'request' do
    describe "POST /thoughts" do
      context "with valid parameters" do
        let(:valid_params) do
          {
             thought: {
                message_id: Message.create('conversation_id': Conversation.create('title': 'sample').id, 'text': 'sample').id,
                text: "fake text"
            }
          }
        end
  
        it "creates a thought with the correct attributes" do
           post "/thoughts", params: valid_params
           expect(Thought.last).to have_attributes valid_params[:thought]
        end
      end
end
end
