namespace :heal_ccpha do

  desc "upload CCPHA cities data 1"
  task ccpha_upload_1: :environment do
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    city_data = []

    city_data << { county: 'Alameda', name: 'Emeryville', heal_no_heal: 'HEAL', population: 10080,percent_obesity: 24, city_median_income: 69274, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Fremont', heal_no_heal: 'HEAL', population: 214089,percent_obesity: 27.89, city_median_income: 98513, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Hayward', heal_no_heal: 'HEAL', population: 144186,percent_obesity: 42.67, city_median_income: 62115, joined_in: '2011', city_designation: 'fit', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Livermore', heal_no_heal: 'HEAL', population: 80968,percent_obesity: 32.09, city_median_income: 96322, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Newark', heal_no_heal: 'HEAL', population: 42573,percent_obesity: 39.17, city_median_income: 81777, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'San Leandro', heal_no_heal: 'HEAL', population: 4001,percent_obesity: 59.02, city_median_income: 61857, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Union City', heal_no_heal: 'HEAL', population: 68549,percent_obesity: 39.72, city_median_income: 82634, joined_in: '2013', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Butte', name: 'Chico', heal_no_heal: 'HEAL', population: 86187,percent_obesity: 30.78, city_median_income: 41632, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Butte', name: 'Gridley', heal_no_heal: 'HEAL', population: 6584,percent_obesity: 45.5, city_median_income: 36563, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Antioch', heal_no_heal: 'HEAL', population: 102372,percent_obesity: 42.34, city_median_income: 66479, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Brentwood', heal_no_heal: 'HEAL', population: 51481,percent_obesity: 32.48, city_median_income: 87642, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Danville', heal_no_heal: 'HEAL', population: 42039,percent_obesity: 16.54, city_median_income: 133360, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'El Cerrito', heal_no_heal: 'HEAL', population: 23549,percent_obesity: 36.32, city_median_income: 83933, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Lafayette', heal_no_heal: 'HEAL', population: 23893,percent_obesity: 17.82, city_median_income: 134871, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Martinez', heal_no_heal: 'HEAL', population: 35824,percent_obesity: 32.99, city_median_income: 79705, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'San Pablo', heal_no_heal: 'HEAL', population: 45119,percent_obesity: 23.55, city_median_income: 45305, joined_in: '2010', city_designation: 'Fit', policy_change_in_progress: '' }
    city_data << { county: 'Del Norte', name: 'Crescent City', heal_no_heal: 'HEAL', population: 7643,percent_obesity: 44.2, city_median_income: 30058, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Clovis', heal_no_heal: 'HEAL', population: 95631,percent_obesity: 32.34, city_median_income: 65300, joined_in: '2011', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Fresno', name: 'Fowler', heal_no_heal: 'HEAL', population: 5570,percent_obesity: 44.05, city_median_income: 54698, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Huron', heal_no_heal: 'HEAL', population: 6754,percent_obesity: 52.83, city_median_income: 22969, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Reedley', heal_no_heal: 'HEAL', population: 24194,percent_obesity: nil, city_median_income: 46776, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'San Joaquin', heal_no_heal: 'HEAL', population: 805235,percent_obesity: 31.68, city_median_income: 25702, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Sanger', heal_no_heal: 'HEAL', population: 29139,percent_obesity: 52.42, city_median_income: 41987, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Glen', name: 'Orland', heal_no_heal: 'HEAL', population: 7291,percent_obesity: 39.76, city_median_income: 45186, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Humboldt', name: 'Arcata', heal_no_heal: 'HEAL', population: 17231,percent_obesity: 30.59, city_median_income: 31815, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Humboldt', name: 'Ferndale', heal_no_heal: 'HEAL', population: 1371,percent_obesity: 32.5, city_median_income: 60147, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Imperial', name: 'Brawley', heal_no_heal: 'HEAL', population: 24953,percent_obesity: 49.95, city_median_income: 36233, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Imperial', name: 'El Centro', heal_no_heal: 'HEAL', population: 42598,percent_obesity: 45.84, city_median_income: 38297, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Imperial', name: 'Holtville', heal_no_heal: 'HEAL', population: 5939,percent_obesity: 44.48, city_median_income: 40712, joined_in: '2014', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Inyo', name: 'Bishop', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 34258, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kern', name: 'Bakersfield', heal_no_heal: 'HEAL', population: 347483,percent_obesity: 42.67, city_median_income: 54656, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Kern', name: 'Delano', heal_no_heal: 'HEAL', population: 53041,percent_obesity: 48, city_median_income: 37810, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Alhambra', heal_no_heal: 'HEAL', population: 83089,percent_obesity: 35.48, city_median_income: 52717, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Avalon', heal_no_heal: 'HEAL', population: 3728,percent_obesity: 64.21, city_median_income: 49514, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Azusa', heal_no_heal: 'HEAL', population: 46361,percent_obesity: 45.62, city_median_income: 53826, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Baldwin Park', heal_no_heal: 'HEAL', population: 75390,percent_obesity: 46.71, city_median_income: 52094, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Bell  ', heal_no_heal: 'HEAL', population: 35477,percent_obesity: 47.06, city_median_income: 37121, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Bell Gardens', heal_no_heal: 'HEAL', population: 42072,percent_obesity: 55, city_median_income: 38971, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Beverly Hills', heal_no_heal: 'HEAL', population: 34109,percent_obesity: 21.47, city_median_income: 85560, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Calabasas', heal_no_heal: 'HEAL', population: 23058,percent_obesity: 19.97, city_median_income: 118182, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Carson', heal_no_heal: 'HEAL', population: 91714,percent_obesity: 44.95, city_median_income: 70416, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Claremont', heal_no_heal: 'HEAL', population: 34926,percent_obesity: 29.84, city_median_income: 81715, joined_in: '2011', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Duarte', heal_no_heal: 'HEAL', population: 21321,percent_obesity: 41.9, city_median_income: 64329, joined_in: '2011', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'El Monte', heal_no_heal: 'HEAL', population: 113475,percent_obesity: 50.19, city_median_income: 41820, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Hawaiian Gardens', heal_no_heal: 'HEAL', population: 14254,percent_obesity: 53.51, city_median_income: 42898, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Hawthorne', heal_no_heal: 'HEAL', population: 84293,percent_obesity: 45.51, city_median_income: 45622, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Hermosa Beach', heal_no_heal: 'HEAL', population: 19506,percent_obesity: 21.09, city_median_income: 102289, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Huntington Park', heal_no_heal: 'HEAL', population: 58114,percent_obesity: 53, city_median_income: 36788, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Inglewood', heal_no_heal: 'HEAL', population: 109673,percent_obesity: 47.78, city_median_income: 44021, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'La Puente', heal_no_heal: 'HEAL', population: 39816,percent_obesity: 42.37, city_median_income: 52042, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Lancaster', heal_no_heal: 'HEAL', population: 156633,percent_obesity: 38.2, city_median_income: 52290, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Lawndale', heal_no_heal: 'HEAL', population: 32769,percent_obesity: 46.41, city_median_income: 48813, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Long Beach', heal_no_heal: 'HEAL', population: 462257,percent_obesity: 40.66, city_median_income: 52945, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Manhattan Beach', heal_no_heal: 'HEAL', population: 35135,percent_obesity: 11.25, city_median_income: 132752, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Maywood', heal_no_heal: 'HEAL', population: 27395,percent_obesity: 50.37, city_median_income: 38155, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Paramount', heal_no_heal: 'HEAL', population: 54098,percent_obesity: 46.4, city_median_income: 42831, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Pasadena', heal_no_heal: 'HEAL', population: 137122,percent_obesity: 42.56, city_median_income: 67920, joined_in: '2011', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Pico Rivera', heal_no_heal: 'HEAL', population: 62942,percent_obesity: 43.68, city_median_income: 55632, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Pomona', heal_no_heal: 'HEAL', population: 149058,percent_obesity: 48.11, city_median_income: 50893, joined_in: '2012', city_designation: 'fit', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Redondo Beach', heal_no_heal: 'HEAL', population: 66748,percent_obesity: 30.38, city_median_income: 94982, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'San Fernando', heal_no_heal: 'HEAL', population: 63522,percent_obesity: 21.08, city_median_income: 52021, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Santa Clarita', heal_no_heal: 'HEAL', population: 88410,percent_obesity: 28.17, city_median_income: 83579, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Santa Monica', heal_no_heal: 'HEAL', population: 176320,percent_obesity: 29.58, city_median_income: 71400, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'South El Monte', heal_no_heal: 'HEAL', population: 12867,percent_obesity: 21.51, city_median_income: 47537, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'South Gate', heal_no_heal: 'HEAL', population: 20116,percent_obesity: 54.3, city_median_income: 41990, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Torrance', heal_no_heal: 'HEAL', population: 28111,percent_obesity: 46.28, city_median_income: 75885, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'West Hollywood', heal_no_heal: 'HEAL', population: 34399,percent_obesity: 43.8, city_median_income: 52303, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Marin', name: 'Corte Madera', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 106541, joined_in: '2013', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Marin', name: 'Marin City', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 46250, joined_in: '2013', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Marin', name: 'Novato', heal_no_heal: 'HEAL', population: 51904,percent_obesity: 31.74, city_median_income: 78628, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Mendocino', name: 'Fort Bragg', heal_no_heal: 'HEAL', population: 7273,percent_obesity: 42.89, city_median_income: 35030, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Gustine', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 45639, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Livingston', heal_no_heal: 'HEAL', population: 13058,percent_obesity: 42.43, city_median_income: 45313, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Merced', heal_no_heal: 'HEAL', population: 78958,percent_obesity: 40.88, city_median_income: 37025, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Monterey', name: 'Greenfield', heal_no_heal: 'HEAL', population: 16330,percent_obesity: 47.46, city_median_income: 56011, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Seaside', heal_no_heal: 'HEAL', population: 11580,percent_obesity: 23.94, city_median_income: 58403, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Napa', name: 'American Canyon', heal_no_heal: 'HEAL', population: 19454,percent_obesity: 41.59, city_median_income: 83581, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Napa', name: 'Yountville', heal_no_heal: 'HEAL', population: 2933,percent_obesity: 44.44, city_median_income: 68368, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Anaheim', heal_no_heal: 'HEAL', population: 336265,percent_obesity: 43.52, city_median_income: 59330, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Brea', heal_no_heal: 'HEAL', population: 39282,percent_obesity: 27.95, city_median_income: 81278, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Orange', name: 'Dana Point', heal_no_heal: 'HEAL', population: 33351,percent_obesity: 20.84, city_median_income: 83306, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Fullerton', heal_no_heal: 'HEAL', population: 135161,percent_obesity: 30.91, city_median_income: 69432, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Irvine', heal_no_heal: 'HEAL', population: 212375,percent_obesity: 21.67, city_median_income: 92599, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'LaHabra', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 86111, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Mission Viejo', heal_no_heal: 'HEAL', population: 93305,percent_obesity: 25.11, city_median_income: 96420, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Newport Beach', heal_no_heal: 'HEAL', population: 85186,percent_obesity: 18.31, city_median_income: 108946, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Orange', name: 'Placentia', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 78364, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'San Clemente', heal_no_heal: 'HEAL', population: 106433,percent_obesity: 33.1, city_median_income: 89289, joined_in: '2012', city_designation: 'Fit', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Santa Ana', heal_no_heal: 'HEAL', population: 24270,percent_obesity: 47.53, city_median_income: 54399, joined_in: '2011', city_designation: 'Fit', policy_change_in_progress: 'x' }
    city_data << { county: 'Orange', name: 'Westminster', heal_no_heal: 'HEAL', population: 89701,percent_obesity: 32.99, city_median_income: 56867, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Banning', heal_no_heal: 'HEAL', population: 29603,percent_obesity: 45.92, city_median_income: 37373, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Beaumont', heal_no_heal: 'HEAL', population: 36877,percent_obesity: 38.12, city_median_income: nil, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Canyon Lake', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 80145, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Cathedral City', heal_no_heal: 'HEAL', population: 51200,percent_obesity: 42.1, city_median_income: 45088, joined_in: '2009', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Corona', heal_no_heal: 'HEAL', population: 152374,percent_obesity: 34.98, city_median_income: 79877, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Desert Hot Springs', heal_no_heal: 'HEAL', population: 25938,percent_obesity: 40, city_median_income: 34606, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Eastvale', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 115025, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'La Quinta', heal_no_heal: 'HEAL', population: 37467,percent_obesity: 39.2, city_median_income: 77790, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Lake Elsinore', heal_no_heal: 'HEAL', population: 51821,percent_obesity: 38.22, city_median_income: 63771, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Palm Springs', heal_no_heal: 'HEAL', population: 44552,percent_obesity: 38.75, city_median_income: 45989, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Riverside', name: 'Perris', heal_no_heal: 'HEAL', population: 68386,percent_obesity: 44.22, city_median_income: 49812, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Riverside', heal_no_heal: 'HEAL', population: 303871,percent_obesity: 39.2, city_median_income: 57555, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Citrus Heights', heal_no_heal: 'HEAL', population: 83301,percent_obesity: 34.72, city_median_income: 54575, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Elk Grove', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 78564, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Rancho Cordova', heal_no_heal: 'HEAL', population: 64776,percent_obesity: 39.11, city_median_income: 53878, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Roseville', heal_no_heal: 'HEAL', population: 118788,percent_obesity: 26.38, city_median_income: 75245, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Sacramento', heal_no_heal: 'HEAL', population: 466488,percent_obesity: 39.94, city_median_income: 50781, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Adelanto', heal_no_heal: 'HEAL', population: 31765,percent_obesity: 40.37, city_median_income: 42208, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Apple Valley', heal_no_heal: 'HEAL', population: 69135,percent_obesity: 35.07, city_median_income: 50664, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Barstow', heal_no_heal: 'HEAL', population: 22639,percent_obesity: 42.29, city_median_income: 45417, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Chino  ', heal_no_heal: 'HEAL', population: 77983,percent_obesity: 41.82, city_median_income: 73400, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Chino Hills', heal_no_heal: 'HEAL', population: 74799,percent_obesity: 27.03, city_median_income: 101905, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Colton', heal_no_heal: 'HEAL', population: 52154,percent_obesity: 46.06, city_median_income: 41788, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Fontana', heal_no_heal: 'HEAL', population: 196069,percent_obesity: 44.87, city_median_income: 64058, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Hesperia', heal_no_heal: 'HEAL', population: 90173,percent_obesity: 41, city_median_income: 48624, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Ontario', heal_no_heal: 'HEAL', population: 163924,percent_obesity: 43.29, city_median_income: 55902, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Rancho Cucamonga', heal_no_heal: 'HEAL', population: 165269,percent_obesity: 29.97, city_median_income: 78782, joined_in: '2009', city_designation: 'fit', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Redlands', heal_no_heal: 'HEAL', population: 68747,percent_obesity: 30.77, city_median_income: 68015, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Rialto', heal_no_heal: 'HEAL', population: 99171,percent_obesity: 44.99, city_median_income: 50452, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Victorville', heal_no_heal: 'HEAL', population: 115903,percent_obesity: 40.08, city_median_income: 52357, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Yucca Valley', heal_no_heal: 'HEAL', population: 20700,percent_obesity: 37.06, city_median_income: 45502, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Chula Vista', heal_no_heal: 'HEAL', population: 243916,percent_obesity: 37.89, city_median_income: 65526, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Coronado', heal_no_heal: 'HEAL', population: 18912,percent_obesity: 21.93, city_median_income: 93777, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'La Mesa', heal_no_heal: 'HEAL', population: 57065,percent_obesity: 36.9, city_median_income: 54519, joined_in: '2009', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'National City', heal_no_heal: 'HEAL', population: 58582,percent_obesity: 50, city_median_income: 36907, joined_in: '2013', city_designation: 'active', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Poway', heal_no_heal: 'HEAL', population: 47811,percent_obesity: 26.06, city_median_income: 94872, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Solana Beach', heal_no_heal: 'HEAL', population: 7379,percent_obesity: 25.26, city_median_income: 85317, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'San Francisco', name: 'San Francisco', heal_no_heal: 'HEAL', population: 23645,percent_obesity: 48, city_median_income: 72947, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Joaquin', name: 'Lodi', heal_no_heal: 'HEAL', population: 62134,percent_obesity: 39.23, city_median_income: 49318, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Joaquin', name: 'Stockton', heal_no_heal: 'HEAL', population: 63632,percent_obesity: 47.03, city_median_income: 47365, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'San Luis Obispo', name: 'Arroyo Grande', heal_no_heal: 'HEAL', population: 17252,percent_obesity: 31.38, city_median_income: 64900, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Luis Obispo', name: 'Grover Beach', heal_no_heal: 'HEAL', population: 13156,percent_obesity: 40, city_median_income: 47708, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'San Luis Obispo', name: 'San Luis Obispo', heal_no_heal: 'HEAL', population: 84950,percent_obesity: 42.72, city_median_income: 42528, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Belmont', heal_no_heal: 'HEAL', population: 25835,percent_obesity: 24.04, city_median_income: 100417, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Brisbane', heal_no_heal: 'HEAL', population: 4282,percent_obesity: 31.46, city_median_income: 79129, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Burlingame', heal_no_heal: 'HEAL', population: 28806,percent_obesity: 24.4, city_median_income: 79760, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'San Mateo', name: 'Daly City', heal_no_heal: 'HEAL', population: 101123,percent_obesity: 39.22, city_median_income: 75399, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Foster City', heal_no_heal: 'HEAL', population: 30567,percent_obesity: 29.9, city_median_income: 115053, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Menlo Park', heal_no_heal: 'HEAL', population: 32026,percent_obesity: 26.05, city_median_income: 111244, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'South San Francisco', heal_no_heal: 'HEAL', population: 94396,percent_obesity: 51.28, city_median_income: 75543, joined_in: '2012', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Santa Barbara', name: 'Lompoc', heal_no_heal: 'HEAL', population: 42434,percent_obesity: 48.57, city_median_income: 47592, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Santa Barbara', name: 'Santa Barbara', heal_no_heal: 'HEAL', population: 324528,percent_obesity: 46.52, city_median_income: 63401, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Santa Clara', name: 'Cupertino', heal_no_heal: 'HEAL', population: 58302,percent_obesity: 18.37, city_median_income: 124825, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Santa Clara', name: 'Mountain View', heal_no_heal: 'HEAL', population: 74066,percent_obesity: 41.97, city_median_income: 91446, joined_in: '2009', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Santa Cruz', name: 'Scotts Valley', heal_no_heal: 'HEAL', population: 89736,percent_obesity: 23.02, city_median_income: 99076, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Santa Cruz', name: 'Watsonville', heal_no_heal: 'HEAL', population: 51199,percent_obesity: 49.31, city_median_income: 46073, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Shasta', name: 'Anderson', heal_no_heal: 'HEAL', population: 9932,percent_obesity: 39.31, city_median_income: 34862, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Shasta', name: 'Redding', heal_no_heal: 'HEAL', population: 89861,percent_obesity: 30.52, city_median_income: 43157, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Benicia', heal_no_heal: 'HEAL', population: 26997,percent_obesity: 29.92, city_median_income: 90338, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Fairfield', heal_no_heal: 'HEAL', population: 105321,percent_obesity: 39.25, city_median_income: 68037, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Suisun City', heal_no_heal: 'HEAL', population: 291707,percent_obesity: 42.43, city_median_income: 71411, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Vallejo', heal_no_heal: 'HEAL', population: 69516,percent_obesity: 38.43, city_median_income: 62325, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Cotati', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 62969, joined_in: '2010', city_designation: 'active', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Healdsburg', heal_no_heal: 'HEAL', population: 11254,percent_obesity: 43.6, city_median_income: 63666, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Petaluma', heal_no_heal: 'HEAL', population: 57941,percent_obesity: 32.39, city_median_income: 76185, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Rohnert Park', heal_no_heal: 'HEAL', population: 40971,percent_obesity: 32.37, city_median_income: 56950, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Sebastopol', heal_no_heal: 'HEAL', population: 33025,percent_obesity: 45.59, city_median_income: 60000, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Windsor', heal_no_heal: 'HEAL', population: 26801,percent_obesity: 32.43, city_median_income: 77157, joined_in: '2010', city_designation: 'Fit', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Ceres', heal_no_heal: 'HEAL', population: 45417,percent_obesity: 44.22, city_median_income: 48550, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Ceres School District', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: nil, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Hughson', heal_no_heal: 'HEAL', population: 6640,percent_obesity: 38.73, city_median_income: 48875, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Modesto', heal_no_heal: 'HEAL', population: 201165,percent_obesity: 39.59, city_median_income: 49852, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Newman', heal_no_heal: 'HEAL', population: 10224,percent_obesity: 48.11, city_median_income: 48409, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Oakdale', heal_no_heal: 'HEAL', population: 20675,percent_obesity: 34.62, city_median_income: 61183, joined_in: '2012', city_designation: 'active', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Patterson', heal_no_heal: 'HEAL', population: 20413,percent_obesity: 45.63, city_median_income: 58090, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Stanislaus', name: 'Riverbank', heal_no_heal: 'HEAL', population: 22678,percent_obesity: 43.71, city_median_income: 59779, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Turlock', heal_no_heal: 'HEAL', population: 145438,percent_obesity: 26.9, city_median_income: 50862, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Waterford', heal_no_heal: 'HEAL', population: 8456,percent_obesity: 36.85, city_median_income: 54583, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tehama', name: 'Red Bluff', heal_no_heal: 'HEAL', population: 14076,percent_obesity: 35.85, city_median_income: 31690, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Dinuba', heal_no_heal: 'HEAL', population: 21453,percent_obesity: 44.87, city_median_income: 40463, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Moorpark', heal_no_heal: 'HEAL', population: 34421,percent_obesity: 29.16, city_median_income: 103009, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Ventura', name: 'Ventura', heal_no_heal: 'HEAL', population: 115942,percent_obesity: 43.67, city_median_income: 66226, joined_in: '2011', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Yolo', name: 'Davis', heal_no_heal: 'HEAL', population: 65622,percent_obesity: 24.05, city_median_income: 61182, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Yolo', name: 'West Sacramento', heal_no_heal: 'HEAL', population: 48744,percent_obesity: 43.56, city_median_income: 54040, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Yolo', name: 'Winters', heal_no_heal: 'HEAL', population: 6624,percent_obesity: 42.9, city_median_income: 59559, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Yolo', name: 'Woodland', heal_no_heal: 'HEAL', population: 55468,percent_obesity: 42.59, city_median_income: 56859, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Oakland', heal_no_heal: 'NO HEAL', population: 420183,percent_obesity: 42.3, city_median_income: 51144, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Concord', heal_no_heal: 'NO HEAL', population: 123776,percent_obesity: 41.5, city_median_income: 65769, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Pittsburg', heal_no_heal: 'NO HEAL', population: 63652,percent_obesity: 45.6, city_median_income: 57965, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Richmond', heal_no_heal: 'NO HEAL', population: 103577,percent_obesity: 51, city_median_income: 54554, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Fresno', heal_no_heal: 'NO HEAL', population: 489171,percent_obesity: 42.5, city_median_income: 43440, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Selma', heal_no_heal: 'NO HEAL', population: 23286,percent_obesity: 47, city_median_income: 42459, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Humboldt', name: 'Eureka', heal_no_heal: 'NO HEAL', population: 26157,percent_obesity: 41, city_median_income: 36081, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Imperial', name: 'Calexico', heal_no_heal: 'NO HEAL', population: 28733,percent_obesity: 47.6, city_median_income: 35988, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kern', name: 'Wasco', heal_no_heal: 'NO HEAL', population: 24999,percent_obesity: 46.8, city_median_income: 40295, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kings', name: 'Hanford', heal_no_heal: 'NO HEAL', population: 51965,percent_obesity: 40.5, city_median_income: 54421, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kings', name: 'Lemoore', heal_no_heal: 'NO HEAL', population: 24502,percent_obesity: 42.4, city_median_income: 58706, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Bellflower', heal_no_heal: 'NO HEAL', population: 77110,percent_obesity: 42.7, city_median_income: 50244, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Compton', heal_no_heal: 'NO HEAL', population: 99242,percent_obesity: 50.8, city_median_income: 43311, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Covina', heal_no_heal: 'NO HEAL', population: 49552,percent_obesity: 40.6, city_median_income: 67638, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Cudahy', heal_no_heal: 'NO HEAL', population: 25879,percent_obesity: 49.5, city_median_income: 39338, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Downey', heal_no_heal: 'NO HEAL', population: 113379,percent_obesity: 40.1, city_median_income: 59773, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Gardena', heal_no_heal: 'NO HEAL', population: 61781,percent_obesity: 49.9, city_median_income: 46961, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Lomita', heal_no_heal: 'NO HEAL', population: 21056,percent_obesity: 44, city_median_income: 61327, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Los Angeles', heal_no_heal: 'NO HEAL', population: 4045873,percent_obesity: 45.2, city_median_income: 50028, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Norwalk', heal_no_heal: 'NO HEAL', population: 109695,percent_obesity: 46.5, city_median_income: 60090, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'West Covina', heal_no_heal: 'NO HEAL', population: 112666,percent_obesity: 41, city_median_income: 68308, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Madera', name: 'Madera', heal_no_heal: 'NO HEAL', population: 56710,percent_obesity: 45.1, city_median_income: 41991, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Atwater', heal_no_heal: 'NO HEAL', population: 27571,percent_obesity: 45.1, city_median_income: 40752, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Los Banos', heal_no_heal: 'NO HEAL', population: 36052,percent_obesity: 44.5, city_median_income: 51478, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Monterey', heal_no_heal: 'NO HEAL', population: 29322,percent_obesity: 41.2, city_median_income: 62720, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Salinas', heal_no_heal: 'NO HEAL', population: 150898,percent_obesity: 46.7, city_median_income: 50568, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Soledad', heal_no_heal: 'NO HEAL', population: 27905,percent_obesity: 48.5, city_median_income: 53140, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Buena Park', heal_no_heal: 'NO HEAL', population: 82768,percent_obesity: 41.8, city_median_income: 64809, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Orange', heal_no_heal: 'NO HEAL', population: 140849,percent_obesity: 43.2, city_median_income: 78654, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Stanton', heal_no_heal: 'NO HEAL', population: 39276,percent_obesity: 51.8, city_median_income: 51933, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Blythe', heal_no_heal: 'NO HEAL', population: 21695,percent_obesity: 40.3, city_median_income: 46235, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Coachella', heal_no_heal: 'NO HEAL', population: 40517,percent_obesity: 48.7, city_median_income: 43357, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Indio', heal_no_heal: 'NO HEAL', population: 81512,percent_obesity: 44.4, city_median_income: 52199, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Moreno Valley', heal_no_heal: 'NO HEAL', population: 183860,percent_obesity: 42.3, city_median_income: 56768, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Galt', heal_no_heal: 'NO HEAL', population: 23913,percent_obesity: 39.9, city_median_income: 59125, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Benito', name: 'Hollister', heal_no_heal: 'NO HEAL', population: 37051,percent_obesity: 43.2, city_median_income: 62570, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Loma Linda', heal_no_heal: 'NO HEAL', population: 22632,percent_obesity: 41.4, city_median_income: 61116, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Montclair', heal_no_heal: 'NO HEAL', population: 37017,percent_obesity: 43.9, city_median_income: 50959, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'San Bernardino', heal_no_heal: 'NO HEAL', population: 205493,percent_obesity: 43.9, city_median_income: 40161, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Upland', heal_no_heal: 'NO HEAL', population: 75137,percent_obesity: 42.4, city_median_income: 67449, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Lemon Grove', heal_no_heal: 'NO HEAL', population: 25611,percent_obesity: 46.3, city_median_income: 50353, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'San Bruno', heal_no_heal: 'NO HEAL', population: 43444,percent_obesity: 43.4, city_median_income: 77468, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Santa Clara', name: 'Gilroy', heal_no_heal: 'NO HEAL', population: 51173,percent_obesity: 43.6, city_median_income: 75483, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Porterville', heal_no_heal: 'NO HEAL', population: 51638,percent_obesity: 44, city_median_income: 39933, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Tulare', heal_no_heal: 'NO HEAL', population: 57375,percent_obesity: 43.6, city_median_income: 46274, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Visalia', heal_no_heal: 'NO HEAL', population: 120958,percent_obesity: 40.8, city_median_income: 54019, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Oxnard', heal_no_heal: 'NO HEAL', population: 194905,percent_obesity: 47.9, city_median_income: 60191, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Port Hueneme', heal_no_heal: 'NO HEAL', population: 22202,percent_obesity: 52.6, city_median_income: 52244, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Santa Paula', heal_no_heal: 'NO HEAL', population: 29539,percent_obesity: 47.9, city_median_income: 53359, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }

    cities_added = 0
    cities_updated = 0
    add_error_count = 0
    update_error_count = 0
    city_designations_added = 0
    city_designation_additions_skipped = 0
    city_designation_error_count = 0

    error_messages = []

    city_data.each do |city|
      saved_city = dbi_ccpha.cities.find_by(name: city[:name], county: city[:county])
      if saved_city.nil?

        saved_city = Heal::City.new
        saved_city.database_instance = dbi_ccpha
        saved_city.name = city[:name]
        saved_city.state = "CA"
        saved_city.county = city[:county]
        saved_city.jurisdiction_type = dbi_ccpha.jurisdiction_types.find_by(name: "City")
        saved_city.kp_service_area = true
        if saved_city.save
          cities_added += 1
        else
          add_error_count += 1
          error_messages << saved_city.errors.inspect
          break
        end

      end

      saved_city.population = city[:population] if city[:population].present?
      saved_city.percent_obesity = city[:percent_obesity] if city[:percent_obesity].present?
      saved_city.city_median_income = city[:city_median_income] if city[:city_median_income].present?
      if city[:policy_change_in_progress] == ''
        saved_city.policy_change_in_progress = false
      else
        saved_city.policy_change_in_progress = true
      end
      if city[:city_designation] != ''
        if saved_city.city_designation_achievements.nil? or saved_city.city_designation_achievements.count == 0
          cd = dbi_ccpha.city_designations.where("lower(name) = ?", city[:city_designation].downcase).first #make case insensitive
          if cd.nil?
            city_designation_error_count += 1
            error_messages << "can't find city_designation #{city[:city_designation]}"
            break
          else
            cda = Heal::CityDesignationAchievement.new
            cda.database_instance = dbi_ccpha
            cda.city_id = saved_city.id
            cda.city_designation_id = cd.id
            if cda.save
              city_designations_added += 1
            else
              city_designation_error_count += 1
              error_messages << cda.errors.inspect
            end
          end
        else
          city_designation_additions_skipped += 1
        end
      end


      if saved_city.save
        cities_updated += 1
      else
        error_messages << saved_city.errors.inspect
        update_error_count += 1
        break
      end

    end

    puts error_messages
    puts "Cities added: #{cities_added}/ errors:#{add_error_count}, updated: #{cities_updated}/ errors:#{update_error_count}. City designations added: #{city_designations_added}/ errors: #{city_designation_error_count}/ skipped: #{city_designation_additions_skipped}."
  end

  desc "upload CCPHA cities data 2"
  task ccpha_upload_2: :environment do
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    city_data = []

    city_data << { county: 'Alameda', name: 'Emeryville', compact_mixed_use: '2011', transit_oriented: '2011', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'Alameda', name: 'Fremont', compact_mixed_use: '2011', transit_oriented: '2011', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'Alameda', name: 'Hayward', compact_mixed_use: '2011', transit_oriented: '2011', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'Alameda', name: 'Livermore', compact_mixed_use: '', transit_oriented: '2010', walkability: '2010', capital_improvement: '', open_space: '', joint_use: '2010' }
    city_data << { county: 'Alameda', name: 'Newark', compact_mixed_use: '', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: '', joint_use: '' }
    city_data << { county: 'Alameda', name: 'San Leandro', compact_mixed_use: '2011', transit_oriented: 'P', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'Alameda', name: 'Union City', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Butte', name: 'Chico', compact_mixed_use: '2011', transit_oriented: '2011', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '' }
    city_data << { county: 'Butte', name: 'Gridley', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2011', capital_improvement: '2011', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'Antioch', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'Brentwood', compact_mixed_use: '', transit_oriented: '', walkability: '2011', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'Danville', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2013', capital_improvement: '2013', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'El Cerrito', compact_mixed_use: '', transit_oriented: '', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'Lafayette', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'Martinez', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '', capital_improvement: '', open_space: '', joint_use: 'P' }
    city_data << { county: 'Contra Costa', name: 'San Pablo', compact_mixed_use: '2011', transit_oriented: '2011', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'Del Norte', name: 'Crescent City', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Fresno', name: 'Clovis', compact_mixed_use: 'P', transit_oriented: 'H', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Fresno', name: 'Fowler', compact_mixed_use: 'P', transit_oriented: 'H', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Fresno', name: 'Huron', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: '' }
    city_data << { county: 'Fresno', name: 'Reedley', compact_mixed_use: 'H', transit_oriented: 'H', walkability: '2013', capital_improvement: '2013', open_space: '2013', joint_use: '' }
    city_data << { county: 'Fresno', name: 'San Joaquin', compact_mixed_use: '2011', transit_oriented: '', walkability: '2011', capital_improvement: '2011', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'Fresno', name: 'Sanger', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Glen', name: 'Orland', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Humboldt', name: 'Arcata', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'Humboldt', name: 'Ferndale', compact_mixed_use: '-', transit_oriented: '-', walkability: 'H', capital_improvement: 'H', open_space: '-', joint_use: '-' }
    city_data << { county: 'Imperial', name: 'Brawley', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Imperial', name: 'El Centro', compact_mixed_use: '2012', transit_oriented: '2012', walkability: '2012', capital_improvement: '2012', open_space: '2012', joint_use: 'P' }
    city_data << { county: 'Imperial', name: 'Holtville', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Inyo', name: 'Bishop', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Kern', name: 'Bakersfield', compact_mixed_use: 'P', transit_oriented: '', walkability: '2013', capital_improvement: '2013', open_space: 'H', joint_use: '' }
    city_data << { county: 'Kern', name: 'Delano', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: '   ', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Alhambra', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Avalon', compact_mixed_use: '', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Azusa', compact_mixed_use: '2011', transit_oriented: 'P', walkability: 'H', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Baldwin Park', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '2011', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Bell  ', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'Bell Gardens', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Beverly Hills', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'H', capital_improvement: 'P', open_space: 'H', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Calabasas', compact_mixed_use: 'P', transit_oriented: '2013', walkability: '2013', capital_improvement: 'P', open_space: '', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Carson', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Claremont', compact_mixed_use: '2013', transit_oriented: '2013', walkability: '2013', capital_improvement: '2013', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Duarte', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'El Monte', compact_mixed_use: '2012', transit_oriented: '2012', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Hawaiian Gardens', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'Hawthorne', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Hermosa Beach', compact_mixed_use: '', transit_oriented: '', walkability: '2011', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'Huntington Park', compact_mixed_use: 'P', transit_oriented: '', walkability: 'H', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Inglewood', compact_mixed_use: '', transit_oriented: '', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'La Puente', compact_mixed_use: 'P', transit_oriented: '', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Lancaster', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Lawndale', compact_mixed_use: 'P', transit_oriented: '', walkability: '2011', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'Long Beach', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'Manhattan Beach', compact_mixed_use: 'P', transit_oriented: '', walkability: '2011', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Maywood', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Paramount', compact_mixed_use: '2012', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Pasadena', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Pico Rivera', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'Pomona', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2012', capital_improvement: '2012', open_space: '2012', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Redondo Beach', compact_mixed_use: 'P', transit_oriented: '', walkability: '2011', capital_improvement: '2011', open_space: 'P', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'San Fernando', compact_mixed_use: 'P', transit_oriented: '', walkability: '', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'Los Angeles', name: 'Santa Clarita', compact_mixed_use: '2011', transit_oriented: '2011', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Santa Monica', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'South El Monte', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '', capital_improvement: '', open_space: '', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'South Gate', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Los Angeles', name: 'Torrance', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2011', capital_improvement: 'P', open_space: 'H', joint_use: 'H' }
    city_data << { county: 'Los Angeles', name: 'West Hollywood', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Marin', name: 'Corte Madera', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Marin', name: 'Marin City', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Marin', name: 'Novato', compact_mixed_use: '2012', transit_oriented: '2012', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: '' }
    city_data << { county: 'Mendocino', name: 'Fort Bragg', compact_mixed_use: 'H', transit_oriented: 'H', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Merced', name: 'Gustine', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Merced', name: 'Livingston', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: '' }
    city_data << { county: 'Merced', name: 'Merced', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: 'H', joint_use: 'H' }
    city_data << { county: 'Monterey', name: 'Greenfield', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Monterey', name: 'Seaside', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: '' }
    city_data << { county: 'Napa', name: 'American Canyon', compact_mixed_use: 'P', transit_oriented: '', walkability: '', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Napa', name: 'Yountville', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Orange', name: 'Anaheim', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: 'H', joint_use: '' }
    city_data << { county: 'Orange', name: 'Brea', compact_mixed_use: 'H', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: 'H', joint_use: 'P' }
    city_data << { county: 'Orange', name: 'Dana Point', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Orange', name: 'Fullerton', compact_mixed_use: '2012', transit_oriented: '2012', walkability: '2012', capital_improvement: '2012', open_space: '2012', joint_use: '2012' }
    city_data << { county: 'Orange', name: 'Irvine', compact_mixed_use: '2012', transit_oriented: '2012', walkability: '2012', capital_improvement: 'H', open_space: 'P', joint_use: '2012' }
    city_data << { county: 'Orange', name: 'LaHabra', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Orange', name: 'Mission Viejo', compact_mixed_use: '2012', transit_oriented: '2012', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Orange', name: 'Newport Beach', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Orange', name: 'Placentia', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'Orange', name: 'San Clemente', compact_mixed_use: '2014', transit_oriented: '2014', walkability: '2014', capital_improvement: '2014', open_space: '2014', joint_use: '2014' }
    city_data << { county: 'Orange', name: 'Santa Ana', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2014', capital_improvement: '', open_space: '2014', joint_use: '2014' }
    city_data << { county: 'Orange', name: 'Westminster', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: 'H', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'Banning', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Riverside', name: 'Beaumont', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'H', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Riverside', name: 'Canyon Lake', compact_mixed_use: '', transit_oriented: 'H', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'Cathedral City', compact_mixed_use: '2010', transit_oriented: '2010', walkability: '2012', capital_improvement: 'H', open_space: '2010', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'Corona', compact_mixed_use: 'P', transit_oriented: 'H', walkability: 'H', capital_improvement: 'P', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'Desert Hot Springs', compact_mixed_use: 'H', transit_oriented: 'H', walkability: '2013', capital_improvement: 'P', open_space: 'P', joint_use: '2013' }
    city_data << { county: 'Riverside', name: 'Eastvale', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'La Quinta', compact_mixed_use: '2011', transit_oriented: '2013', walkability: '2013', capital_improvement: 'P', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'Lake Elsinore', compact_mixed_use: '', transit_oriented: 'H', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Riverside', name: 'Palm Springs', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2011', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Riverside', name: 'Perris', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Riverside', name: 'Riverside', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Sacramento', name: 'Citrus Heights', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2011', capital_improvement: 'P', open_space: '2011', joint_use: 'P' }
    city_data << { county: 'Sacramento', name: 'Elk Grove', compact_mixed_use: '', transit_oriented: '', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: '' }
    city_data << { county: 'Sacramento', name: 'Rancho Cordova', compact_mixed_use: 'P', transit_oriented: 'P', walkability: '2013', capital_improvement: 'H', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Sacramento', name: 'Roseville', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Sacramento', name: 'Sacramento', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'San Bernardino', name: 'Adelanto', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'Apple Valley', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'Barstow', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'San Bernardino', name: 'Chino  ', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'San Bernardino', name: 'Chino Hills', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'Colton', compact_mixed_use: 'P', transit_oriented: '', walkability: '2013', capital_improvement: '2013', open_space: '', joint_use: '' }
    city_data << { county: 'San Bernardino', name: 'Fontana', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'San Bernardino', name: 'Hesperia', compact_mixed_use: '', transit_oriented: '', walkability: '2011', capital_improvement: '', open_space: '2011', joint_use: '' }
    city_data << { county: 'San Bernardino', name: 'Ontario', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'San Bernardino', name: 'Rancho Cucamonga', compact_mixed_use: '2011', transit_oriented: '2011', walkability: '2011', capital_improvement: '', open_space: '2011', joint_use: '2011' }
    city_data << { county: 'San Bernardino', name: 'Redlands', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'San Bernardino', name: 'Rialto', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: '' }
    city_data << { county: 'San Bernardino', name: 'Victorville', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: '' }
    city_data << { county: 'San Bernardino', name: 'Yucca Valley', compact_mixed_use: 'P', transit_oriented: '', walkability: '2014', capital_improvement: '2014', open_space: 'P', joint_use: '2014' }
    city_data << { county: 'San Diego', name: 'Chula Vista', compact_mixed_use: '2010', transit_oriented: '', walkability: '2010', capital_improvement: '2010', open_space: '2010', joint_use: '' }
    city_data << { county: 'San Diego', name: 'Coronado', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'San Diego', name: 'La Mesa', compact_mixed_use: '2012', transit_oriented: '2012', walkability: '2012', capital_improvement: '2012', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'San Diego', name: 'National City', compact_mixed_use: 'H', transit_oriented: 'H', walkability: '2013', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'San Diego', name: 'Poway', compact_mixed_use: 'P', transit_oriented: '', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'San Diego', name: 'Solana Beach', compact_mixed_use: 'P', transit_oriented: '', walkability: 'H', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'San Francisco', name: 'San Francisco', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'San Joaquin', name: 'Lodi', compact_mixed_use: '2010', transit_oriented: '2010', walkability: '', capital_improvement: '2010', open_space: '2010', joint_use: '2010' }
    city_data << { county: 'San Joaquin', name: 'Stockton', compact_mixed_use: 'P', transit_oriented: '', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'San Luis Obispo', name: 'Arroyo Grande', compact_mixed_use: '2013', transit_oriented: 'H', walkability: '2012', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'San Luis Obispo', name: 'Grover Beach', compact_mixed_use: 'H', transit_oriented: 'H', walkability: '2013', capital_improvement: '2013', open_space: 'H', joint_use: '2013' }
    city_data << { county: 'San Luis Obispo', name: 'San Luis Obispo', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'San Mateo', name: 'Belmont', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Mateo', name: 'Brisbane', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'San Mateo', name: 'Burlingame', compact_mixed_use: 'P', transit_oriented: '', walkability: '2012', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'San Mateo', name: 'Daly City', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'San Mateo', name: 'Foster City', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Mateo', name: 'Menlo Park', compact_mixed_use: '2013', transit_oriented: 'P', walkability: '2013', capital_improvement: '2013', open_space: 'P', joint_use: '2013' }
    city_data << { county: 'San Mateo', name: 'South San Francisco', compact_mixed_use: '2014', transit_oriented: '2014', walkability: '2014', capital_improvement: '2014', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Santa Barbara', name: 'Lompoc', compact_mixed_use: '2013', transit_oriented: 'H', walkability: '2013', capital_improvement: '2013', open_space: '', joint_use: 'H' }
    city_data << { county: 'Santa Barbara', name: 'Santa Barbara', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: 'H', joint_use: 'H' }
    city_data << { county: 'Santa Clara', name: 'Cupertino', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Santa Clara', name: 'Mountain View', compact_mixed_use: '2012', transit_oriented: '2012', walkability: '2012', capital_improvement: '2012', open_space: '2012', joint_use: '2012' }
    city_data << { county: 'Santa Cruz', name: 'Scotts Valley', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Santa Cruz', name: 'Watsonville', compact_mixed_use: '2010', transit_oriented: '', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Shasta', name: 'Anderson', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '2012', open_space: 'P', joint_use: 'H' }
    city_data << { county: 'Shasta', name: 'Redding', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Solano', name: 'Benicia', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: '' }
    city_data << { county: 'Solano', name: 'Fairfield', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Solano', name: 'Suisun City', compact_mixed_use: '', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Solano', name: 'Vallejo', compact_mixed_use: '2012', transit_oriented: '2012', walkability: '2012', capital_improvement: 'H', open_space: 'H', joint_use: 'H' }
    city_data << { county: 'Sonoma', name: 'Cotati', compact_mixed_use: '2013', transit_oriented: '2013', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: '' }
    city_data << { county: 'Sonoma', name: 'Healdsburg', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Sonoma', name: 'Petaluma', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Sonoma', name: 'Rohnert Park', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Sonoma', name: 'Sebastopol', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Sonoma', name: 'Windsor', compact_mixed_use: '2013', transit_oriented: '2013', walkability: '2013', capital_improvement: 'H', open_space: '', joint_use: '2013' }
    city_data << { county: 'Stanislaus', name: 'Ceres', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Stanislaus', name: 'Ceres School District', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Stanislaus', name: 'Hughson', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Stanislaus', name: 'Modesto', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Stanislaus', name: 'Newman', compact_mixed_use: '', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Stanislaus', name: 'Oakdale', compact_mixed_use: 'P', transit_oriented: '', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Stanislaus', name: 'Patterson', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'H', capital_improvement: 'P', open_space: '', joint_use: 'H' }
    city_data << { county: 'Stanislaus', name: 'Riverbank', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'H', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Stanislaus', name: 'Turlock', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Stanislaus', name: 'Waterford', compact_mixed_use: '', transit_oriented: '', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Tehama', name: 'Red Bluff', compact_mixed_use: 'P', transit_oriented: '', walkability: '', capital_improvement: '', open_space: '', joint_use: '' }
    city_data << { county: 'Tulare', name: 'Dinuba', compact_mixed_use: 'H', transit_oriented: 'H', walkability: 'H', capital_improvement: 'H', open_space: '', joint_use: 'H' }
    city_data << { county: 'Ventura', name: 'Moorpark', compact_mixed_use: '', transit_oriented: '', walkability: '2014', capital_improvement: '', open_space: '', joint_use: 'H' }
    city_data << { county: 'Ventura', name: 'Ventura', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Yolo', name: 'Davis', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: '', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Yolo', name: 'West Sacramento', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Yolo', name: 'Winters', compact_mixed_use: 'P', transit_oriented: '', walkability: '', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Yolo', name: 'Woodland', compact_mixed_use: 'P', transit_oriented: 'P', walkability: 'P', capital_improvement: 'P', open_space: 'P', joint_use: 'P' }
    city_data << { county: 'Alameda', name: 'Oakland', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Contra Costa', name: 'Concord', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Contra Costa', name: 'Pittsburg', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Contra Costa', name: 'Richmond', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Fresno', name: 'Fresno', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Fresno', name: 'Selma', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Humboldt', name: 'Eureka', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Imperial', name: 'Calexico', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Kern', name: 'Wasco', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Kings', name: 'Hanford', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Kings', name: 'Lemoore', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Bellflower', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Compton', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Covina', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Cudahy', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Downey', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Gardena', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Lomita', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Los Angeles', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'Norwalk', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Los Angeles', name: 'West Covina', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Madera', name: 'Madera', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Merced', name: 'Atwater', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Merced', name: 'Los Banos', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Monterey', name: 'Monterey', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Monterey', name: 'Salinas', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Monterey', name: 'Soledad', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Orange', name: 'Buena Park', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Orange', name: 'Orange', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Orange', name: 'Stanton', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Riverside', name: 'Blythe', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Riverside', name: 'Coachella', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Riverside', name: 'Indio', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Riverside', name: 'Moreno Valley', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Sacramento', name: 'Galt', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Benito', name: 'Hollister', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'Loma Linda', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'Montclair', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'San Bernardino', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Bernardino', name: 'Upland', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Diego', name: 'Lemon Grove', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'San Mateo', name: 'San Bruno', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Santa Clara', name: 'Gilroy', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Tulare', name: 'Porterville', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Tulare', name: 'Tulare', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Tulare', name: 'Visalia', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Ventura', name: 'Oxnard', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Ventura', name: 'Port Hueneme', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }
    city_data << { county: 'Ventura', name: 'Santa Paula', compact_mixed_use: '-', transit_oriented: '-', walkability: '-', capital_improvement: '-', open_space: '-', joint_use: '-' }


    policy_adoptions_added = 0
    policy_adoptions_skipped = 0
    update_error_count = 0
    error_messages = []

    policy_compact_mixed_use = dbi_ccpha.policies.find_by(name: "Compact Mixed Use")
    policy_transit_oriented = dbi_ccpha.policies.find_by(name: "Transit Oriented Development")
    policy_walkability = dbi_ccpha.policies.find_by(name: "Increase Walkability and Bikeability")
    policy_capital_improvement = dbi_ccpha.policies.find_by(name: "Capital Improvement Priority on PA, Walking, and Biking")
    policy_open_space = dbi_ccpha.policies.find_by(name: "Open Space (increase)")
    policy_joint_use = dbi_ccpha.policies.find_by(name: "Joint Use")

    city_data.each do |city|
      saved_city = dbi_ccpha.cities.find_by(name: city[:name], county: city[:county])
      if saved_city.nil?
        error_messages << "error: city '#{city[:name]}' was not found."
        break
      end

      policies = []
      policies << { policy_string: city[:compact_mixed_use], policy: policy_compact_mixed_use}
      policies << { policy_string: city[:transit_oriented], policy: policy_transit_oriented}
      policies << { policy_string: city[:walkability], policy: policy_walkability}
      policies << { policy_string: city[:capital_improvement], policy: policy_capital_improvement}
      policies << { policy_string: city[:open_space], policy: policy_open_space}
      policies << { policy_string: city[:joint_use], policy: policy_joint_use}

      policies.each do |p|
        policy = p[:policy]
        if policy.nil?
          error_messages << "error: there was no policy for policy string '#{p[:policy_string]}'."
          update_error_count += 1
          break
        end
        result = add_policy_adoption_or_resolution(dbi_ccpha, saved_city, policy, p[:policy_string])
        if result == 'ok'
          policy_adoptions_added += 1
        elsif result == 'skip'
          policy_adoptions_skipped += 1
        elsif result != "empty"
          error_messages << "error: city '#{city[:name]}' policy #{policy.name} could not be added. #{result}"
          update_error_count += 1
          break
        end
      end

    end

    puts error_messages
    puts "Policy adoptions added: #{policy_adoptions_added}/skipped: #{policy_adoptions_skipped}/errors:#{update_error_count}."

  end

  desc "upload CCPHA cities data 3"
  task ccpha_upload_3: :environment do
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    city_data = []

    city_data << { county: 'Alameda', name: 'Emeryville', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Alameda', name: 'Fremont', farmers_markets: '2011', community_gardens: '2011', nutrition_standards: '2011', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Alameda', name: 'Hayward', farmers_markets: '2014', community_gardens: '2014', nutrition_standards: '2014', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2014' }
    city_data << { county: 'Alameda', name: 'Livermore', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Alameda', name: 'Newark', farmers_markets: '', community_gardens: 'P', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'P' }
    city_data << { county: 'Alameda', name: 'San Leandro', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: '' }
    city_data << { county: 'Alameda', name: 'Union City', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Butte', name: 'Chico', farmers_markets: '2011', community_gardens: '2011', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Butte', name: 'Gridley', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Contra Costa', name: 'Antioch', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Contra Costa', name: 'Brentwood', farmers_markets: 'P', community_gardens: 'P', nutrition_standards: 'P', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Contra Costa', name: 'Danville', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Contra Costa', name: 'El Cerrito', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Contra Costa', name: 'Lafayette', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Contra Costa', name: 'Martinez', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Contra Costa', name: 'San Pablo', farmers_markets: 'P', community_gardens: 'P', nutrition_standards: '2012', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2012' }
    city_data << { county: 'Del Norte', name: 'Crescent City', farmers_markets: '', community_gardens: '', nutrition_standards: '2013', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Fresno', name: 'Clovis', farmers_markets: 'H', community_gardens: '', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Fresno', name: 'Fowler', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Fresno', name: 'Huron', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Fresno', name: 'Reedley', farmers_markets: '2013', community_gardens: '2013', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Fresno', name: 'San Joaquin', farmers_markets: '2011', community_gardens: '2011', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Fresno', name: 'Sanger', farmers_markets: 'H', community_gardens: 'P', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Glen', name: 'Orland', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Humboldt', name: 'Arcata', farmers_markets: 'P', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Humboldt', name: 'Ferndale', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Imperial', name: 'Brawley', farmers_markets: 'H', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Imperial', name: 'El Centro', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '2014', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Imperial', name: 'Holtville', farmers_markets: '', community_gardens: '', nutrition_standards: '2014', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Inyo', name: 'Bishop', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Kern', name: 'Bakersfield', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Kern', name: 'Delano', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Alhambra', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Avalon', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Azusa', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Baldwin Park', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: 'P', activity_breaks: 'H', ww_other: '2011' }
    city_data << { county: 'Los Angeles', name: 'Bell  ', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Bell Gardens', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Beverly Hills', farmers_markets: 'H', community_gardens: '2014', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '2013' }
    city_data << { county: 'Los Angeles', name: 'Calabasas', farmers_markets: 'P', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'P' }
    city_data << { county: 'Los Angeles', name: 'Carson', farmers_markets: '-', community_gardens: '-', nutrition_standards: '2012', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Claremont', farmers_markets: '2013', community_gardens: '2013', nutrition_standards: '2013', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Duarte', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'El Monte', farmers_markets: 'P', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Hawaiian Gardens', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Hawthorne', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Hermosa Beach', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2013' }
    city_data << { county: 'Los Angeles', name: 'Huntington Park', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Inglewood', farmers_markets: '2013', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'La Puente', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Lancaster', farmers_markets: '2012', community_gardens: 'H', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Lawndale', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Long Beach', farmers_markets: '', community_gardens: '', nutrition_standards: '2012', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Manhattan Beach', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Maywood', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Paramount', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Pasadena', farmers_markets: 'P', community_gardens: 'P', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Pico Rivera', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Pomona', farmers_markets: '2012', community_gardens: '', nutrition_standards: '2012', breastfeeding: '', activity_breaks: 'H', ww_other: '2012' }
    city_data << { county: 'Los Angeles', name: 'Redondo Beach', farmers_markets: '', community_gardens: 'P', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'San Fernando', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'Santa Clarita', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '2010' }
    city_data << { county: 'Los Angeles', name: 'Santa Monica', farmers_markets: 'P', community_gardens: 'P', nutrition_standards: '2012', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'South El Monte', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Los Angeles', name: 'South Gate', farmers_markets: 'P', community_gardens: 'P', nutrition_standards: '', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'Torrance', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Los Angeles', name: 'West Hollywood', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Marin', name: 'Corte Madera', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Marin', name: 'Marin City', farmers_markets: '', community_gardens: '', nutrition_standards: '2013', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Marin', name: 'Novato', farmers_markets: '', community_gardens: '', nutrition_standards: '2012', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Mendocino', name: 'Fort Bragg', farmers_markets: '', community_gardens: '', nutrition_standards: '2013', breastfeeding: '', activity_breaks: '2013', ww_other: '' }
    city_data << { county: 'Merced', name: 'Gustine', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Merced', name: 'Livingston', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '2014', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2014' }
    city_data << { county: 'Merced', name: 'Merced', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Monterey', name: 'Greenfield', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Monterey', name: 'Seaside', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Napa', name: 'American Canyon', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Napa', name: 'Yountville', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Anaheim', farmers_markets: '', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Brea', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Dana Point', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Fullerton', farmers_markets: 'P', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Irvine', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'LaHabra', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Mission Viejo', farmers_markets: '2013', community_gardens: '2013', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Newport Beach', farmers_markets: 'H', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Orange', name: 'Placentia', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Orange', name: 'San Clemente', farmers_markets: '2014', community_gardens: '2014', nutrition_standards: '2014', breastfeeding: 'H', activity_breaks: '', ww_other: '2014' }
    city_data << { county: 'Orange', name: 'Santa Ana', farmers_markets: '2014', community_gardens: '2014', nutrition_standards: '2014', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Orange', name: 'Westminster', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Riverside', name: 'Banning', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Riverside', name: 'Beaumont', farmers_markets: 'H', community_gardens: '', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Riverside', name: 'Canyon Lake', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Riverside', name: 'Cathedral City', farmers_markets: '2013', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2012' }
    city_data << { county: 'Riverside', name: 'Corona', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Riverside', name: 'Desert Hot Springs', farmers_markets: 'H', community_gardens: '2013', nutrition_standards: 'H', breastfeeding: '', activity_breaks: 'H', ww_other: '' }
    city_data << { county: 'Riverside', name: 'Eastvale', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Riverside', name: 'La Quinta', farmers_markets: '2013', community_gardens: '2013', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '2013', ww_other: '2013' }
    city_data << { county: 'Riverside', name: 'Lake Elsinore', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Riverside', name: 'Palm Springs', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Riverside', name: 'Perris', farmers_markets: 'H', community_gardens: '', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Riverside', name: 'Riverside', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Sacramento', name: 'Citrus Heights', farmers_markets: 'P', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Sacramento', name: 'Elk Grove', farmers_markets: '2013', community_gardens: '2013', nutrition_standards: '2013', breastfeeding: '', activity_breaks: '', ww_other: '2013' }
    city_data << { county: 'Sacramento', name: 'Rancho Cordova', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2012' }
    city_data << { county: 'Sacramento', name: 'Roseville', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Sacramento', name: 'Sacramento', farmers_markets: '', community_gardens: 'P', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Adelanto', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'Apple Valley', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'Barstow', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Chino  ', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Chino Hills', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'Colton', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'San Bernardino', name: 'Fontana', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'San Bernardino', name: 'Hesperia', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Ontario', farmers_markets: 'P', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Rancho Cucamonga', farmers_markets: '2011', community_gardens: '2011', nutrition_standards: '2012', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Redlands', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Rialto', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'San Bernardino', name: 'Victorville', farmers_markets: '', community_gardens: '', nutrition_standards: '2010', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Bernardino', name: 'Yucca Valley', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Diego', name: 'Chula Vista', farmers_markets: '', community_gardens: '2010', nutrition_standards: '2010', breastfeeding: 'P', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Diego', name: 'Coronado', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'San Diego', name: 'La Mesa', farmers_markets: '2012', community_gardens: '2012', nutrition_standards: '2012', breastfeeding: 'P', activity_breaks: '', ww_other: '2012' }
    city_data << { county: 'San Diego', name: 'National City', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: '2013' }
    city_data << { county: 'San Diego', name: 'Poway', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Diego', name: 'Solana Beach', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'San Francisco', name: 'San Francisco', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Joaquin', name: 'Lodi', farmers_markets: 'H', community_gardens: '2012', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Joaquin', name: 'Stockton', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: 'P', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Luis Obispo', name: 'Arroyo Grande', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'San Luis Obispo', name: 'Grover Beach', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'San Luis Obispo', name: 'San Luis Obispo', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Mateo', name: 'Belmont', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Mateo', name: 'Brisbane', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'San Mateo', name: 'Burlingame', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '2013', breastfeeding: '', activity_breaks: '', ww_other: '2013' }
    city_data << { county: 'San Mateo', name: 'Daly City', farmers_markets: '', community_gardens: '', nutrition_standards: 'P', breastfeeding: '', activity_breaks: 'P', ww_other: 'P' }
    city_data << { county: 'San Mateo', name: 'Foster City', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Mateo', name: 'Menlo Park', farmers_markets: 'H', community_gardens: '2013', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'San Mateo', name: 'South San Francisco', farmers_markets: '2014', community_gardens: '', nutrition_standards: '2013', breastfeeding: 'H', activity_breaks: '2013', ww_other: '2013' }
    city_data << { county: 'Santa Barbara', name: 'Lompoc', farmers_markets: '2013', community_gardens: '2013', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Santa Barbara', name: 'Santa Barbara', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Santa Clara', name: 'Cupertino', farmers_markets: '', community_gardens: 'P', nutrition_standards: '', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Santa Clara', name: 'Mountain View', farmers_markets: 'P', community_gardens: '2012', nutrition_standards: '2012', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Santa Cruz', name: 'Scotts Valley', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Santa Cruz', name: 'Watsonville', farmers_markets: '', community_gardens: '', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Shasta', name: 'Anderson', farmers_markets: 'H', community_gardens: 'P', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '2011' }
    city_data << { county: 'Shasta', name: 'Redding', farmers_markets: '', community_gardens: '', nutrition_standards: '2010', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Solano', name: 'Benicia', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Solano', name: 'Fairfield', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Solano', name: 'Suisun City', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Solano', name: 'Vallejo', farmers_markets: '2012', community_gardens: '2012', nutrition_standards: 'H', breastfeeding: '', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Sonoma', name: 'Cotati', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Sonoma', name: 'Healdsburg', farmers_markets: 'P', community_gardens: '2010', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Sonoma', name: 'Petaluma', farmers_markets: '', community_gardens: 'P', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Sonoma', name: 'Rohnert Park', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Sonoma', name: 'Sebastopol', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Sonoma', name: 'Windsor', farmers_markets: 'H', community_gardens: '2013', nutrition_standards: '', breastfeeding: '2012', activity_breaks: '2012', ww_other: '2012' }
    city_data << { county: 'Stanislaus', name: 'Ceres', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Stanislaus', name: 'Ceres School District', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Stanislaus', name: 'Hughson', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Stanislaus', name: 'Modesto', farmers_markets: '', community_gardens: '', nutrition_standards: '2012', breastfeeding: '', activity_breaks: '', ww_other: '2012' }
    city_data << { county: 'Stanislaus', name: 'Newman', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Stanislaus', name: 'Oakdale', farmers_markets: '2013', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Stanislaus', name: 'Patterson', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Stanislaus', name: 'Riverbank', farmers_markets: 'H', community_gardens: 'H', nutrition_standards: '2012', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Stanislaus', name: 'Turlock', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Stanislaus', name: 'Waterford', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Tehama', name: 'Red Bluff', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Tulare', name: 'Dinuba', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: 'H', activity_breaks: 'H', ww_other: 'H' }
    city_data << { county: 'Ventura', name: 'Moorpark', farmers_markets: 'H', community_gardens: '2014', nutrition_standards: 'H', breastfeeding: 'H', activity_breaks: '', ww_other: 'H' }
    city_data << { county: 'Ventura', name: 'Ventura', farmers_markets: '', community_gardens: 'P', nutrition_standards: 'H', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Yolo', name: 'Davis', farmers_markets: '', community_gardens: 'P', nutrition_standards: '2010', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Yolo', name: 'West Sacramento', farmers_markets: '', community_gardens: '', nutrition_standards: '2011', breastfeeding: '', activity_breaks: '', ww_other: '2011' }
    city_data << { county: 'Yolo', name: 'Winters', farmers_markets: 'P', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Yolo', name: 'Woodland', farmers_markets: '', community_gardens: '', nutrition_standards: '', breastfeeding: '', activity_breaks: '', ww_other: '' }
    city_data << { county: 'Alameda', name: 'Oakland', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Contra Costa', name: 'Concord', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Contra Costa', name: 'Pittsburg', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Contra Costa', name: 'Richmond', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Fresno', name: 'Fresno', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Fresno', name: 'Selma', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Humboldt', name: 'Eureka', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Imperial', name: 'Calexico', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Kern', name: 'Wasco', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Kings', name: 'Hanford', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Kings', name: 'Lemoore', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Bellflower', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Compton', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Covina', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Cudahy', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Downey', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Gardena', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Lomita', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Los Angeles', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'Norwalk', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Los Angeles', name: 'West Covina', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Madera', name: 'Madera', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Merced', name: 'Atwater', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Merced', name: 'Los Banos', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Monterey', name: 'Monterey', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Monterey', name: 'Salinas', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Monterey', name: 'Soledad', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Orange', name: 'Buena Park', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Orange', name: 'Orange', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Orange', name: 'Stanton', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Riverside', name: 'Blythe', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Riverside', name: 'Coachella', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Riverside', name: 'Indio', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Riverside', name: 'Moreno Valley', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Sacramento', name: 'Galt', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Benito', name: 'Hollister', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'Loma Linda', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'Montclair', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'San Bernardino', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Bernardino', name: 'Upland', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Diego', name: 'Lemon Grove', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'San Mateo', name: 'San Bruno', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Santa Clara', name: 'Gilroy', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Tulare', name: 'Porterville', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Tulare', name: 'Tulare', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Tulare', name: 'Visalia', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Ventura', name: 'Oxnard', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Ventura', name: 'Port Hueneme', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }
    city_data << { county: 'Ventura', name: 'Santa Paula', farmers_markets: '-', community_gardens: '-', nutrition_standards: '-', breastfeeding: '-', activity_breaks: '-', ww_other: '-' }

    policy_adoptions_added = 0
    policy_adoptions_skipped = 0
    update_error_count = 0
    error_messages = []

    policy_farmers_markets = dbi_ccpha.policies.find_by(name: "Farmers Markets")
    policy_community_gardens = dbi_ccpha.policies.find_by(name: "Community Gardens")
    policy_nutrition_standards = dbi_ccpha.policies.find_by(name: "Nutrition Standards")
    policy_breastfeeding = dbi_ccpha.policies.find_by(name: "Breastfeeding Accommodations")
    policy_activity_breaks = dbi_ccpha.policies.find_by(name: "WW- Activity Breaks")
    ww_other = dbi_ccpha.policies.find_by(name: "WW- other")

    city_data.each do |city|
      saved_city = dbi_ccpha.cities.find_by(name: city[:name], county: city[:county])
      if saved_city.nil?
        error_messages << "error: city '#{city[:name]}' was not found."
        break
      end

      policies = []
      policies << { policy_string: city[:farmers_markets], policy: policy_farmers_markets}
      policies << { policy_string: city[:community_gardens], policy: policy_community_gardens}
      policies << { policy_string: city[:nutrition_standards], policy: policy_nutrition_standards}
      policies << { policy_string: city[:breastfeeding], policy: policy_breastfeeding}
      policies << { policy_string: city[:activity_breaks], policy: policy_activity_breaks}
      policies << { policy_string: city[:ww_other], policy: ww_other}

      policies.each do |p|
        policy = p[:policy]
        if policy.nil?
          error_messages << "error: there was no policy for policy string '#{p[:policy_string]}'."
          update_error_count += 1
          break
        end
        result = add_policy_adoption_or_resolution(dbi_ccpha, saved_city, policy, p[:policy_string])
        if result == 'ok'
          policy_adoptions_added += 1
        elsif result == 'skip'
          policy_adoptions_skipped += 1
        elsif result != "empty"
          error_messages << "error: city '#{city[:name]}' policy #{policy.name} could not be added. #{result}"
          update_error_count += 1
          break
        end
      end

    end

    puts error_messages
    puts "Policy adoptions added: #{policy_adoptions_added}/skipped: #{policy_adoptions_skipped}/errors:#{update_error_count}."

  end

  desc "upload CCPHA cities data 4"
  task ccpha_upload_4: :environment do
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    city_data = []

    city_data << { county: 'Alameda', name: 'Emeryville', heal_no_heal: 'HEAL', population: 10080,percent_obesity: 24, city_median_income: 69274, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Fremont', heal_no_heal: 'HEAL', population: 214089,percent_obesity: 27.89, city_median_income: 98513, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Hayward', heal_no_heal: 'HEAL', population: 144186,percent_obesity: 42.67, city_median_income: 62115, joined_in: '2011', city_designation: 'fit', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Livermore', heal_no_heal: 'HEAL', population: 80968,percent_obesity: 32.09, city_median_income: 96322, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Newark', heal_no_heal: 'HEAL', population: 42573,percent_obesity: 39.17, city_median_income: 81777, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'San Leandro', heal_no_heal: 'HEAL', population: 4001,percent_obesity: 59.02, city_median_income: 61857, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Union City', heal_no_heal: 'HEAL', population: 68549,percent_obesity: 39.72, city_median_income: 82634, joined_in: '2013', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Butte', name: 'Chico', heal_no_heal: 'HEAL', population: 86187,percent_obesity: 30.78, city_median_income: 41632, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Butte', name: 'Gridley', heal_no_heal: 'HEAL', population: 6584,percent_obesity: 45.5, city_median_income: 36563, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Antioch', heal_no_heal: 'HEAL', population: 102372,percent_obesity: 42.34, city_median_income: 66479, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Brentwood', heal_no_heal: 'HEAL', population: 51481,percent_obesity: 32.48, city_median_income: 87642, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Danville', heal_no_heal: 'HEAL', population: 42039,percent_obesity: 16.54, city_median_income: 133360, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'El Cerrito', heal_no_heal: 'HEAL', population: 23549,percent_obesity: 36.32, city_median_income: 83933, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Lafayette', heal_no_heal: 'HEAL', population: 23893,percent_obesity: 17.82, city_median_income: 134871, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Martinez', heal_no_heal: 'HEAL', population: 35824,percent_obesity: 32.99, city_median_income: 79705, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'San Pablo', heal_no_heal: 'HEAL', population: 45119,percent_obesity: 23.55, city_median_income: 45305, joined_in: '2010', city_designation: 'Fit', policy_change_in_progress: '' }
    city_data << { county: 'Del Norte', name: 'Crescent City', heal_no_heal: 'HEAL', population: 7643,percent_obesity: 44.2, city_median_income: 30058, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Clovis', heal_no_heal: 'HEAL', population: 95631,percent_obesity: 32.34, city_median_income: 65300, joined_in: '2011', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Fresno', name: 'Fowler', heal_no_heal: 'HEAL', population: 5570,percent_obesity: 44.05, city_median_income: 54698, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Huron', heal_no_heal: 'HEAL', population: 6754,percent_obesity: 52.83, city_median_income: 22969, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Reedley', heal_no_heal: 'HEAL', population: 24194,percent_obesity: nil, city_median_income: 46776, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'San Joaquin', heal_no_heal: 'HEAL', population: 805235,percent_obesity: 31.68, city_median_income: 25702, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Sanger', heal_no_heal: 'HEAL', population: 29139,percent_obesity: 52.42, city_median_income: 41987, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Glen', name: 'Orland', heal_no_heal: 'HEAL', population: 7291,percent_obesity: 39.76, city_median_income: 45186, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Humboldt', name: 'Arcata', heal_no_heal: 'HEAL', population: 17231,percent_obesity: 30.59, city_median_income: 31815, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Humboldt', name: 'Ferndale', heal_no_heal: 'HEAL', population: 1371,percent_obesity: 32.5, city_median_income: 60147, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Imperial', name: 'Brawley', heal_no_heal: 'HEAL', population: 24953,percent_obesity: 49.95, city_median_income: 36233, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Imperial', name: 'El Centro', heal_no_heal: 'HEAL', population: 42598,percent_obesity: 45.84, city_median_income: 38297, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Imperial', name: 'Holtville', heal_no_heal: 'HEAL', population: 5939,percent_obesity: 44.48, city_median_income: 40712, joined_in: '2014', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Inyo', name: 'Bishop', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 34258, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kern', name: 'Bakersfield', heal_no_heal: 'HEAL', population: 347483,percent_obesity: 42.67, city_median_income: 54656, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Kern', name: 'Delano', heal_no_heal: 'HEAL', population: 53041,percent_obesity: 48, city_median_income: 37810, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Alhambra', heal_no_heal: 'HEAL', population: 83089,percent_obesity: 35.48, city_median_income: 52717, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Avalon', heal_no_heal: 'HEAL', population: 3728,percent_obesity: 64.21, city_median_income: 49514, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Azusa', heal_no_heal: 'HEAL', population: 46361,percent_obesity: 45.62, city_median_income: 53826, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Baldwin Park', heal_no_heal: 'HEAL', population: 75390,percent_obesity: 46.71, city_median_income: 52094, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Bell  ', heal_no_heal: 'HEAL', population: 35477,percent_obesity: 47.06, city_median_income: 37121, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Bell Gardens', heal_no_heal: 'HEAL', population: 42072,percent_obesity: 55, city_median_income: 38971, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Beverly Hills', heal_no_heal: 'HEAL', population: 34109,percent_obesity: 21.47, city_median_income: 85560, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Calabasas', heal_no_heal: 'HEAL', population: 23058,percent_obesity: 19.97, city_median_income: 118182, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Carson', heal_no_heal: 'HEAL', population: 91714,percent_obesity: 44.95, city_median_income: 70416, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Claremont', heal_no_heal: 'HEAL', population: 34926,percent_obesity: 29.84, city_median_income: 81715, joined_in: '2011', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Duarte', heal_no_heal: 'HEAL', population: 21321,percent_obesity: 41.9, city_median_income: 64329, joined_in: '2011', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'El Monte', heal_no_heal: 'HEAL', population: 113475,percent_obesity: 50.19, city_median_income: 41820, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Hawaiian Gardens', heal_no_heal: 'HEAL', population: 14254,percent_obesity: 53.51, city_median_income: 42898, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Hawthorne', heal_no_heal: 'HEAL', population: 84293,percent_obesity: 45.51, city_median_income: 45622, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Hermosa Beach', heal_no_heal: 'HEAL', population: 19506,percent_obesity: 21.09, city_median_income: 102289, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Huntington Park', heal_no_heal: 'HEAL', population: 58114,percent_obesity: 53, city_median_income: 36788, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Inglewood', heal_no_heal: 'HEAL', population: 109673,percent_obesity: 47.78, city_median_income: 44021, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'La Puente', heal_no_heal: 'HEAL', population: 39816,percent_obesity: 42.37, city_median_income: 52042, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Lancaster', heal_no_heal: 'HEAL', population: 156633,percent_obesity: 38.2, city_median_income: 52290, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Lawndale', heal_no_heal: 'HEAL', population: 32769,percent_obesity: 46.41, city_median_income: 48813, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Long Beach', heal_no_heal: 'HEAL', population: 462257,percent_obesity: 40.66, city_median_income: 52945, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Manhattan Beach', heal_no_heal: 'HEAL', population: 35135,percent_obesity: 11.25, city_median_income: 132752, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Maywood', heal_no_heal: 'HEAL', population: 27395,percent_obesity: 50.37, city_median_income: 38155, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Paramount', heal_no_heal: 'HEAL', population: 54098,percent_obesity: 46.4, city_median_income: 42831, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Pasadena', heal_no_heal: 'HEAL', population: 137122,percent_obesity: 42.56, city_median_income: 67920, joined_in: '2011', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Pico Rivera', heal_no_heal: 'HEAL', population: 62942,percent_obesity: 43.68, city_median_income: 55632, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Pomona', heal_no_heal: 'HEAL', population: 149058,percent_obesity: 48.11, city_median_income: 50893, joined_in: '2012', city_designation: 'fit', policy_change_in_progress: 'x' }
    city_data << { county: 'Los Angeles', name: 'Redondo Beach', heal_no_heal: 'HEAL', population: 66748,percent_obesity: 30.38, city_median_income: 94982, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'San Fernando', heal_no_heal: 'HEAL', population: 63522,percent_obesity: 21.08, city_median_income: 52021, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Santa Clarita', heal_no_heal: 'HEAL', population: 88410,percent_obesity: 28.17, city_median_income: 83579, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Santa Monica', heal_no_heal: 'HEAL', population: 176320,percent_obesity: 29.58, city_median_income: 71400, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'South El Monte', heal_no_heal: 'HEAL', population: 12867,percent_obesity: 21.51, city_median_income: 47537, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'South Gate', heal_no_heal: 'HEAL', population: 20116,percent_obesity: 54.3, city_median_income: 41990, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Torrance', heal_no_heal: 'HEAL', population: 28111,percent_obesity: 46.28, city_median_income: 75885, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'West Hollywood', heal_no_heal: 'HEAL', population: 34399,percent_obesity: 43.8, city_median_income: 52303, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Marin', name: 'Corte Madera', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 106541, joined_in: '2013', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Marin', name: 'Marin City', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 46250, joined_in: '2013', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Marin', name: 'Novato', heal_no_heal: 'HEAL', population: 51904,percent_obesity: 31.74, city_median_income: 78628, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Mendocino', name: 'Fort Bragg', heal_no_heal: 'HEAL', population: 7273,percent_obesity: 42.89, city_median_income: 35030, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Gustine', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 45639, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Livingston', heal_no_heal: 'HEAL', population: 13058,percent_obesity: 42.43, city_median_income: 45313, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Merced', heal_no_heal: 'HEAL', population: 78958,percent_obesity: 40.88, city_median_income: 37025, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Monterey', name: 'Greenfield', heal_no_heal: 'HEAL', population: 16330,percent_obesity: 47.46, city_median_income: 56011, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Seaside', heal_no_heal: 'HEAL', population: 11580,percent_obesity: 23.94, city_median_income: 58403, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Napa', name: 'American Canyon', heal_no_heal: 'HEAL', population: 19454,percent_obesity: 41.59, city_median_income: 83581, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Napa', name: 'Yountville', heal_no_heal: 'HEAL', population: 2933,percent_obesity: 44.44, city_median_income: 68368, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Anaheim', heal_no_heal: 'HEAL', population: 336265,percent_obesity: 43.52, city_median_income: 59330, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Brea', heal_no_heal: 'HEAL', population: 39282,percent_obesity: 27.95, city_median_income: 81278, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Orange', name: 'Dana Point', heal_no_heal: 'HEAL', population: 33351,percent_obesity: 20.84, city_median_income: 83306, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Fullerton', heal_no_heal: 'HEAL', population: 135161,percent_obesity: 30.91, city_median_income: 69432, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Irvine', heal_no_heal: 'HEAL', population: 212375,percent_obesity: 21.67, city_median_income: 92599, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'LaHabra', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 86111, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Mission Viejo', heal_no_heal: 'HEAL', population: 93305,percent_obesity: 25.11, city_median_income: 96420, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Newport Beach', heal_no_heal: 'HEAL', population: 85186,percent_obesity: 18.31, city_median_income: 108946, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Orange', name: 'Placentia', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 78364, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'San Clemente', heal_no_heal: 'HEAL', population: 106433,percent_obesity: 33.1, city_median_income: 89289, joined_in: '2012', city_designation: 'Fit', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Santa Ana', heal_no_heal: 'HEAL', population: 24270,percent_obesity: 47.53, city_median_income: 54399, joined_in: '2011', city_designation: 'Fit', policy_change_in_progress: 'x' }
    city_data << { county: 'Orange', name: 'Westminster', heal_no_heal: 'HEAL', population: 89701,percent_obesity: 32.99, city_median_income: 56867, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Banning', heal_no_heal: 'HEAL', population: 29603,percent_obesity: 45.92, city_median_income: 37373, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Beaumont', heal_no_heal: 'HEAL', population: 36877,percent_obesity: 38.12, city_median_income: nil, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Canyon Lake', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 80145, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Cathedral City', heal_no_heal: 'HEAL', population: 51200,percent_obesity: 42.1, city_median_income: 45088, joined_in: '2009', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Corona', heal_no_heal: 'HEAL', population: 152374,percent_obesity: 34.98, city_median_income: 79877, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Desert Hot Springs', heal_no_heal: 'HEAL', population: 25938,percent_obesity: 40, city_median_income: 34606, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Eastvale', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 115025, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'La Quinta', heal_no_heal: 'HEAL', population: 37467,percent_obesity: 39.2, city_median_income: 77790, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Lake Elsinore', heal_no_heal: 'HEAL', population: 51821,percent_obesity: 38.22, city_median_income: 63771, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Palm Springs', heal_no_heal: 'HEAL', population: 44552,percent_obesity: 38.75, city_median_income: 45989, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Riverside', name: 'Perris', heal_no_heal: 'HEAL', population: 68386,percent_obesity: 44.22, city_median_income: 49812, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Riverside', heal_no_heal: 'HEAL', population: 303871,percent_obesity: 39.2, city_median_income: 57555, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Citrus Heights', heal_no_heal: 'HEAL', population: 83301,percent_obesity: 34.72, city_median_income: 54575, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Elk Grove', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 78564, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Rancho Cordova', heal_no_heal: 'HEAL', population: 64776,percent_obesity: 39.11, city_median_income: 53878, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Roseville', heal_no_heal: 'HEAL', population: 118788,percent_obesity: 26.38, city_median_income: 75245, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Sacramento', heal_no_heal: 'HEAL', population: 466488,percent_obesity: 39.94, city_median_income: 50781, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Adelanto', heal_no_heal: 'HEAL', population: 31765,percent_obesity: 40.37, city_median_income: 42208, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Apple Valley', heal_no_heal: 'HEAL', population: 69135,percent_obesity: 35.07, city_median_income: 50664, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Barstow', heal_no_heal: 'HEAL', population: 22639,percent_obesity: 42.29, city_median_income: 45417, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Chino  ', heal_no_heal: 'HEAL', population: 77983,percent_obesity: 41.82, city_median_income: 73400, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Chino Hills', heal_no_heal: 'HEAL', population: 74799,percent_obesity: 27.03, city_median_income: 101905, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Colton', heal_no_heal: 'HEAL', population: 52154,percent_obesity: 46.06, city_median_income: 41788, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Fontana', heal_no_heal: 'HEAL', population: 196069,percent_obesity: 44.87, city_median_income: 64058, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Hesperia', heal_no_heal: 'HEAL', population: 90173,percent_obesity: 41, city_median_income: 48624, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Ontario', heal_no_heal: 'HEAL', population: 163924,percent_obesity: 43.29, city_median_income: 55902, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Rancho Cucamonga', heal_no_heal: 'HEAL', population: 165269,percent_obesity: 29.97, city_median_income: 78782, joined_in: '2009', city_designation: 'fit', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Redlands', heal_no_heal: 'HEAL', population: 68747,percent_obesity: 30.77, city_median_income: 68015, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Rialto', heal_no_heal: 'HEAL', population: 99171,percent_obesity: 44.99, city_median_income: 50452, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Victorville', heal_no_heal: 'HEAL', population: 115903,percent_obesity: 40.08, city_median_income: 52357, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Yucca Valley', heal_no_heal: 'HEAL', population: 20700,percent_obesity: 37.06, city_median_income: 45502, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Chula Vista', heal_no_heal: 'HEAL', population: 243916,percent_obesity: 37.89, city_median_income: 65526, joined_in: '2010', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Coronado', heal_no_heal: 'HEAL', population: 18912,percent_obesity: 21.93, city_median_income: 93777, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'La Mesa', heal_no_heal: 'HEAL', population: 57065,percent_obesity: 36.9, city_median_income: 54519, joined_in: '2009', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'National City', heal_no_heal: 'HEAL', population: 58582,percent_obesity: 50, city_median_income: 36907, joined_in: '2013', city_designation: 'active', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Poway', heal_no_heal: 'HEAL', population: 47811,percent_obesity: 26.06, city_median_income: 94872, joined_in: '2009', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Solana Beach', heal_no_heal: 'HEAL', population: 7379,percent_obesity: 25.26, city_median_income: 85317, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'San Francisco', name: 'San Francisco', heal_no_heal: 'HEAL', population: 23645,percent_obesity: 48, city_median_income: 72947, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Joaquin', name: 'Lodi', heal_no_heal: 'HEAL', population: 62134,percent_obesity: 39.23, city_median_income: 49318, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Joaquin', name: 'Stockton', heal_no_heal: 'HEAL', population: 63632,percent_obesity: 47.03, city_median_income: 47365, joined_in: '2010', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'San Luis Obispo', name: 'Arroyo Grande', heal_no_heal: 'HEAL', population: 17252,percent_obesity: 31.38, city_median_income: 64900, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Luis Obispo', name: 'Grover Beach', heal_no_heal: 'HEAL', population: 13156,percent_obesity: 40, city_median_income: 47708, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'San Luis Obispo', name: 'San Luis Obispo', heal_no_heal: 'HEAL', population: 84950,percent_obesity: 42.72, city_median_income: 42528, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Belmont', heal_no_heal: 'HEAL', population: 25835,percent_obesity: 24.04, city_median_income: 100417, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Brisbane', heal_no_heal: 'HEAL', population: 4282,percent_obesity: 31.46, city_median_income: 79129, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Burlingame', heal_no_heal: 'HEAL', population: 28806,percent_obesity: 24.4, city_median_income: 79760, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'San Mateo', name: 'Daly City', heal_no_heal: 'HEAL', population: 101123,percent_obesity: 39.22, city_median_income: 75399, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Foster City', heal_no_heal: 'HEAL', population: 30567,percent_obesity: 29.9, city_median_income: 115053, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'Menlo Park', heal_no_heal: 'HEAL', population: 32026,percent_obesity: 26.05, city_median_income: 111244, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'South San Francisco', heal_no_heal: 'HEAL', population: 94396,percent_obesity: 51.28, city_median_income: 75543, joined_in: '2012', city_designation: 'FIT', policy_change_in_progress: 'x' }
    city_data << { county: 'Santa Barbara', name: 'Lompoc', heal_no_heal: 'HEAL', population: 42434,percent_obesity: 48.57, city_median_income: 47592, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Santa Barbara', name: 'Santa Barbara', heal_no_heal: 'HEAL', population: 324528,percent_obesity: 46.52, city_median_income: 63401, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Santa Clara', name: 'Cupertino', heal_no_heal: 'HEAL', population: 58302,percent_obesity: 18.37, city_median_income: 124825, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Santa Clara', name: 'Mountain View', heal_no_heal: 'HEAL', population: 74066,percent_obesity: 41.97, city_median_income: 91446, joined_in: '2009', city_designation: 'FIT', policy_change_in_progress: '' }
    city_data << { county: 'Santa Cruz', name: 'Scotts Valley', heal_no_heal: 'HEAL', population: 89736,percent_obesity: 23.02, city_median_income: 99076, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Santa Cruz', name: 'Watsonville', heal_no_heal: 'HEAL', population: 51199,percent_obesity: 49.31, city_median_income: 46073, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Shasta', name: 'Anderson', heal_no_heal: 'HEAL', population: 9932,percent_obesity: 39.31, city_median_income: 34862, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Shasta', name: 'Redding', heal_no_heal: 'HEAL', population: 89861,percent_obesity: 30.52, city_median_income: 43157, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Benicia', heal_no_heal: 'HEAL', population: 26997,percent_obesity: 29.92, city_median_income: 90338, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Fairfield', heal_no_heal: 'HEAL', population: 105321,percent_obesity: 39.25, city_median_income: 68037, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Suisun City', heal_no_heal: 'HEAL', population: 291707,percent_obesity: 42.43, city_median_income: 71411, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Solano', name: 'Vallejo', heal_no_heal: 'HEAL', population: 69516,percent_obesity: 38.43, city_median_income: 62325, joined_in: '2011', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Cotati', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: 62969, joined_in: '2010', city_designation: 'active', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Healdsburg', heal_no_heal: 'HEAL', population: 11254,percent_obesity: 43.6, city_median_income: 63666, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Petaluma', heal_no_heal: 'HEAL', population: 57941,percent_obesity: 32.39, city_median_income: 76185, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Rohnert Park', heal_no_heal: 'HEAL', population: 40971,percent_obesity: 32.37, city_median_income: 56950, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Sebastopol', heal_no_heal: 'HEAL', population: 33025,percent_obesity: 45.59, city_median_income: 60000, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sonoma', name: 'Windsor', heal_no_heal: 'HEAL', population: 26801,percent_obesity: 32.43, city_median_income: 77157, joined_in: '2010', city_designation: 'Fit', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Ceres', heal_no_heal: 'HEAL', population: 45417,percent_obesity: 44.22, city_median_income: 48550, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Ceres School District', heal_no_heal: 'HEAL', population: nil,percent_obesity: nil, city_median_income: nil, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Hughson', heal_no_heal: 'HEAL', population: 6640,percent_obesity: 38.73, city_median_income: 48875, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Modesto', heal_no_heal: 'HEAL', population: 201165,percent_obesity: 39.59, city_median_income: 49852, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Newman', heal_no_heal: 'HEAL', population: 10224,percent_obesity: 48.11, city_median_income: 48409, joined_in: '2014', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Oakdale', heal_no_heal: 'HEAL', population: 20675,percent_obesity: 34.62, city_median_income: 61183, joined_in: '2012', city_designation: 'active', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Patterson', heal_no_heal: 'HEAL', population: 20413,percent_obesity: 45.63, city_median_income: 58090, joined_in: '2012', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Stanislaus', name: 'Riverbank', heal_no_heal: 'HEAL', population: 22678,percent_obesity: 43.71, city_median_income: 59779, joined_in: '2010', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Turlock', heal_no_heal: 'HEAL', population: 145438,percent_obesity: 26.9, city_median_income: 50862, joined_in: '2013', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Stanislaus', name: 'Waterford', heal_no_heal: 'HEAL', population: 8456,percent_obesity: 36.85, city_median_income: 54583, joined_in: '2011', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tehama', name: 'Red Bluff', heal_no_heal: 'HEAL', population: 14076,percent_obesity: 35.85, city_median_income: 31690, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Dinuba', heal_no_heal: 'HEAL', population: 21453,percent_obesity: 44.87, city_median_income: 40463, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Moorpark', heal_no_heal: 'HEAL', population: 34421,percent_obesity: 29.16, city_median_income: 103009, joined_in: '2012', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Ventura', name: 'Ventura', heal_no_heal: 'HEAL', population: 115942,percent_obesity: 43.67, city_median_income: 66226, joined_in: '2011', city_designation: '', policy_change_in_progress: 'x' }
    city_data << { county: 'Yolo', name: 'Davis', heal_no_heal: 'HEAL', population: 65622,percent_obesity: 24.05, city_median_income: 61182, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: '' }
    city_data << { county: 'Yolo', name: 'West Sacramento', heal_no_heal: 'HEAL', population: 48744,percent_obesity: 43.56, city_median_income: 54040, joined_in: '2009', city_designation: 'Active', policy_change_in_progress: 'x' }
    city_data << { county: 'Yolo', name: 'Winters', heal_no_heal: 'HEAL', population: 6624,percent_obesity: 42.9, city_median_income: 59559, joined_in: '2010', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Yolo', name: 'Woodland', heal_no_heal: 'HEAL', population: 55468,percent_obesity: 42.59, city_median_income: 56859, joined_in: '2012', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Alameda', name: 'Oakland', heal_no_heal: 'NO HEAL', population: 420183,percent_obesity: 42.3, city_median_income: 51144, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Concord', heal_no_heal: 'NO HEAL', population: 123776,percent_obesity: 41.5, city_median_income: 65769, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Pittsburg', heal_no_heal: 'NO HEAL', population: 63652,percent_obesity: 45.6, city_median_income: 57965, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Contra Costa', name: 'Richmond', heal_no_heal: 'NO HEAL', population: 103577,percent_obesity: 51, city_median_income: 54554, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Fresno', heal_no_heal: 'NO HEAL', population: 489171,percent_obesity: 42.5, city_median_income: 43440, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Fresno', name: 'Selma', heal_no_heal: 'NO HEAL', population: 23286,percent_obesity: 47, city_median_income: 42459, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Humboldt', name: 'Eureka', heal_no_heal: 'NO HEAL', population: 26157,percent_obesity: 41, city_median_income: 36081, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Imperial', name: 'Calexico', heal_no_heal: 'NO HEAL', population: 28733,percent_obesity: 47.6, city_median_income: 35988, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kern', name: 'Wasco', heal_no_heal: 'NO HEAL', population: 24999,percent_obesity: 46.8, city_median_income: 40295, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kings', name: 'Hanford', heal_no_heal: 'NO HEAL', population: 51965,percent_obesity: 40.5, city_median_income: 54421, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Kings', name: 'Lemoore', heal_no_heal: 'NO HEAL', population: 24502,percent_obesity: 42.4, city_median_income: 58706, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Bellflower', heal_no_heal: 'NO HEAL', population: 77110,percent_obesity: 42.7, city_median_income: 50244, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Compton', heal_no_heal: 'NO HEAL', population: 99242,percent_obesity: 50.8, city_median_income: 43311, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Covina', heal_no_heal: 'NO HEAL', population: 49552,percent_obesity: 40.6, city_median_income: 67638, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Cudahy', heal_no_heal: 'NO HEAL', population: 25879,percent_obesity: 49.5, city_median_income: 39338, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Downey', heal_no_heal: 'NO HEAL', population: 113379,percent_obesity: 40.1, city_median_income: 59773, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Gardena', heal_no_heal: 'NO HEAL', population: 61781,percent_obesity: 49.9, city_median_income: 46961, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Lomita', heal_no_heal: 'NO HEAL', population: 21056,percent_obesity: 44, city_median_income: 61327, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Los Angeles', heal_no_heal: 'NO HEAL', population: 4045873,percent_obesity: 45.2, city_median_income: 50028, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'Norwalk', heal_no_heal: 'NO HEAL', population: 109695,percent_obesity: 46.5, city_median_income: 60090, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Los Angeles', name: 'West Covina', heal_no_heal: 'NO HEAL', population: 112666,percent_obesity: 41, city_median_income: 68308, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Madera', name: 'Madera', heal_no_heal: 'NO HEAL', population: 56710,percent_obesity: 45.1, city_median_income: 41991, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Atwater', heal_no_heal: 'NO HEAL', population: 27571,percent_obesity: 45.1, city_median_income: 40752, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Merced', name: 'Los Banos', heal_no_heal: 'NO HEAL', population: 36052,percent_obesity: 44.5, city_median_income: 51478, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Monterey', heal_no_heal: 'NO HEAL', population: 29322,percent_obesity: 41.2, city_median_income: 62720, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Salinas', heal_no_heal: 'NO HEAL', population: 150898,percent_obesity: 46.7, city_median_income: 50568, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Monterey', name: 'Soledad', heal_no_heal: 'NO HEAL', population: 27905,percent_obesity: 48.5, city_median_income: 53140, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Buena Park', heal_no_heal: 'NO HEAL', population: 82768,percent_obesity: 41.8, city_median_income: 64809, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Orange', heal_no_heal: 'NO HEAL', population: 140849,percent_obesity: 43.2, city_median_income: 78654, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Orange', name: 'Stanton', heal_no_heal: 'NO HEAL', population: 39276,percent_obesity: 51.8, city_median_income: 51933, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Blythe', heal_no_heal: 'NO HEAL', population: 21695,percent_obesity: 40.3, city_median_income: 46235, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Coachella', heal_no_heal: 'NO HEAL', population: 40517,percent_obesity: 48.7, city_median_income: 43357, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Indio', heal_no_heal: 'NO HEAL', population: 81512,percent_obesity: 44.4, city_median_income: 52199, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Riverside', name: 'Moreno Valley', heal_no_heal: 'NO HEAL', population: 183860,percent_obesity: 42.3, city_median_income: 56768, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Sacramento', name: 'Galt', heal_no_heal: 'NO HEAL', population: 23913,percent_obesity: 39.9, city_median_income: 59125, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Benito', name: 'Hollister', heal_no_heal: 'NO HEAL', population: 37051,percent_obesity: 43.2, city_median_income: 62570, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Loma Linda', heal_no_heal: 'NO HEAL', population: 22632,percent_obesity: 41.4, city_median_income: 61116, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Montclair', heal_no_heal: 'NO HEAL', population: 37017,percent_obesity: 43.9, city_median_income: 50959, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'San Bernardino', heal_no_heal: 'NO HEAL', population: 205493,percent_obesity: 43.9, city_median_income: 40161, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Bernardino', name: 'Upland', heal_no_heal: 'NO HEAL', population: 75137,percent_obesity: 42.4, city_median_income: 67449, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Diego', name: 'Lemon Grove', heal_no_heal: 'NO HEAL', population: 25611,percent_obesity: 46.3, city_median_income: 50353, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'San Mateo', name: 'San Bruno', heal_no_heal: 'NO HEAL', population: 43444,percent_obesity: 43.4, city_median_income: 77468, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Santa Clara', name: 'Gilroy', heal_no_heal: 'NO HEAL', population: 51173,percent_obesity: 43.6, city_median_income: 75483, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Porterville', heal_no_heal: 'NO HEAL', population: 51638,percent_obesity: 44, city_median_income: 39933, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Tulare', heal_no_heal: 'NO HEAL', population: 57375,percent_obesity: 43.6, city_median_income: 46274, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Tulare', name: 'Visalia', heal_no_heal: 'NO HEAL', population: 120958,percent_obesity: 40.8, city_median_income: 54019, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Oxnard', heal_no_heal: 'NO HEAL', population: 194905,percent_obesity: 47.9, city_median_income: 60191, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Port Hueneme', heal_no_heal: 'NO HEAL', population: 22202,percent_obesity: 52.6, city_median_income: 52244, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }
    city_data << { county: 'Ventura', name: 'Santa Paula', heal_no_heal: 'NO HEAL', population: 29539,percent_obesity: 47.9, city_median_income: 53359, joined_in: 'No HEAL', city_designation: '', policy_change_in_progress: '' }

    city_designations_added = 0
    city_designation_additions_skipped = 0
    city_designation_error_count = 0

    error_messages = []

    city_designation_HEAL_City = dbi_ccpha.city_designations.find_by(name: "HEAL City")
    if city_designation_HEAL_City.nil?
      error_messages << "error: HEAL City city designation not found."
    else
      city_data.each do |city|
        saved_city = dbi_ccpha.cities.find_by(name: city[:name], county: city[:county])
        if saved_city.nil?
          error_messages << "error: city '#{city[:name]}' was not found."
          break
        end

        if city[:heal_no_heal] == 'HEAL'
          cda_existing = saved_city.city_designation_achievements.where(city_designation_id: city_designation_HEAL_City.id).first
          if cda_existing.nil?
            #there is no existing record, OK to add one
            cda = Heal::CityDesignationAchievement.new
            cda.database_instance = dbi_ccpha
            cda.city_id = saved_city.id
            cda.city_designation_id = city_designation_HEAL_City.id
            year = city[:joined_in].to_i
            if year < 2000 or year > 2015
              city_designation_error_count += 1
              error_messages << "joined in year #{city[:joined_in]} was out of range."
              break
            end
            cda.date = Date::strptime("1-1-#{year}","%d-%m-%Y")

            if cda.save
              city_designations_added += 1
            else
              city_designation_error_count += 1
              error_messages << cda.errors.inspect
              break
            end

            break #for testing, just do one.

          end
        else
            city_designation_additions_skipped += 1
        end
      end
    end

    puts error_messages
    puts "City designations added: #{city_designations_added}/ errors: #{city_designation_error_count}/ skipped: #{city_designation_additions_skipped}."
  end


  private

    def add_policy_adoption_or_resolution(database_instance, city, policy, policy_string)
      policy_string.strip! #strip out whitespace
      if policy_string == '' or policy_string == '' or policy_string == '-'
        return "empty" #no data to add
      elsif policy_string == 'P'
        prior = true
        year = nil
        return add_policy_adoption_to_city(database_instance, city, policy, year, prior)
      elsif policy_string == 'H'
        prior = true
        year = nil
        return add_resolution_to_city(database_instance, city, policy, year, prior)
      else
        year = policy_string.to_i
        if year.nil? or year < 2000 or year > 2015
          return "error: the policy string ''#{policy_string}'' was not recognized."
        end
        prior = false
        return add_policy_adoption_to_city(database_instance, city, policy, year, prior)
      end
    end

    def add_policy_adoption_to_city(database_instance, city, policy, year, prior)
      prev_policy_adoptions = city.policy_adoptions.joins(:policies).where("policies.id" => policy.id)
      if prev_policy_adoptions.present? and prev_policy_adoptions.count > 0
        #this city has already adopted this policy, so don't add it again.
        return 'skip'
      end

      pa = Heal::PolicyAdoption.new
      pa.database_instance = database_instance
      pa.city = city
      pa.policies << policy
      if year.present?
        pa.date = Date::strptime("1-1-#{year}","%d-%m-%Y")
      end
      pa.prior_to_joining_campaign = prior
      if pa.save
        return 'ok'
      else
        return pa.errors.inspect
      end
    end

    def add_resolution_to_city(database_instance, city, policy, year, prior)
      prev_resolutions = city.resolutions.joins(:policies).where("policies.id" => policy.id)
      if prev_resolutions.present? and prev_resolutions.count > 0
        #this city has already resolved this policy, so don't add it again.
        return 'skip'
      end

      res = Heal::Resolution.new
      res.database_instance = database_instance
      res.city = city
      res.policies << policy
      if year.present?
        res.date = Date::strptime("1-1-#{year}","%d-%m-%Y")
      end
      res.prior_to_joining_campaign = prior
      if res.save
        return 'ok'
      else
        return res.errors.inspect
      end
    end


end