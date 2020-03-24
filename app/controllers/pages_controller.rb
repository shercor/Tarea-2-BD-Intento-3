class PagesController < ApplicationController
    def home
      render html: "<h1>Hola, bienvenido a BD-Chan!</h1>".html_safe
    end
  end