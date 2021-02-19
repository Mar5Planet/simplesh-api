require 'rails_helper'
describe "get all thoughts", :type => :request do
    let!(:thoughts) {FactoryBot.create_list(:random_thoughts, 20)}
  before {get '/thoughts'}
  it 'returns all thoughts' do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end

    it "should belong to message" do 
        t= Thought.reflect_on_association(:message)
        expect(t.macro).to eq(:belongs_to)
    end
end