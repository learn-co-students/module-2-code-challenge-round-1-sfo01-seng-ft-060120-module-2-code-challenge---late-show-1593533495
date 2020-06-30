class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :rating))
            if @appearance.save
                redirect_to episode_path(@appearance)
            else
                flash[:message] = @appearance.errors.full_messages
                render :new
            end
    end

end
