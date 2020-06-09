class ToDoItemsController < ApplicationController
    def index 
        @toDoItems = ToDoItem.all
        render json: @toDoItems 
    end

    def show
        @toDoItem = ToDoItem.find(params[:id])
        render json: @toDoItem
    end 

    def create 
        @toDoItem = ToDoItem.create(activity: params[:activity], user_id: params[:user_id])
        render json: @toDoItem
    end 

    def delete
        @toDoItem = ToDoItem.find(params[:id])
        @toDoItem.destroy
        render status: 204
    end 

    def update
        @toDoItem = ToDoItem.find(params[:id])
        @toDoItem.update(activity: params[:activity])
    end 
    
end