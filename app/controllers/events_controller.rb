class EventsController < ApplicationController

    def index 
        events = Event.all
        render json: events,
            except: [:created_at, :updated_at]
    end
end
