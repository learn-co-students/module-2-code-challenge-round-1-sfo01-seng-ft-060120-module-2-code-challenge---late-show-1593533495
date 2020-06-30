class AppearancesController < ApplicationController

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(strong_params)
        if @appearance.save
            redirect_to episode_path(strong_params[:episode_id])
        else
            flash[:message] = @appearance.errors.full_messages
            render :new
        end
    end

    private

    def strong_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end
