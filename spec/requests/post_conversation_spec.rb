require 'rails_helper'
describe "posts a conversation", type: 'request' do
    describe "POST /conversations" do
      context "with valid parameters" do
        let(:valid_params) do
          {
             conversation: {
                title: "fake title"
            }
          }
        end
  
        it "creates a conversation with the correct attributes" do
           post "/conversations", params: valid_params
           expect(Conversation.last).to have_attributes valid_params[:conversation]
        end
      end
end
end
