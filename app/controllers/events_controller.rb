class EventsController < ApplicationController
  def index
    collection_events = Event.all
    if collection_events.empty?
      render json: { message: 'No events has been found' }, status: 404
    else
      render json: collection_events, status: 200
   end
  end
end
