class SessionsController < ApplicationController

  # def index
  #   if session[:name].empty?
  #     render :new
  #   else
  #     render :index
  #   end
  # end

  def new
    if !session[:name].empty?
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
