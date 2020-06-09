class UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:toDoItems]
    end

    def create
        @user = User.create(
            username: params[:username],
            password: params[:password],
            location: params[:location]
        )
        render json: @user
    end 

    def delete
        @user = User.find(params[:id])
        @user.destroy
        render status: 204
    end 

    def update
        @user.find(params[:id])
        @user.update(
            username: params[:username],
            password: params[:password],
            location: params[:location]
        )
    end

end

