class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :num_of_passengers

      t.timestamps
    end
  end
end
