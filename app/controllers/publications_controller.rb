class PublicationsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def new
        @section = Section.find(params[:section_id])
        @publication = @section.publications.build    
    end
    def create
        @section = Section.find(params[:section_id])
        @publication = @section.publications.build(publication_params)
        @publication.user = current_user
        if @publication.save
          redirect_to home_path
        end
    end
    def show
        
        @publication = Publication.find(params[:id])
        @responses = Response.where(publication_id: @publication)
        #redirect_to home_path, notice: "Se ha creado la seccion exitosamente"
    end
      
      private
        def publication_params
          params.require(:publication).permit(:name,:texto,:inactivo)
        end
end
