class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new!(
            username: params[:username],
            password: params[:password],
            email: params[:email]
        )

        if user.save
            token = encode_token(user.id)
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params) 

        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def upload_img
        user = User.find(params[:id])
        user.images.attach(params[:image])
        user.save

        images = user.images.map{|image| url_for(image)} 

        render json: images
    end

    private
    def user_params
        params.require(:user).permit(:username, :name, :email, :work_info, :summary, :cleaning, :guests, :schedule, :pets, :budget)
    end


end
