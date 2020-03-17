class Api::UsersController < ApplicationController

  before_action :authenticate_user, only: [:update, :destroy]
  
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

  def index
    @users = User.all
    render 'index.json.jb'
  end

  def update
    @user = current_user
    if params[:address]
      coordinates = Geocoder.coordinates(params[:address])
      @user.latitude = coordinates[0]
      @user.longitude = coordinates[1]
    end
    if params[:password] && params[:password].length > 0
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
    end
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.skill_level = params[:skill_level] || @user.skill_level
    @user.email = params[:email] || @user.email
    if @user.save
      render 'show.json.jb'
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.id == @user.id
      @user.destroy
      render json: {message: "Your account has been successfully deleted!"}
    else
      render json: {message: "Account deletion unsuccessful."}
    end
  end
end
