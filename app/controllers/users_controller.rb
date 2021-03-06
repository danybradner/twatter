class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new 
        # don't need to do anything, just need to know this exists
        @user = User.new
    end

    def create
        user_details = params.require(:user).permit(:screen_name, :name)
        @user = User.new(user_details)
        if @user.save
            redirect_to users_path
        else
            render :new
        end
    end

    def show
        user_id = params[:id]
        @user = User.find(user_id)
    end

    # special methods

    def me
        user_id = cookies[:user_id]
        @user = User.find(user_id)
        @tweet = Tweet.new
        redirect_to :index unless @user.present?
    end

    def login
        user_id = params[:user_id]
        cookies[:user_id] = user_id
        redirect_to '/users/me'
    end
end
