class SeccionController < ApplicationController
    def index
        @seccions = Seccion.all
      end
    def new
        @seccions = Seccion.new
    end
end
