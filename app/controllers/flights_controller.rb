class FlightsController < ApplicationController
  include FlightsHelper

  before_action :set_flight, only: [:show, :edit, :update, :destroy]
  before_action :set_airport_options, only: :index
  before_action :set_date_options, only: :index

  # GET /flights
  # GET /flights.json
  def index
    # Don't forget to add :date to query after it's implemented
    if params.has_key?(:num_of_passengers) && params.has_key?(:from_airport_id) && params.has_key?(:to_airport_id)
      @flights = Flight.where(:to_airport_id => params[:to_airport_id],
                              :from_airport_id => params[:from_airport_id])
    else
      @flights = Flight.all
    end
  end

  def search
    
  end

  # GET /flights/1
  # GET /flights/1.json
  def show
    
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
