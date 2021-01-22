class FlightsController < ApplicationController
  include FlightsHelper

  before_action :set_flight, only: [:show, :edit, :update, :destroy]
  before_action :set_date_options, only: :index
  before_action :set_airport_options, only: :index

  # GET /flights
  # GET /flights.json
  def index
    if search?
      if params[:from_airport_id].empty? && !params[:to_airport_id].empty?

        @flights = Flight.where(to_airport_id: params[:to_airport_id],
                                date: params[:date])

      elsif !params[:from_airport_id].empty? && params[:to_airport_id].empty?

        @flights = Flight.where(from_airport_id: params[:from_airport_id],
                                date: params[:date])
      
      elsif !params[:from_airport_id].empty? && !params[:to_airport_id].empty?

        @flights = Flight.where(to_airport_id: params[:to_airport_id],
                                from_airport_id: params[:from_airport_id],
                                date: params[:date])

      else
        @flights = Flight.where(date: params[:date])
      end
      @booking = Booking.new
    else
      @flights = Flight.all
    end
  end
end
