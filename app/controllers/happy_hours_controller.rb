class HappyHoursController < ApplicationController
  before_filter :login_required, only: [:destroy]

  def index
  	@happy_hours = HappyHour.all
  end

  def show
  	@happy_hour = HappyHour.find(params[:id])
  end
  
  def update
    @happy_hour = HappyHour.find(params[:id])

    if @happy_hour.update happy_hour_params
      flash[:notice] = "Successfully updated shizznit!"
      redirect_to action: 'index'
    else
      render action: 'edit'
    end
  end

  def create
  	@happy_hour = HappyHour.new(happy_hour_params)

  	if @happy_hour.save
  		flash[:notice] = "Successfully created happy hours!"
  		redirect_to action: 'index'
  	else
  		render action: 'new'
  	end
  end

  def new
  	@happy_hour = HappyHour.new
  end

  def edit
  	@happy_hour = HappyHour.find(params[:id])
  end

  def destroy
  	hh = HappyHour.find(params[:id])
  	hh.destroy
		redirect_to happy_hours_path
  end

  private

  def happy_hour_params
  	params.require(:happy_hour).permit(
  		:name, :hometown, :address, :photo_url
  	)
  end
end
