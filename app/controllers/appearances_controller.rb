class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(strong_params)
        if @appearance.save
            redirect_to @appearance.episode
        else
            flash[:message] = @appearance.errors.full_messages
            render :new
        end
    end

    private


    def strong_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
