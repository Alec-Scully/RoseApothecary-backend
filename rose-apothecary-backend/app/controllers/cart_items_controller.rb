class CartItemsController < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]

    def index
       render json: CartItem.all.to_json(cart_item_serializer_options)
    end
 
    def show
       cartItem = CartItem.find(params[:id]) 
       render json: CartItem.to_json(cart_item_serializer_options) 
    end
 
    def create 
       cartItem = CartItem.new(cart_item_serializer_options)
       # byebug
       CartItem.save
       render json: CartItem.to_json()
    end
 
    def update
       cartItem = CartItem.find(params[:id])
       CartItem.update(cart_item_serializer_options)
    #    CartItem.update(:pixel_board => params[:pixel_board])
       render json: CartItem.to_json()
    end
 
    def destroy
       cartItem = CartItem.find(params[:id])
       CartItem.destroy
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