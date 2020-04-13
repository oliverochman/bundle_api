RSpec.describe 'POST /events', type: :request do
  describe 'POST /events' do

    before do
      post '/events',
        params: {
          event: {
            title: "I Just Created This",
            description: "I dont want anyone to join this event"
          }
        }
    end
    
    it 'should return a 200 response' do 
      expect(response.status).to eq 200
    end
  end
  
  describe 'POST, when there are no events' do
    before do
      get '/events'
    end

    it 'has no events' do
      expect(response.status).to eq 404
    end

    it 'displays error message' do
      expect(JSON.parse(response.body)['message']).to eq 'No events present'
    end
  end
end
