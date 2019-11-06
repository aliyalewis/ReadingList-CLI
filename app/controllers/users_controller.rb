class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            @readlist = ReadlingList.create(user_id: @user.id)
        end
    end

    def show
        @user = User.find_by(id: @user.id)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end

end
