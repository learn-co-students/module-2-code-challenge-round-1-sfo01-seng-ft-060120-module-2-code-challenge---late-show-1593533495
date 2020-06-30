class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(params[:appearance])
        if @appearance.save
            redirect_to episode_path(@episode)
        else
            redirect_to episode_path(@episode)
        end
    end

end
  