# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Charge.create!(fee_code: 'CAR1', vehicle_category: 'Car', vehicle_length: '3.5', toll_charge: '90')
Charge.create!(fee_code: 'CAR2', vehicle_category: 'Car', vehicle_length: '6.0', toll_charge: '120')
Charge.create!(fee_code: 'CAR3', vehicle_category: 'Car(Towing)', vehicle_length: '3.5-6.0', toll_charge: '240')
Charge.create!(fee_code: 'PICKUP', vehicle_category: 'Pick-up', vehicle_length: '6.0', toll_charge: '120')
Charge.create!(fee_code: 'TRACK1', vehicle_category: 'Truck', vehicle_length: '5.5', toll_charge: '280')
Charge.create!(fee_code: 'TRACK2', vehicle_category: 'Truck', vehicle_length: '7.5', toll_charge: '460')
Charge.create!(fee_code: 'TRAILER1', vehicle_category: 'Trailer(Empty)', vehicle_length: '', toll_charge: '5500')
Charge.create!(fee_code: 'TANKEREMPTY', vehicle_category: 'Tanker(fuel)(empty)', vehicle_length: '', toll_charge: '1900')
Charge.create!(fee_code: 'LOADCANTER', vehicle_category: 'Surcharge on loaded canter ', vehicle_length: '', toll_charge: '170')
Charge.create!(fee_code: 'LOADLORRY', vehicle_category: 'Surcharge on loaded lorry ', vehicle_length: '', toll_charge: '400')
Charge.create!(fee_code: 'LOADTANKER', vehicle_category: 'Surcharge on loaded tanker ', vehicle_length: '', toll_charge: '400')
