Passenger.delete_all
Passenger.create(name: 'Jazzy Jetsetter', email: 'jetsetter@vidaloco.com')
Passenger.create(name: 'Ernie Economy', email: 'ernie@economy.com')
Passenger.create(name: 'Fran Frequent', email: 'freddie@frequent.com')
Passenger.create(name: 'Annie Airliner', email: 'annie@airliner.com')

Airport.delete_all
Airport.create(code: 'PHL')
Airport.create(code: 'IAH')
Airport.create(code: 'SLC')
Airport.create(code: 'MCO')
Airport.create(code: 'BDL')
Airport.create(code: 'EWR')

Flight.delete_all
Flight.create(from_code_id: 1, departs: '2017-11-28 14:00:00', to_code_id: 2, flight_time_mins: 300)
Flight.create(from_code_id: 1, departs: '2017-11-28 16:00:00', to_code_id: 2, flight_time_mins: 400)
Flight.create(from_code_id: 2, departs: '2017-12-01 11:00:00', to_code_id: 3, flight_time_mins: 400)
Flight.create(from_code_id: 3, departs: '2017-12-01 13:00:00', to_code_id: 4, flight_time_mins: 200)
Flight.create(from_code_id: 3, departs: '2017-12-01 13:30:00', to_code_id: 4, flight_time_mins: 200)
Flight.create(from_code_id: 3, departs: '2017-12-06 09:00:00', to_code_id: 5, flight_time_mins: 230)
Flight.create(from_code_id: 3, departs: '2017-12-06 10:00:00', to_code_id: 5, flight_time_mins: 230)
Flight.create(from_code_id: 4, departs: '2017-12-09 08:00:00', to_code_id: 6, flight_time_mins: 290)
Flight.create(from_code_id: 5, departs: '2017-12-10 10:30:00', to_code_id: 6, flight_time_mins: 270)
