class Items < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]

    def index
       render json: Item.all.to_json(item_serializer_options)
    end
 
    def show
       item = Item.find(params[:id]) 
       render json: Item.to_json(item_serializer_options) 
    end
 
    def create 
       item = Item.new(item_serializer_options)
       # byebug
       Item.save
       render json: Item.to_json()
    end
 
    def update
       item = Item.find(params[:id])
       Item.update(item_serializer_options)
    #    Item.update(:pixel_board => params[:pixel_board])
       render json: Item.to_json()
    end
 
    def destroy
       item = Item.find(params[:id])
       Item.destroy
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