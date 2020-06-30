class AppearancesController < ApplicationController



  def new 
    @appearance = Appearance.new
  end

  def create 
    # byebug
    @appearance = Appearance.create(appearance_params)
    # @appearance.save
    # redirect_to episode_path(@appearance)
    if @appearance.valid?
      redirect_to episode_path(@appearance)
    else
      flash[:errors] = @appearance.errors.full_messages
      render :new
    end
  end

  private
  
  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
