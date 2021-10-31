class SessionsController < ApplicationController
    def create
        binding.pry
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user,
            except: [:create_at, :updated_at]
            include: [:user_events, :user_groups, :friends]
        else
            render json: {message: "Could not login, try again or signup"}
        end
    end
  
    def destroy
      session.delete :username
    end
  
end