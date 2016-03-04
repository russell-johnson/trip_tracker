class LocationsController < ApplicationController
  def index
    @location = Locations.find(params[:location_id])
    @locations = @location.items
  end

  def show
  end

  def new
    location = Location.new
  end

  def create
    @location -@trip.locations.new(location_params)
    if @location.save
      redirect_to trip_locations_path(@trip)
  end

  def edit
  end

  def update
    @location.update(location_params)

  end

  def destroy
    @location.destroy
    redirect_to trip_locations_path(@trip)
  end

  private
  def location_params
  end
  
  def trip 
    @trip = Trip.find(params[:trip_id])
  end
end
