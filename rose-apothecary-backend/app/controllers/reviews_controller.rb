class ReviewsController < ApplicationController
    skip_before_action :authorized, only: [:index, :destroy]

    def index
       render json: Review.all.to_json(review_serializer_options)
    end
 
    def show
       review = Review.find(params[:id]) 
       render json: review.to_json(review_serializer_options) 
    end
 
    def create 
       review = Review.new(review_serializer_options)
       # byebug
       review.save
       render json: review.to_json()
    end
 
    def update
       review = Review.find(params[:id])
       review.update(review_serializer_options)
    #    Review.update(:pixel_board => params[:pixel_board])
       render json: review.to_json()
    end
 
    def destroy
       review = Review.find(params[:id])
       review.destroy
   end
 
     private
 
    def review_serializer_options()
       {
          except: [:created_at, :updated_at]
       }
    end
 
    def review_params
       params.require(:review).permit!
       # params.require(:review).permit(:name, :user_id, { pixel_board: [] })
   end
end