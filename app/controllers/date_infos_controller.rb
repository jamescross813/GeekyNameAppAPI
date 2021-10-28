class DateInfosController < ApplicationController
    def show
        date_info = DateInfo.find_by(id: params[:id])
        if date_info
            render json:date_info,
            except: [:created_at, :updated_at]
        else
            render json: {message: "No such date"}
        end
    end


end
