class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :to_airport_id, null: false
      t.integer :from_airport_id, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.integer :duration, null: false

      t.timestamps
    end

    add_index :flights, :to_airport_id
    add_index :flights, :from_airport_id
    add_index :flights, :date
    add_index :flights, :time
  end
end
