class AppearancesController < ApplicationController

    def index 
        @appearances = Appearance.all 
    end 

    def new 
      @appearance = Appearance.new 
    end 

    def create 
        @appearance = Appearance.new(appearance_params) 
        if @appearance.save
          redirect_to @appearance.episode 
        else
          flash[:message] = @appearance.errors.full_messages
          render :new
        end 
    end 


      private 
    
      # def set_appearance 
      #   @appearance = Appearance.find(params[:id])
      # end 
    
      def appearance_params 
        params.require(:appearance).permit(:guest_id, :episode_id, :rating) 
      end 

    end

