class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def services
  end

  def microagresiones
  end

  def experience
    @user = User.find(params[:user_id])

    if @user.simulaciones.first.realizada
      @count = 3
    elsif  @user.encuesta_inicial?
      @count = 2
    else
      @count = 1
    end
  end
end
