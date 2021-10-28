class EventsController < ApplicationController

    def index 
        events = Event.all
        render json: events,
            except: [:created_at, :updated_at]
    end

    def show
        event = Event.find_by(id: params[:id])
        if event
            render json: event,
                except: [:created_at, :updated_at]
        else
            render json: {message: "No Event created"}
        end
    end

    def create
        event = Event.new(event_params)
        if event.save
            render json: event,
                except: [:created_at, :updated_at]
        else
            render json: {message: "Could not create event"}
        end
    end
end
