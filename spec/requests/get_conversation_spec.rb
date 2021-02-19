require 'rails_helper'
describe "get all conversations", :type => :request do
    let!(:conversations) {FactoryBot.create_list(:random_conversations, 20)}
  before {get '/conversations'}
  it 'returns all conversations' do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end

  it "should have many messages" do 
    t= Conversation.reflect_on_association(:messages)
    expect(t.macro).to eq(:has_many)
  end
end