module FlightsHelper

  private
    
  def set_flight
    @flight = Flight.find(params[:id])
  end

  def flight_params
    params.require(:flight).permit(:to_airport_id,
                                   :from_airport_id,
                                   :date,
                                   :time,
                                   :duration)
  end

  def set_airport_options
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
  end

  def set_date_options
    @date_options = Flight.all.map { |f| [f.date.strftime('%b %d, %Y'), f.date]}.uniq
  end

  def format_date
    Date.civil(params[:year].to_i, params[:month].to_i, params[:day].to_i)
  end

  def search?
    params.has_key?(:num_of_passengers) && 
    params.has_key?(:date)
  end

end
