class ItemsController < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]

    def index
       render json: Item.all.to_json(item_serializer_options)
    end
 
    def show
       item = Item.find(params[:id]) 
       render json: item.to_json(item_serializer_options) 
    end
 
    def create 
       item = Item.new(item_serializer_options)
       # byebug
       item.save
       render json: item.to_json()
    end
 
    def update
       item = Item.find(params[:id])
       item.update(item_serializer_options)
    #    Item.update(:pixel_board => params[:pixel_board])
       render json: item.to_json()
    end
 
    def destroy
       item = Item.find(params[:id])
       item.destroy
   end
 
     private
 
    def item_serializer_options()
       {
          except: [:created_at, :updated_at]
       }
    end
 
    def item_params
       params.require(:item).permit!
       # params.require(:item).permit(:name, :user_id, { pixel_board: [] })
   end
end