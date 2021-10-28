class GroupsController < ApplicationController
    def index 
        groups = Group.all
        render json: groups,
            except: [:created_at, :updated_at]
    end
    
end
