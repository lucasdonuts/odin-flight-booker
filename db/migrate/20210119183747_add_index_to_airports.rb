class AddIndexToAirports < ActiveRecord::Migration[6.1]
  def change
    add_index :airports, :code, unique: true
  end
end
