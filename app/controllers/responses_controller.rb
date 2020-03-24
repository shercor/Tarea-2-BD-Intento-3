class ResponsesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def new
        @publication = Publication.find(params[:publication_id])
        @response = @publication.responses.build    
    end
    def create
        @publication = Publication.find(params[:publication_id])
        @response = @publication.responses.build(response_params)
        @response.user = current_user
        if @response.save
          redirect_to home_path
        end
    end

    def show
        @response = Response.find(params[:id])
        #redirect_to home_path, notice: "Se ha creado la seccion exitosamente"
    end
    private
        def response_params
          params.require(:response).permit(:texto)
        end
end
