class FriendsController < ApplicationController

    def index
        friends = Friend.all
        render json: friends,
            except: [:created_at, :updated_at],
            include: [:friend_groups, :user]
    end
    
    def create
        # binding.pry
        friend_info = User.find_by(username: params[:friend][:username])
        friend = Friend.new(user_id: params[:friend][:user_id], friend_user_id: friend_info.id)
        if friend.save
            render json: friend,
                except: [:created_at, :updated_at],
                include: [:friend_groups, :user]
        else
            render json: {message: "Could not create friend"}
        end
    end

    def destroy
        friend = Friend.find_by(id: params[:id])
        friend.destroy
    end

    private

    def friend_params
        params.require(:friend).permit()
        # need to add in way to get user_id and friends user_id
    end
end
