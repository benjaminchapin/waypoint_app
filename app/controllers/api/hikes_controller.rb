class Api::HikesController < ApplicationController

  before_action :authenticate_user, except: [:show, :index]

  def create
    start_coordinates = Geocoder.coordinates(params[:start_address])
    end_coordinates = Geocoder.coordinates(params[:end_address])
    @hike = Hike.new(
      user_id: current_user.id,
      name: params[:name],
      description: params[:description],
      difficulty_level: params[:difficulty_level],
      start_lat: start_coordinates[0],
      start_long: start_coordinates[1],
      end_lat: end_coordinates[0],
      end_long: end_coordinates[1]
    )
    if @hike.save
      render 'show.json.jb'
    else
      render json: { errors: @hike.errors.full_messages }, status: :bad_request
    end
  end
  
  def show
    @hike = Hike.find(params[:id])
    render 'show.json.jb'
  end

  def index
    @hikes = Hike.all
    render "index.json.jb"
  end

  def update
    @hike = Hike.find(params[:id])
    if params[:start_address]
      start_coordinates = Geocoder.coordinates(params[:start_address])
      @hike.start_lat = start_coordinates[0]
      @hike.start_long = start_coordinates[1]
    end
    if params[:end_address]
      end_coordinates = Geocoder.coordinates(params[:end_address])
      @hike.end_lat = end_coordinates[0]
      @hike.end_long = end_coordinates[1]
    end
    @hike.name = params[:name] || @hike.name
    @hike.description = params[:description] || @hike.description
    @hike.difficulty_level = params[:difficulty_level] || @hike.difficulty_level
    if @hike.save
      render 'show.json.jb'
    else
      render json: { errors: @hike.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @hike = Hike.find(params[:id])
    if current_user.id == @hike.user_id
      @hike.destroy
      render json: {message: "Hike successfully deleted!"}
    else
      render json: { message: "Hike deletion unsuccessful." }
    end
  end

end
