class AddBookingIdToPassengers < ActiveRecord::Migration[6.1]
  def change
    add_column :passengers, :booking_id, :integer
  end
end
