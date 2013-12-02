class ReviewsController < ApplicationController
  
  def new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@review = @restaurant.reviews.new
  end

  def create
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@review = @restaurant.reviews.create(params[:review].permit(:description))
  	redirect_to restaurant_path(@restaurant)
  end	

end



