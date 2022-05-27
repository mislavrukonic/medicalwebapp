class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  
  def new
  end

  def create
    @doctor = Doctor.find_by(email: params[:email])
    if @doctor && @doctor.authenticate(params[:password])
       session[:doctor_id] = @doctor.doctor_id
       redirect_to '/welcome'
    else
       redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end

  def destroy
    session[:doctor_id] = nil
    redirect_to '/login'
    end

  def page_requires_login
  end
end
