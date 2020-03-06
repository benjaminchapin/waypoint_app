class Api::WaypointsController < ApplicationController

  before_action :authenticate_user, except: [:show, :index]


  def create
    coordinates = Geocoder.coordinates(params[:address])
    @waypoint = Waypoint.new(
      user_id: current_user.id,
      hike_id: params[:hike_id],
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      latitude: coordinates[0],
      longitude: coordinates[1]
    )
    if @waypoint.save
      render 'show.json.jb'
    else
      render json: { errors: @waypoint.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @waypoint = Waypoint.find(params[:id])
    render 'show.json.jb'
  end

  def index
    @waypoints = Waypoint.all
    render 'index.json.jb'
  end

  def update
    @waypoint = Waypoint.find(params[:id])
    if params[:address]
      coordinates = Geocoder.coordinates(params[:address])
      @waypoint.latitude = coordinates[0]
      @waypoint.longitude = coordinates[1]
    @waypoint.name = params[:name] || @waypoint.name
    @waypoint.image_url = params[:image_url] || @waypoint.image_url
    @waypoint.description = params[:description] || @waypoint.description
    render 'show.json.jb'
    else
      render json: { errors: @waypoint.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @waypoint = Waypoint.find(params[:id])
    if current_user.id == @waypoint.user_id
      @waypoint.destroy
      render json: {message: "Waypoint successfully deleted!"}
    else
      render json: { message: "Waypoint deletion unsuccessful." }
    end
  end

end
