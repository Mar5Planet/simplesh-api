require 'rails_helper'
describe "get all messages", :type => :request do
    let!(:messages) {FactoryBot.create_list(:random_messages, 20)}
  before {get '/messages'}
  it 'returns all messages' do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end

    it "should have many thoughts" do 
        t= Message.reflect_on_association(:thoughts)
        expect(t.macro).to eq(:has_many)
    end
    it "should belong to conversation" do 
        t= Message.reflect_on_association(:conversation)
        expect(t.macro).to eq(:belongs_to)
    end
end