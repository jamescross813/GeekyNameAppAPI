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
        group = Group.new(group_name: params[:group][:group_name])
        if group.save
            group_id = group.id
                user_group = UserGroup.create(user_id: params[:group][:user_id], group_id: group.id)
            friendIteration(group_id)
            render json: group,
                except: [:created_at, :updated_at],
                include: [:user_groups, :group_events, :friend_groups]
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
            render json: {message: "Could not update group"}
        end
    end

    def destroy
        group = Group.find_by(id: params[:id])
        group.destroy
    end

    private

    def group_params
        params.require(:group).permit(:group_name, :user_id)
    end

    def friendIteration(group)
        params[:group][:friend_info].each do |friend|
            user = User.find_by(username: friend)
            FriendGroup.create(friend_id: user.id, group_id: group)
        end
    end

end
