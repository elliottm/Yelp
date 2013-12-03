class RestaurantsController < ApplicationController
  
  def index
  	@restaurant = Restaurant.all
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.create(params[:restaurant].permit(:name, :description, :email))        
        
    if @restaurant.save
      flash[:notice] = "Successfully added"
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def show
  	@restaurant = Restaurant.find(params[:id])        
  end

  def edit
  	@restaurant = Restaurant.find(params[:id])
  end

  def update
  	@restaurant = Restaurant.find(params[:id])
  	  if @restaurant.update(params[:restaurant].permit(:name, :description))
  	  	flash[:notice] = "Successfully updated"
        redirect_to @restaurant
      else
        render 'edit'
      end
  end

  def destroy
  	@restaurant = Restaurant.find(params[:id])
  	@restaurant.destroy
  	redirect_to root_path
  end

end
