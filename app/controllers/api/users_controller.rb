class Api::UsersController < ApplicationController
  
  def create
    coordinates = Geocoder.coordinates(params[:address])
    @user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      first_name: params[:first_name],
      last_name: params[:last_name],
      skill_level: params[:skill_level],
      latitude: coordinates[0],
      longitude: coordinates[1]
    )
    if @user.save
      render 'show.json.jb'
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user
      if params[:address]
        coordinates = Geocoder.coordinates(params[:address])
        @user.latitude = coordinates[0]
        @user.longitude = coordinates[1]
      end
      @user.email = params[:email] || @user.email
      @user.password = params[:password] || @user.password
      @user.first_name = params[:first_name] || @user.first_name
      @user.last_name = params[:last_name] || @user.last_name
      @user.skill_level = params[:skill_level] || @user.skill_level
      render 'show.json.jb'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "Account successfully deleted!"}
  end
end
