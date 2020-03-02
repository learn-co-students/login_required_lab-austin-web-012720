class SessionsController < ApplicationController

  def new  ##login page
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      render controller: 'sessions', action: 'welcome'
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end


end