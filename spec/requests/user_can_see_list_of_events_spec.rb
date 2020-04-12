RSpec.describe 'GET /api/events', type: :request do
  describe 'GET /events' do
    let!(:event_1) { create(:event, title: "Celebrate easter with me!") }

    before do
      get '/api/events'
    end
    it 'should return a 200 response' do 
    end
  end
  describe 'GET, No events been found' do
    before do
      get '/api/events'
    end
    it 'No events been found' do
    end
  end
end