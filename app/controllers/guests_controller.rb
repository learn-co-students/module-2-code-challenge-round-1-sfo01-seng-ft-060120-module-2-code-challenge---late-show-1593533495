class GuestsController < ApplicationController
  # before_action :set_guest, only: [:index, :show]

  def index
    @guests = Guest.all
  end

  def show 
    @guest = Guest.find(params[:id]) 
    @episodes = @guest.episodes
  end 

private 
def set_guest
  @guest= Guest.find(params[:id])
end 

end 
