# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute('ALTER SEQUENCE airports_id_seq RESTART WITH 1')
ActiveRecord::Base.connection.execute('ALTER SEQUENCE flights_id_seq RESTART WITH 1')
Airport.destroy_all
Flight.destroy_all

Airport.create(code: 'LAX')
Airport.create(code: 'BTR')
Airport.create(code: 'DEN')
Airport.create(code: 'ATL')
Airport.create(code: 'JFK')
Airport.create(code: 'SFO')
Airport.create(code: 'MIA')
Airport.create(code: 'BOS')
Airport.create(code: 'HOU')
Airport.create(code: 'PIT')

time = Time.now
date = Date.today
56.times do
  Airport.all.each do |x|
    Airport.all.each do |y|
      unless x == y
        duration = rand(1..12)

        Flight.create(from_airport_id: x.id,
                      to_airport_id: y.id,
                      date: date,
                      time: time,
                      duration: duration)

        Flight.create(from_airport_id: y.id,
                      to_airport_id: x.id,
                      date: date,
                      time: time.advance(hours: duration + 1),
                      duration: duration)
                      
        time = time.advance(minutes: 15)
      end
    end
  end
  date += 1
end