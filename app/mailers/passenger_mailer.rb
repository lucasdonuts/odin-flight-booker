class PassengerMailer < ApplicationMailer
  before_action :set_booking_details
  default to: -> { @booking.passengers.all.pluck(:email) }

  def thank_you_email
    mail(subject: 'Thank You for Booking with Odin!')
  end

  private

  def set_booking_details
    @passenger = params[:passenger]
    @booking = @passenger.booking
    @flight = @passenger.booking.flight
    @url = booking_url(@booking)
  end
end
