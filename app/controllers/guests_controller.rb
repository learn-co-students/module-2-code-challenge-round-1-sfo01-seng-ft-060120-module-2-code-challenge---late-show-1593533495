class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes_ordered = @guest.episodes.order(rating: :desc)
    
    # NOTE: the show view page does not display in correct order. I ran into troubles iterating over this variable and it was buggy!
  end
end
