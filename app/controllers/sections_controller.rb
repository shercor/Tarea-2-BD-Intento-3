class SectionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
    def index
        @section = Section.all
    end
    def new
        @section = Section.new
    end
    def create
        @section = Section.new(section_params)
        if @section.save
          redirect_to @section
        else
          render :new
        end
    end
    def show
        @section = Section.find(params[:id])
        @publications = Publication.where(section_id: @section)
        #redirect_to home_path, notice: "Se ha creado la seccion exitosamente"
    end
      
      private
        def section_params
          params.require(:section).permit(:name)
        end
end
