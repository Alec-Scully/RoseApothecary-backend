class CartsController < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]

    def index
       render json: Cart.all.to_json(cart_serializer_options)
    end
 
    def show
       cart = Cart.find(params[:id]) 
       render json: Cart.to_json(cart_serializer_options) 
    end
 
    def create 
       cart = Cart.new(cart_serializer_options)
       # byebug
       Cart.save
       render json: Cart.to_json()
    end
 
    def update
       cart = Cart.find(params[:id])
       Cart.update(cart_serializer_options)
    #    Cart.update(:pixel_board => params[:pixel_board])
       render json: Cart.to_json()
    end
 
    def destroy
       cart = Cart.find(params[:id])
       Cart.destroy
   end
 
     private
 
    def cart_serializer_options()
       {
          except: [:created_at, :updated_at]
       }
    end
 
    def cart_params
       params.require(:cart).permit!
       # params.require(:cart).permit(:name, :user_id, { pixel_board: [] })
   end
end