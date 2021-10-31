class UsersController < ApplicationController

    def show 
        user = User.find_by(id: params[:id])
        if user
            render json: user,
                except: [:created_at, :updated_at],
                include: [:user_events, :user_groups, :friends]
        else
            render json: {message: "No Event added"}
        end
    end

    def create
        binding.pry
        user = User.new(user_params)
        if user.save
            render json: user,
            except: [:create_at, :updated_at],
            include: [:user_events, :user_groups, :friends]
        else
            render json: {message: "Could not create user, try again"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
