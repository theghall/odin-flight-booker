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
Flight.create(from_code_id: 1, depart_date: '2017-12-11', depart_time: '11:00:00 AM', to_code_id: 2, arrival_date: '2017-12-11', arrival_time: '02:00:00 PM')
Flight.create(from_code_id: 1, depart_date: '2017-12-11', depart_time: '12:00:00 PM', to_code_id: 3, arrival_date: '2017-12-11', arrival_time: '02:00:00 PM')
Flight.create(from_code_id: 3, depart_date: '2017-12-10', depart_time: '10:00:00 AM', to_code_id: 4, arrival_date: '2017-12-10', arrival_time: '03:00:00 PM')
Flight.create(from_code_id: 4, depart_date: '2017-12-15', depart_time: '12:00:00 PM', to_code_id: 4, arrival_date: '2017-12-10', arrival_time: '04:00:00 PM')
