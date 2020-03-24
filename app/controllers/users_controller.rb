class UsersController < ApplicationController
    def perfil
        @user = current_user
    end
  end