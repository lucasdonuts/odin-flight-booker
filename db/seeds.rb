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

def rand_in_range(from, to)
  rand * (to - from) + from
end

def rand_time(from = Time.now, to)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

Airport.create(code: 'LAX')
Airport.create(code: 'BTR')
Airport.create(code: 'ORD')
Airport.create(code: 'DFW')
Airport.create(code: 'DEN')
Airport.create(code: 'ATL')
Airport.create(code: 'JFK')
Airport.create(code: 'SFO')
Airport.create(code: 'SEA')
Airport.create(code: 'LAS')
Airport.create(code: 'MCO')
Airport.create(code: 'EWR')
Airport.create(code: 'CLT')
Airport.create(code: 'PHX')
Airport.create(code: 'IAH')
Airport.create(code: 'MIA')
Airport.create(code: 'BOS')
Airport.create(code: 'MSP')
Airport.create(code: 'FLL')
Airport.create(code: 'DTW')
Airport.create(code: 'PHL')
Airport.create(code: 'LGA')
Airport.create(code: 'BWI')
Airport.create(code: 'SLC')
Airport.create(code: 'SAN')
Airport.create(code: 'IAD')
Airport.create(code: 'DCA')
Airport.create(code: 'MDW')
Airport.create(code: 'TPA')
Airport.create(code: 'PDX')
Airport.create(code: 'HNL')
Airport.create(code: 'BNA')
Airport.create(code: 'AUS')
Airport.create(code: 'DAL')
Airport.create(code: 'STL')
Airport.create(code: 'SJC')
Airport.create(code: 'HOU')
Airport.create(code: 'OAK')
Airport.create(code: 'MSY')
Airport.create(code: 'RDU')
Airport.create(code: 'SMF')
Airport.create(code: 'MCI')
Airport.create(code: 'SNA')
Airport.create(code: 'SAT')
Airport.create(code: 'CLE')
Airport.create(code: 'RSW')
Airport.create(code: 'IND')
Airport.create(code: 'PIT')
Airport.create(code: 'SJU')
Airport.create(code: 'CVG')

i = 0
k = 0
date = Date.today
time = Time.now
Airport.all.each do |x|
  Airport.all.each do |y|
    unless x == y
      rand(1..5).times do
        Flight.create(from_airport_id: x.id,
                      to_airport_id: y.id,
                      date: Date.today + rand(365),
                      time: Time.now + rand(1440),
                      duration: rand(1..12))
        #k += 1
      end
    end
  end
  #i += 1
end