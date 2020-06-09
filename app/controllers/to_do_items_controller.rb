class toDoItemsController < ApplicationController
    def index 
        @toDoItems = toDoItem.all
        render json: @toDoItems 
    end

    def show
        @toDoItem = toDoItem.find(params[:id])
        render json: @toDoItem
    end 

    def create 
        @toDoItem = toDoItem.create(activity: params[:activity])
        render json: @toDoItem
    end 
    
end