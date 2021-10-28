class GroupsController < ApplicationController
    def index 
        groups = Group.all
        render json: groups,
            except: [:created_at, :updated_at]
    end

    def show
        group = Group.find_by(id: params[:id])
        if group
            render json: group,
                except: [:created_at, :updated_at]
        else
            render json: {message: "No group found"}
        end
    end

end
