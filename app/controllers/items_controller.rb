class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, only: [:id, :name, :description, :price], include: :user
    end


end
