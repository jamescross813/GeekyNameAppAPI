class GroupsController < ApplicationController
    def index 
        groups = Group.all
        render json: groups,
            except: [:created_at, :updated_at],
            include: [:user_groups, :group_events, :friend_groups]
    end

    def show
        group = Group.find_by(id: params[:id])
        if group
            render json: group,
                except: [:created_at, :updated_at],
                include: [:user_groups, :group_events, :friend_groups]
        else
            render json: {message: "No group found"}
        end
    end

    def create
        group = Group.new(group_params)
        if group.save
            render json: group,
                except: [:created_at, :updated_at]
        else
            render json: {message: "Could not create group"}
        end
    end

    def update
        group = Group.find_by(id: params[:id])
        group.update(group_params)
        if group.save
            render json: group,
                except: [:created_at, :updated_at]
        else
            render json: {message: "Could update group"}
        end
    end

    def destroy
        group = Group.find_by(id: params[:id])
        group.destroy
    end

    private

    def group_params
        params.require(:group).permit(:group_name)
    end

end
