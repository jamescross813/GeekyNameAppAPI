class EventsController < ApplicationController

    def index 
        events = Event.all
        render json: events,
            except: [:created_at, :updated_at],
            include: [:user_events, :group_events]
    end

    def show
        event = Event.find_by(id: params[:id])
        if event
            render json: event,
                except: [:created_at, :updated_at],
                include: [:user_events, :group_events]
        else
            render json: {message: "No Event added"}
        end
    end

    def create
        
        event = Event.new(event_params)
        if event.save
            event_id= event.id
                userEvent = UserEvent.create(user_id:params[:event][:user_id], event_id: event.id)
            groupIteration(event_id)
            render json: event,
                except: [:created_at, :updated_at],
                include: [:user_events, :group_events]
        else
            render json: {message: "Could not create event"}
        end
    end

    def update
        event = Event.find_by(id: params[:id])
        event.update(event_params)
        if event.save
            render json: event,
                except: [:created_at, :updated_at]
        else
            render json: {message: "Could not update event"}
        end
    end

    def destroy
        event = Event.find_by(id: params[:id])
        event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:event_name, :description, :est_time, :game_type)
    end

    def groupIteration(event)
        params[:event][:group].each do |group|
            group = Group.find_by(group_name: group)
            GroupEvent.create(group_id: group.id, event_id: event)
        end
    end
end
