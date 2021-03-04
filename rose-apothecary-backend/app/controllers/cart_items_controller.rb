class CartItemsController < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]

    def index
       render json: CartItem.all.to_json(cart_item_serializer_options)
    end
 
    def show
       cartItem = CartItem.find(params[:id]) 
       render json: cartItem.to_json(cart_item_serializer_options) 
    end
 
    def create 
       cartItem = CartItem.new(cart_item_params)
       cartItem.save
       render json: cartItem.to_json()
    end
 
    def update
       cartItem = CartItem.find(params[:id])
       cartItem.update(cart_item_params)
    #    CartItem.update(:pixel_board => params[:pixel_board])
       render json: cartItem.to_json()
    end
 
    def destroy
       cartItem = CartItem.find(params[:id])
       cartItem.destroy
   end
 
     private
 
    def cart_item_serializer_options()
       {
          except: [:created_at, :updated_at]
       }
    end
 
    def cart_item_params
       params.require(:cart_item).permit!
       # params.require(:cart_item).permit(:name, :user_id, { pixel_board: [] })
   end
end