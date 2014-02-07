class ArtCarsController < ApplicationController
  before_filter :login_required, only: [:destroy]

  def index
  	@art_cars = ArtCar.all
  end

  def show
  	@art_car = ArtCar.find(params[:id])
  end
  
  def update
    @art_car = ArtCar.find(params[:id])

    if @art_car.update art_car_params
      flash[:notice] = "Successfully updated shizznit!"
      redirect_to action: 'index'
    else
      render action: 'edit'
    end
  end

  def create
  	@art_car = ArtCar.new(art_car_params)

  	if @art_car.save
  		flash[:notice] = "Successfully created art car!"
  		redirect_to action: 'index'
  	else
  		render action: 'new'
  	end
  end

  def new
  	@art_car = ArtCar.new
  end

  def edit
  	@art_car = ArtCar.find(params[:id])
  end

  def destroy
  	ac = ArtCar.find(params[:id])
  	ac.destroy
		redirect_to art_cars_path
  end

  private

  def art_car_params
  	params.require(:art_car).permit(
  		:name, :hometown, :power_source, :flame_effects, :street_legal, :photo_url
  	)
  end
end
