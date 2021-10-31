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

    def index
        users = User.all
        render json: users,
                except: [:created_at, :updated_at],
                include: [:user_events, :user_groups, :friends]
    end


    def create
        # binding.pry
        user = User.new(username: params[:user][:username], password: params[:user][:password])
        if user.save
            render json: user,
            except: [:create_at, :updated_at],
            include: [:user_events, :user_groups, :friends]
        else
            render json: {message: "Could not create user, try again"}
        end
    end


end
