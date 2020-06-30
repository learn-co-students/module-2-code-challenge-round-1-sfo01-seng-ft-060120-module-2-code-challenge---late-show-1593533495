class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @appearances = Appearance.where(episode: @episode)
    if @appearances.length > 0
      @avg_rating = @appearances.sum {|appearance| appearance.rating} / @appearances.length
    else
      @avg_rating = "n/a"
    end
  end
    
  
end
