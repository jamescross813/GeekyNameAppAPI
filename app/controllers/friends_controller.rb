class FriendsController < ApplicationController
    
    def create
        friend = Friend.new(friend_params)
        if friend.save
            render json: friend,
                except: [:created_at, :updated_at]
        else
            render json: {message: "Could not create friend"}
        end
    end

    private

    def friend_params
        params.require(:friend).permit()
        # need to add in way to get user_id and friends user_id
    end
end
