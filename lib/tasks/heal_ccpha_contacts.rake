namespace :heal_ccpha_contacts do

  task do_nothing: :environment do
    puts "nothing done"
  end

  desc "upload test"
  task :upload_new_contacts_test, [:ignore_existing] => :environment do |t, args|
    contacts = []

    contacts << { first_name: "Lance", last_name: "Walker", title: "Council Member", heal_city: "Greenfield, CA", organization: "Greenfield", email: "6strngwlkr@sbcglobal.net" }

    upload_new(contacts, args[:ignore_existing] == 'true')   #argument gets passed in as string
  end

  desc "set to inactive test"
  task set_contacts_to_inactive_test: :environment do
    contacts = []
    contacts << { first_name: "Margaret", last_name: "Abe-Koga", title: "Council Member", heal_city: "Mountain View, CA", organization: "Mountain View", email: "margaretabekoga@gmail.com" }

    set_to_inactive(contacts)
  end

  desc "set selected contacts to inactive"
  task set_contacts_to_inactive: :environment do
    contacts = []

    contacts << { first_name: "Margaret", last_name: "Abe-Koga", title: "Council Member", heal_city: "Mountain View, CA", organization: "Mountain View", email: "margaretabekoga@gmail.com" }
    contacts << { first_name: "Janet", last_name: "Abelson", title: "Mayor Pro Tem", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "jabelson@ci.el-cerrito.ca.us" }
    contacts << { first_name: "Ruben", last_name: "Abrica", title: "Mayor", heal_city: "East Palo Alto, CA", organization: "East Palo Alto", email: "rubenabrica@gmail.com" }
    contacts << { first_name: "Pedro", last_name: "Aceituno", title: "Mayor", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "paceituno@bellgardens.org" }
    contacts << { first_name: "Steve", last_name: "Adams", title: "City Manager", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "sadams@arroyogrande.org" }
    contacts << { first_name: "Betsy", last_name: "Adams", title: "City Manager", heal_city: "Grand Terrace, CA", organization: "Grand Terrace", email: "badams@cityofgrandterrace.org" }
    contacts << { first_name: "Tara Lee", last_name: "Adams", title: "Management Services Director", heal_city: "Indio, CA", organization: "Indio", email: "tadams@indio.org" }
    contacts << { first_name: "Steve", last_name: "Adams", title: "Council Member", heal_city: "Riverside, CA", organization: "Riverside", email: "sadams@riversideca.gov" }
    contacts << { first_name: "John", last_name: "Addleman", title: "Council Member", heal_city: "Rolling Hills Estates, CA", organization: "Rolling Hills Estates", email: "johna@ci.rolling-hills-estates.ca.us" }
    contacts << { first_name: "Don", last_name: "Adolph", title: "Mayor", heal_city: "La Quinta, CA", organization: "La Quinta", email: "dadolph@la-quinta.org" }
    contacts << { first_name: "Larry", last_name: "Agran", title: "Council Member", heal_city: "Irvine, CA", organization: "Irvine", email: "irvinecitycouncil@cityofirvine.org" }
    contacts << { first_name: "Cecilia", last_name: "Aguiar-Curry", title: "Mayor", heal_city: "Winters, CA", organization: "Winters", email: "cecilia@cityofwinters.org" }
    contacts << { first_name: "Joe", last_name: "Aguilar", title: "Council Member", heal_city: "Commerce, CA", organization: "Commerce", email: "joea@ci.commerce.ca.us" }
    contacts << { first_name: "Pete", last_name: "Aguilar", title: "Mayor", heal_city: "Redlands, CA", organization: "Redlands", email: "paguilar@arrowheadcu.org" }
    contacts << { first_name: "Stephany", last_name: "Aguilar", title: "Council Member", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "seajems@pacbell.net" }
    contacts << { first_name: "Elaine", last_name: "Aguilar", title: "City Manager", heal_city: "Sierra Madre, CA", organization: "Sierra Madre", email: "eaguilar@cityofsierramadre.com" }
    contacts << { first_name: "Joe", last_name: "Aguirre", title: "Mayor", heal_city: "Delano, CA", organization: "Delano", email: "jaguirre@cityofdelano.org" }
    contacts << { first_name: "Felipe", last_name: "Aguirre", title: "Council Member", heal_city: "Maywood, CA", organization: "Maywood", email: "faguirre@cityofmaywood.com" }
    contacts << { first_name: "Joe", last_name: "Aguirre", title: "Council Member", heal_city: "Placentia, CA", organization: "Placentia", email: "administration@placentia.org" }
    contacts << { first_name: "Richard", last_name: "Alarcon", title: "Council Member", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.alarcon@lacity.org" }
    contacts << { first_name: "Pilar", last_name: "Alcivar McCoy", title: "Community Svcs & Park Dir", heal_city: "Signal Hill, CA", organization: "Signal Hill", email: "palcivar@cityofsignalhill.org" }
    contacts << { first_name: "Allan", last_name: "Alifano", title: "Council Member", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "allana@hmbcity.com" }
    contacts << { first_name: "Laura", last_name: "Allen", title: "City Manager", heal_city: "Colma, CA", organization: "Colma", email: "laura.allen@colma.ca.gov" }
    contacts << { first_name: "Dan", last_name: "Allen", title: "City Manager", heal_city: "Wasco, CA", organization: "Wasco", email: "daallen@ci.wasco.ca.us" }
    contacts << { first_name: "Steven", last_name: "Allen", title: "Council Member", heal_city: "Windsor, CA", organization: "Windsor", email: "sallen@townofwindsor.com" }
    contacts << { first_name: "Jeff", last_name: "Allred", title: "City Manager", heal_city: "Rosemead, CA", organization: "Rosemead", email: "jallred@cityofrosemead.org" }
    contacts << { first_name: "Jack", last_name: "Allwardt", title: "Mayor Pro Tem", heal_city: "Exeter, CA", organization: "Exeter", email: "sguillen@exetercityhall.com" }
    contacts << { first_name: "Violeta", last_name: "Alvarez", title: "Vice Mayor", heal_city: "Bell, CA", organization: "Bell", email: "valavarez@cityofbell.org" }
    contacts << { first_name: "Peter", last_name: "Amundson", title: "Council Member", heal_city: "Arcadia, CA", organization: "Arcadia", email: "mbuttice@ci.arcadia.ca.us" }
    contacts << { first_name: "Jayne", last_name: "Anderson", title: "Assistant City Manager", heal_city: "Dinuba, CA", organization: "Dinuba", email: "janderson@dinuba.ca.gov" }
    contacts << { first_name: "Dave", last_name: "Anderson", title: "City Manager", heal_city: "Saratoga, CA", organization: "Saratoga", email: "davea@saratoga.ca.us" }
    contacts << { first_name: "Harold", last_name: "Anderson", title: "Council Member", heal_city: "Winters, CA", organization: "Winters", email: "harold.anderson@cityofwinters.org" }
    contacts << { first_name: "Stephen", last_name: "Ando", title: "City Manager", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "sando@scottsvalley.org" }
    contacts << { first_name: "Dee", last_name: "Andrews", title: "Council Member - District 6", heal_city: "Long Beach, CA", organization: "Long Beach", email: "dee.andrews@longbeach.gov" }
    contacts << { first_name: "Ana", last_name: "Apodaca", title: "Mayor Pro Tem", heal_city: "Newark, CA", organization: "Newark", email: "ana.apodaca@newark.org" }
    contacts << { first_name: "Jan", last_name: "Arbuckle", title: "Council Member", heal_city: "Grass Valley, CA", organization: "Grass Valley", email: "jana@cityofgrassvalley.com" }
    contacts << { first_name: "Yvonne", last_name: "Arceneaux", title: "Council Member - District 3", heal_city: "Compton, CA", organization: "Compton", email: "yarceneaux@comptoncity.org" }
    contacts << { first_name: "Peter", last_name: "Arellano", title: "Council Member", heal_city: "Gilroy, CA", organization: "Gilroy", email: "peter.arellano@cityofgilroy.org" }
    contacts << { first_name: "Paul", last_name: "Arevalo", title: "City Manager", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "parevalo@weho.org" }
    contacts << { first_name: "David", last_name: "Argudo", title: "Council Member", heal_city: "La Puente, CA", organization: "La Puente", email: "dargudo@lapuente.org" }
    contacts << { first_name: "David W.", last_name: "Armenta", title: "Council Member", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "spena@pico-rivera.org" }
    contacts << { first_name: "Harry", last_name: "Armstrong", title: "Council Member", heal_city: "Clovis, CA", organization: "Clovis", email: "harrya@ci.clovis.ca.us" }
    contacts << { first_name: "Jim", last_name: "Armstrong", title: "City Administrator", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "jarmstrong@santabarbaraca.gov" }
    contacts << { first_name: "Douglas", last_name: "Arnold", title: "Council Member", heal_city: "Biggs, CA", organization: "Biggs", email: "douga@biggs-ca.gov" }
    contacts << { first_name: "Anthony", last_name: "Arroyo", title: "Human Resources Director", heal_city: "Colton, CA", organization: "Colton", email: "aarroyo@ci.colton.ca.us" }
    contacts << { first_name: "Linda", last_name: "Atkins", title: "Council Member", heal_city: "Eureka, CA", organization: "Eureka", email: "latkins@ci.eureka.ca.gov" }
    contacts << { first_name: "Bryce", last_name: "Atkins", title: "City Manager", heal_city: "Mendota, CA", organization: "Mendota", email: "citymanager@ci.mendota.ca.us" }
    contacts << { first_name: "Marge", last_name: "Atkinson", title: "Vice-Mayor", heal_city: "Albany, CA", organization: "Albany", email: "cityhall@albanyca.org" }
    contacts << { first_name: "Angie", last_name: "Avery", title: "City Manager", heal_city: "Los Alamitos, CA", organization: "Los Alamitos", email: "aavery@cityoflosalamitos.org" }
    contacts << { first_name: "Luis", last_name: "Ayala", title: "Council Member", heal_city: "Alhambra, CA", organization: "Alhambra", email: "luisayala06@gmail.com" }
    contacts << { first_name: "Daniel", last_name: "Ayala", title: "City Manager", heal_city: "Maricopa, CA", organization: "Maricopa", email: "danfayala@gmail.com" }
    contacts << { first_name: "Richard", last_name: "Bacio", title: "Assistant City Manager", heal_city: "Alhambra, CA", organization: "Alhambra", email: "rbacio@cityofalhambra.org" }
    contacts << { first_name: "John", last_name: "Bahorski", title: "City Manager", heal_city: "Cypress, CA", organization: "Cypress", email: "jbahorski@ci.cypress.ca.us" }
    contacts << { first_name: "Doug", last_name: "Bailey", title: "Council Member", heal_city: "Cypress, CA", organization: "Cypress", email: "dbailey@ci.cypress.ca.us" }
    contacts << { first_name: "Steve", last_name: "Baisden", title: "Mayor Pro Tem", heal_city: "Adelanto, CA", organization: "Adelanto", email: "sbaisden@ci.adelanto.ca.us" }
    contacts << { first_name: "Tom", last_name: "Bakaly", title: "City Manager", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "tbakaly@hermosabch.org" }
    contacts << { first_name: "Philip", last_name: "Baldwin", title: "Vice Mayor", heal_city: "Ukiah, CA", organization: "Ukiah", email: "felipe@pacific.net" }
    contacts << { first_name: "Richard", last_name: "Barakat", title: "Council Member", heal_city: "Bradbury, CA", organization: "Bradbury", email: "rick.barakat@cityofbradbury.org" }
    contacts << { first_name: "Scott", last_name: "Barber", title: "City Manager", heal_city: "Riverside, CA", organization: "Riverside", email: "sbarber@riversideca.gov" }
    contacts << { first_name: "Steve", last_name: "Barbose", title: "Council Member", heal_city: "Sonoma, CA", organization: "Sonoma", email: "sbarbose@vom.com" }
    contacts << { first_name: "Laurel", last_name: "Barcelona", title: "City Administrator", heal_city: "Lompoc, CA", organization: "Lompoc", email: "l_barcelona@ci.lompoc.ca.us" }
    contacts << { first_name: "Barbara", last_name: "Barker", title: "Human Resources Manager", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "bbarker@santabarbaraca.gov" }
    contacts << { first_name: "Julie", last_name: "Barkman", title: "Council Member", heal_city: "Dorris, CA", organization: "Dorris", email: "cityadmin@cot.net" }
    contacts << { first_name: "Siavash", last_name: "Barmand", title: "Council Member", heal_city: "Belvedere, CA", organization: "Belvedere", email: "sbarmand@cityofbelvedere.org" }
    contacts << { first_name: "Gene", last_name: "Barnett", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "gbarnett@TorranceCA.gov" }
    contacts << { first_name: "Bruce", last_name: "Barrows", title: "Mayor Pro Tem", heal_city: "Cerritos, CA", organization: "Cerritos", email: "pmendoza@cerritos.us" }
    contacts << { first_name: "Konradt", last_name: "Bartlam", title: "City Manager", heal_city: "Lodi, CA", organization: "Lodi", email: "rbartlam@lodi.gov" }
    contacts << { first_name: "Lisa", last_name: "Bartlett", title: "Mayor Pro Tem", heal_city: "Dana Point, CA", organization: "Dana Point", email: "lbartlett@danapoint.org" }
    contacts << { first_name: "Scott", last_name: "Bartley", title: "Mayor", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "sbartley@srcity.org" }
    contacts << { first_name: "Ronald", last_name: "Bates", title: "City Manager", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "rbates@pico-rivera.org" }
    contacts << { first_name: "Cathy", last_name: "Baylock", title: "Council Member", heal_city: "Burlingame, CA", organization: "Burlingame", email: "cbaylock@burlingame.org" }
    contacts << { first_name: "Glen", last_name: "Becerra", title: "Council Member", heal_city: "Simi Valley, CA", organization: "Simi Valley", email: "gbecerra@simivalley.org" }
    contacts << { first_name: "Michael", last_name: "Beck", title: "City Manager", heal_city: "Pasadena, CA", organization: "Pasadena", email: "mbeck@cityofpasadena.net" }
    contacts << { first_name: "Tom", last_name: "Beckord", title: "Human Resources Manager", heal_city: "Encinitas, CA", organization: "Encinitas", email: "tbeckord@encinitasca.gov" }
    contacts << { first_name: "Laura ", last_name: "Behjan", title: "City Manager", heal_city: "Simi Valley, CA", organization: "Simi Valley", email: "lbehjan@simivalley.org" }
    contacts << { first_name: "Robert", last_name: "Bell", title: "City Manager", heal_city: "Redwood City, CA", organization: "Redwood City", email: "bbell@redwoodcity.org" }
    contacts << { first_name: "Rebecca", last_name: "Benassini", title: "Council Member", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "rbenassini@ci.el-cerrito.ca.us" }
    contacts << { first_name: "Linda", last_name: "Benedetti-Leal", title: "City Manager", heal_city: "Paramount, CA", organization: "Paramount", email: "lbenedetti@paramountcity.com" }
    contacts << { first_name: "Kevin", last_name: "Benjamin", title: "Council Member", heal_city: "Blue Lake, CA", organization: "Blue Lake", email: "bluelakecm@aol.com" }
    contacts << { first_name: "Joan", last_name: "Bennett", title: "Council Member", heal_city: "American Canyon, CA", organization: "American Canyon", email: "jbennett@cityofamericancanyon.org; joanie@sunset.net" }
    contacts << { first_name: "Kelly", last_name: "Bennett", title: "Mayor Pro Tem", heal_city: "Murrieta, CA", organization: "Murrieta", email: "kbennett@murrieta.org" }
    contacts << { first_name: "Jim", last_name: "Benson", title: "Council Member", heal_city: "Montague, CA", organization: "Montague", email: "cityofmontague@sbcglobal.net" }
    contacts << { first_name: "Jean", last_name: "Benson", title: "Mayor Pro Tem", heal_city: "Palm Desert, CA", organization: "Palm Desert", email: "cityhall@cityofpalmdesert.org" }
    contacts << { first_name: "Loran", last_name: "Berck", title: "Council Member", heal_city: "Fort Jones, CA", organization: "Fort Jones", email: "lgberck@dishmail.net" }
    contacts << { first_name: "Roger", last_name: "Berg", title: "Mayor", heal_city: "Beaumont, CA", organization: "Beaumont", email: "citycouncil@ci.beaumont.ca.us" }
    contacts << { first_name: "Brian", last_name: "Bergman", title: "Council Member", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "briansbergman@hotmail.com" }
    contacts << { first_name: "Andrew", last_name: "Berman", title: "Mayor", heal_city: "Mill Valley, CA", organization: "Mill Valley", email: "citycouncil@cityofmillvalley.org" }
    contacts << { first_name: "Don", last_name: "Berry", title: "Council Member", heal_city: "Fort Jones, CA", organization: "Fort Jones", email: "fjlumber@sisqtel.net" }
    contacts << { first_name: "Sukari", last_name: "Beshears", title: "Personnel Manager", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "sbeshears@ci.el-cerrito.ca.us" }
    contacts << { first_name: "Dane", last_name: "Besneatte", title: "Vice Mayor", heal_city: "Dixon, CA", organization: "Dixon", email: "citycouncil@ci.dixon.ca.us" }
    contacts << { first_name: "Anita", last_name: "Betancourt", title: "Council Member", heal_city: "Reedley, CA", organization: "Reedley", email: "sylvia.plata@reedley.com" }
    contacts << { first_name: "Christopher", last_name: "Beth", title: "Parks, Rec & Comm. Svs. Director", heal_city: "Redwood City, CA", organization: "Redwood City", email: "cbeth@redwoodcity.org" }
    contacts << { first_name: "Laura", last_name: "Bettencourt", title: "Council Member", heal_city: "Palmdale, CA", organization: "Palmdale", email: "lbettencourt@cityofpalmdale.org" }
    contacts << { first_name: "Russell", last_name: "Betts", title: "Council Member", heal_city: "Desert Hot Springs, CA", organization: "Desert Hot Springs", email: "russellbetts@hotmail.com" }
    contacts << { first_name: "Greg", last_name: "Betts", title: "Interim Director of Community Services", heal_city: "Palo Alto, CA", organization: "Palo Alto", email: "greg.betts@cityofpaloalto.org" }
    contacts << { first_name: "Sharmeen", last_name: "Bhojani", title: "Human Resources Manager", heal_city: "Irwindale, CA", organization: "Irwindale", email: "sbhojani@ci.irwindale.ca.us" }
    contacts << { first_name: "Rob", last_name: "Bicego", title: "Mayor Pro-Tempore", heal_city: "Yreka, CA", organization: "Yreka", email: "rbicego@ci.yreka.ca.us" }
    contacts << { first_name: "Mark", last_name: "Bichsel", title: "Finance/Human Res. Dir.", heal_city: "Piedmont, CA", organization: "Piedmont", email: "mbichsel@ci.piedmont.ca.us" }
    contacts << { first_name: "George", last_name: "Bird, Jr.", title: "Mayor", heal_city: "Palos Verdes Estates, CA", organization: "Palos Verdes Estates", email: "citycouncil@pvestates.org" }
    contacts << { first_name: "Robert", last_name: "Blackwood", title: "HR Director", heal_city: "Glendora, CA", organization: "Glendora", email: "rblackwood@ci.glendora.ca.us" }
    contacts << { first_name: "Bill", last_name: "Blake", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "blakeb@cityofmerced.org" }
    contacts << { first_name: "Andy", last_name: "Blakely", title: "Council Member", heal_city: "Maricopa, CA", organization: "Maricopa", email: "bullarg@co.kern.ca.us" }
    contacts << { first_name: "Carl", last_name: "Blum", title: "Council Member", heal_city: "Temple City, CA", organization: "Temple City", email: "clubm@templecity.us" }
    contacts << { first_name: "Connie", last_name: "Boardman", title: "Mayor", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "connie.boardman@surfcity-hb.org" }
    contacts << { first_name: "Kit", last_name: "Bobko", title: "Mayor Pro Tem", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "kit.bobko@gmail.com" }
    contacts << { first_name: "Bill", last_name: "Bogaard", title: "Mayor", heal_city: "Pasadena, CA", organization: "Pasadena", email: "bbogaard@ci.pasadena.ca.us" }
    contacts << { first_name: "Thom", last_name: "Bogue", title: "Council Member", heal_city: "Dixon, CA", organization: "Dixon", email: "citycouncil@ci.dixon.ca.us" }
    contacts << { first_name: "Sherry", last_name: "Bonillas", title: "Personnel & Risk Mgmt Dir.", heal_city: "Brawley, CA", organization: "Brawley", email: "sbonillas@brawley-ca.gov" }
    contacts << { first_name: "Randy", last_name: "Bonner", title: "Mayor Pro Tem", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "rbonner@cityofcanyonlake.com" }
    contacts << { first_name: "Cynthia", last_name: "Borjorquez", title: "Community Services/Park & Rec. Director", heal_city: "Campbell, CA", organization: "Campbell", email: "cynthiab@cityofcampbell.com" }
    contacts << { first_name: "Rick", last_name: "Bosetti", title: "Mayor", heal_city: "Redding, CA", organization: "Redding", email: "rbosetti@ci.redding.ca.us" }
    contacts << { first_name: "Bob", last_name: "Botts", title: "Mayor Pro Tem", heal_city: "Banning, CA", organization: "Banning", email: "bbotts@dc.rr.com" }
    contacts << { first_name: "Jim", last_name: "Box", title: "City Manager", heal_city: "Stanton, CA", organization: "Stanton", email: "jbox@ci.stanton.ca.us" }
    contacts << { first_name: "James", last_name: "Bozajian", title: "Council Member", heal_city: "Calabasas, CA", organization: "Calabasas", email: "jrbozajian@earthlink.net" }
    contacts << { first_name: "Mark", last_name: "Bozigian", title: "City Manager", heal_city: "Lancaster, CA", organization: "Lancaster", email: "mbozigian@cityoflancasterca.org" }
    contacts << { first_name: "Suzanne", last_name: "Bragdon", title: "City Manager", heal_city: "Suisun City, CA", organization: "Suisun City", email: "sbragdon@suisun.com" }
    contacts << { first_name: "Lorie", last_name: "Bragg", title: "Mayor Pro Tem", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "loriebraggib@aol.com" }
    contacts << { first_name: "Larry", last_name: "Bragman", title: "Council Member", heal_city: "Fairfax, CA", organization: "Fairfax", email: "lbragman@townoffairfax.org" }
    contacts << { first_name: "John", last_name: "Bramble", title: "City Manager", heal_city: "Merced, CA", organization: "Merced", email: "bramblej@cityofmerced.org" }
    contacts << { first_name: "Brendan", last_name: "Brandt", title: "Council Member", heal_city: "Upland, CA", organization: "Upland", email: "citycouncil@ci.upland.ca.us" }
    contacts << { first_name: "Rob", last_name: "Braulik", title: "Town Manager", heal_city: "Ross, CA", organization: "Ross", email: "rbraulik@townofross.org" }
    contacts << { first_name: "Rick", last_name: "Breland", title: "Mayor", heal_city: "Imperial, CA", organization: "Imperial", email: "cityclerk@cityofimperial.org" }
    contacts << { first_name: "David", last_name: "Brennan", title: "City Manager", heal_city: "Nevada City, CA", organization: "Nevada City", email: "david.brennan@ci.nevada.ca.us" }
    contacts << { first_name: "Michael", last_name: "Brennan", title: "Council Member", heal_city: "Oakdale, CA", organization: "Oakdale", email: "mbrennan@ci.oakdale.ca.us" }
    contacts << { first_name: "Brian", last_name: "Brennan", title: "Council Member", heal_city: "Ventura, CA", organization: "Ventura", email: "council@ci.ventura.ca.us" }
    contacts << { first_name: "Perry", last_name: "Brents", title: "Director of Rec & Community Svcs", heal_city: "Lynwood, CA", organization: "Lynwood", email: "pbrents@lynwood.ca.us" }
    contacts << { first_name: "Randal", last_name: "Bressette", title: "Council Member", heal_city: "Laguna Hills, CA", organization: "Laguna Hills", email: "clh@ci.laguna-hills.ca.us" }
    contacts << { first_name: "Tom", last_name: "Brewer", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "tbrewer@TorranceCA.gov" }
    contacts << { first_name: "Gary", last_name: "Bric", title: "Council Member", heal_city: "Burbank, CA", organization: "Burbank", email: "gbric@ci.burbank.ca.us" }
    contacts << { first_name: "Jeff", last_name: "Briltz", title: "City Manager/City Treasurer", heal_city: "Lemoore, CA", organization: "Lemoore", email: "jbriltz@lemoore.com" }
    contacts << { first_name: "Amy", last_name: "Brink", title: "Community Services Director", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "abrink@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Kurt", last_name: "Brinkman", title: "Mayor", heal_city: "Emeryville, CA", organization: "Emeryville", email: "kurt@intrepidelectronic.com" }
    contacts << { first_name: "Shane", last_name: "Brinton", title: "Mayor", heal_city: "Arcata, CA", organization: "Arcata", email: "sbrinton@cityofarcata.org" }
    contacts << { first_name: "Gary", last_name: "Brizzee", title: "Acting City Manager/Police Chief", heal_city: "Los Banos, CA", organization: "Los Banos", email: "gary.brizzee@losbanos.org" }
    contacts << { first_name: "Gary", last_name: "Broad", title: "City Manager", heal_city: "St. Helena, CA", organization: "St. Helena", email: "GaryB@cityofsthelena.org" }
    contacts << { first_name: "Holly", last_name: "Brock-Cohn", title: "Human Resources Director", heal_city: "Alameda, CA", organization: "Alameda", email: "hbrockcohn@ci.alameda.ca.us" }
    contacts << { first_name: "Cheryl", last_name: "Brothers", title: "Council Member", heal_city: "Fountain Valley, CA", organization: "Fountain Valley", email: "cherylbrot@aol.com" }
    contacts << { first_name: "Gary", last_name: "Brown", title: "City Manager", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "gbrown@cityofib.org" }
    contacts << { first_name: "John", last_name: "Brown", title: "City Manager", heal_city: "Petaluma, CA", organization: "Petaluma", email: "citymgr@ci.petaluma.ca.us" }
    contacts << { first_name: "Wayne", last_name: "Brown", title: "Mayor", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "wbrown@ci.red-bluff.ca.us" }
    contacts << { first_name: "Ken", last_name: "Brown", title: "Mayor", heal_city: "Sonoma, CA", organization: "Sonoma", email: "ken@bearflagsocialclub.com" }
    contacts << { first_name: "Mark", last_name: "Brown", title: "Council Member", heal_city: "Truckee, CA", organization: "Truckee", email: "mbrowndc@ltol.com" }
    contacts << { first_name: "Marti", last_name: "Brown", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "martibrown@ci.vallejo.ca.us" }
    contacts << { first_name: "Audrey", last_name: "Brown", title: "Assistant City Manager", heal_city: "Westlake Village, CA", organization: "Westlake Village", email: "audrey@wlv.org" }
    contacts << { first_name: "David", last_name: "Brownlee", title: "City Manager", heal_city: "Needles, CA", organization: "Needles", email: "ndlscityproject@citilink.net" }
    contacts << { first_name: "Barry", last_name: "Brucker", title: "Council Member", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "mayorandcitycouncil@beverlyhills.org" }
    contacts << { first_name: "Laura", last_name: "Brunson", title: "Human Resources Director", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "lbrunson@elkgrovecity.org" }
    contacts << { first_name: "Ronit", last_name: "Bryant", title: "Council Member", heal_city: "Mountain View, CA", organization: "Mountain View", email: "ronit.bryant@mountainview.gov" }
    contacts << { first_name: "Rod", last_name: "Buchanan", title: "Dir. of Parks & Community Services", heal_city: "Tracy, CA", organization: "Tracy", email: "rod.buchanan@ci.tracy.ca.us" }
    contacts << { first_name: "Amy", last_name: "Buck", title: "Manager, Human Resources", heal_city: "Woodland, CA", organization: "Woodland", email: "amy.buck@cityofwoodland.org" }
    contacts << { first_name: "Linda", last_name: "Budge", title: "Mayor", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "lbudge@cityofranchocordova.org" }
    contacts << { first_name: "Larry", last_name: "Buehner", title: "Council Member", heal_city: "Patterson, CA", organization: "Patterson", email: "lbuehner@ci.patterson.ca.us" }
    contacts << { first_name: "Cheri", last_name: "Bunker", title: "Council Member", heal_city: "Oroville, CA", organization: "Oroville", email: "cityclerk@cityoforoville.org" }
    contacts << { first_name: "Karen", last_name: "Burnham", title: "Interim City Manager", heal_city: "Oxnard, CA", organization: "Oxnard", email: "karen.burnham@ci.oxnard.ca.us" }
    contacts << { first_name: "Stephanie", last_name: "Burnside", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "sburnside@modestogov.com" }
    contacts << { first_name: "Rebecca", last_name: "Burnside", title: "Human Resources Director", heal_city: "Redwood City, CA", organization: "Redwood City", email: "rburnside@redwoodcity.org" }
    contacts << { first_name: "Bruce", last_name: "Burton", title: "Mayor", heal_city: "Willits, CA", organization: "Willits", email: "willitsredwood@gmail.com" }
    contacts << { first_name: "Dene", last_name: "Bustichi", title: "Council Member", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "dene@bustichi.com" }
    contacts << { first_name: "Rob", last_name: "Butler", title: "City Manager", heal_city: "Patterson, CA", organization: "Patterson", email: "rbutler@ci.patterson.ca.us" }
    contacts << { first_name: "Thomas", last_name: "Butt", title: "Council Member", heal_city: "Richmond, CA", organization: "Richmond", email: "tom.butt@intres.com" }
    contacts << { first_name: "Troy", last_name: "Butzlaff", title: "City Administrator", heal_city: "Placentia, CA", organization: "Placentia", email: "tbutzlaff@placentia.org" }
    contacts << { first_name: "Christopher", last_name: "Cabaldon", title: "Mayor", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "christopherc@cityofwestsacramento.org" }
    contacts << { first_name: "Michael", last_name: "Cacciotti", title: "Council Member", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "cco@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Calabrigo", title: "Town Manager", heal_city: "Danville, CA", organization: "Danville", email: "jcalabrigo@danville.ca.gov" }
    contacts << { first_name: "Corey", last_name: "Calaycay", title: "Council Member", heal_city: "Claremont, CA", organization: "Claremont", email: "ccalaycay@ci.claremont.ca.us" }
    contacts << { first_name: "Keith", last_name: "Caldwell", title: "City Administrator/Community Srvcs Dir.", heal_city: "Bishop, CA", organization: "Bishop", email: "keithcaldwell@ca-bishop.us" }
    contacts << { first_name: "Genoveva", last_name: "Calloway", title: "Mayor", heal_city: "San Pablo, CA", organization: "San Pablo", email: "latanyaf@ci.san-pablo.ca.us" }
    contacts << { first_name: "Sandra", last_name: "Calvert", title: "Council Member", heal_city: "Loomis, CA", organization: "Loomis", email: "sandra@sandracalvert.com" }
    contacts << { first_name: "Teresa", last_name: "Campbell", title: "Human Resources/Risk Manager", heal_city: "Chico, CA", organization: "Chico", email: "hrrm@ci.chico.ca.us" }
    contacts << { first_name: "Terry", last_name: "Campbell", title: "Vice Mayor", heal_city: "Needles, CA", organization: "Needles", email: "councilmembercampbell@yahoo.com" }
    contacts << { first_name: "Thomas", last_name: "Campbell", title: "Deputy Mayor", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "tcampbell@cosb.org" }
    contacts << { first_name: "Xavier", last_name: "Campos", title: "Council Member", heal_city: "San Jose, CA", organization: "San Jose", email: "xavier.campos@sanjoseca.gov; kathy.tsukamoto@sanjoseca.gov" }
    contacts << { first_name: "Paul", last_name: "Canepa", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "dist3@stocktongov.com" }
    contacts << { first_name: "Bill", last_name: "Canning", title: "Council Member", heal_city: "Sonora, CA", organization: "Sonora", email: "billc@cnnconst.com" }
    contacts << { first_name: "Leo", last_name: "Capuchino", title: "Council Member", heal_city: "Mendota, CA", organization: "Mendota", email: "lcapuchino@ci.mendota.ca.us" }
    contacts << { first_name: "Joe", last_name: "Carchio", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "jcarchio@surfcity-hb.org; cfikes@surfcity-hb.org" }
    contacts << { first_name: "Annette", last_name: "Cardona", title: "Community Services Director", heal_city: "Fillmore, CA", organization: "Fillmore", email: "acardona@ci.fillmore.ca.us" }
    contacts << { first_name: "Jerry", last_name: "Carlson", title: "Council Member", heal_city: "Atherton, CA", organization: "Atherton", email: "jcarlson@ci.atherton.ca.us;raljer@ir.netcom.com" }
    contacts << { first_name: "David", last_name: "Carmany", title: "City Manager", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "dcarmany@citymb.info" }
    contacts << { first_name: "Val", last_name: "Carpenter", title: "Council Member", heal_city: "Los Altos, CA", organization: "Los Altos", email: "vcarpenter@losaltosca.gov" }
    contacts << { first_name: "Larry", last_name: "Carr", title: "Council Member", heal_city: "Morgan Hill, CA", organization: "Morgan Hill", email: "larry.carr@morganhill.ca.gov" }
    contacts << { first_name: "Angel", last_name: "Carrillo", title: "Mayor Pro Tem", heal_city: "Azusa, CA", organization: "Azusa", email: "angelcarrillo@ci.azusa.ca.us" }
    contacts << { first_name: "Cristina", last_name: "Carrizosa", title: "Council Member - District 3", heal_city: "Pomona, CA", organization: "Pomona", email: "cristina_carrizosa@ci.pomona.ca.us" }
    contacts << { first_name: "Stan", last_name: "Carroll", title: "Mayor", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "gw1763@aol.com" }
    contacts << { first_name: "Dar", last_name: "Carroll", title: "Council Member", heal_city: "Tulelake, CA", organization: "Tulelake", email: "cityoftulelake@cot.net" }
    contacts << { first_name: "Antonio", last_name: "Cartagena", title: "Council Member", heal_city: "Walnut, CA", organization: "Walnut", email: "tcartagena@ci.walnut.ca.us" }
    contacts << { first_name: "Bob", last_name: "Cashman", title: "Council Member", heal_city: "Wildomar, CA", organization: "Wildomar", email: "BCashman@CityofWildomar.org" }
    contacts << { first_name: "Stephen", last_name: "Cassidy", title: "Mayor", heal_city: "San Leandro, CA", organization: "San Leandro", email: "shcassidy@yahoo.com" }
    contacts << { first_name: "David", last_name: "Castaldo", title: "Mayor Pro Tem", heal_city: "Beaumont, CA", organization: "Beaumont", email: "citycouncil@ci.beaumont.ca.us" }
    contacts << { first_name: "Aide", last_name: "Castro", title: "Council Member", heal_city: "Lynwood, CA", organization: "Lynwood", email: "acastro@lynwood.ca.us" }
    contacts << { first_name: "Carmen", last_name: "Cave", title: "Community Srvcs & Dev. Director", heal_city: "Menifee, CA", organization: "Menifee", email: "ccave@cityofmenifee.us" }
    contacts << { first_name: "Tasha", last_name: "Cerda", title: "Council Member", heal_city: "Gardena, CA", organization: "Gardena", email: "tcerda@ci.gardena.ca.us" }
    contacts << { first_name: "Patricia", last_name: "Cervantes", title: "Finance Officer/Personnel Director", heal_city: "Williams, CA", organization: "Williams", email: "finance@cityofwilliams.org" }
    contacts << { first_name: "Karina", last_name: "Cervantez", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "karina.cervantez@cityofwatsonville.org" }
    contacts << { first_name: "Jane", last_name: "Chambers", title: "City Manager", heal_city: "Ukiah, CA", organization: "Ukiah", email: "jchambers@cityofukiah.com" }
    contacts << { first_name: "Ling-Ling", last_name: "Chang", title: "Council Member", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "lchang@diamondbarca.gov" }
    contacts << { first_name: "Bruce", last_name: "Channing", title: "City Manager", heal_city: "Laguna Hills, CA", organization: "Laguna Hills", email: "bchanning@ci.laguna-hills.ca.us" }
    contacts << { first_name: "Tim", last_name: "Chapa", title: "City Manager/PIO", heal_city: "Arvin, CA", organization: "Arvin", email: "tchapa@arvin.org" }
    contacts << { first_name: "Noelia", last_name: "Chapa", title: "ACM/Personnel Director", heal_city: "Coachella, CA", organization: "Coachella", email: "nchapa@coachella.org" }
    contacts << { first_name: "G. Henry", last_name: "Charoen", title: "Council Member", heal_city: "La Palma, CA", organization: "La Palma", email: "henryc@cityoflapalma.org" }
    contacts << { first_name: "Marissa", last_name: "Chavez", title: "Human Resources Manager", heal_city: "Coalinga, CA", organization: "Coalinga", email: "mchavez@coalinga.com" }
    contacts << { first_name: "Larry", last_name: "Cheeves", title: "City Manager", heal_city: "Union City, CA", organization: "Union City", email: "larryc@ci.union-city.ca.us" }
    contacts << { first_name: "Stewart", last_name: "Chen", title: "Council Member", heal_city: "Alameda, CA", organization: "Alameda", email: "schen@ci.alameda.ca.us" }
    contacts << { first_name: "Carol", last_name: "Chen", title: "Council Member", heal_city: "Cerritos, CA", organization: "Cerritos", email: "pmendoza@cerritos.us" }
    contacts << { first_name: "Karen", last_name: "Chew", title: "Assistant City Manager", heal_city: "Brentwood, CA", organization: "Brentwood", email: "kchew@brentwoodca.gov" }
    contacts << { first_name: "Ken", last_name: "Chew", title: "Vice Mayor", heal_city: "Moraga, CA", organization: "Moraga", email: "kchew4moraga@sbcglobal.net" }
    contacts << { first_name: "John", last_name: "Chiang", title: "Mayor", heal_city: "Piedmont, CA", organization: "Piedmont", email: "jchiang@ci.piedmont.ca.us; chiangjohn@comcast.net" }
    contacts << { first_name: "Joseph", last_name: "Cho", title: "Council Member", heal_city: "Cerritos, CA", organization: "Cerritos", email: "pmendoza@cerritos.us" }
    contacts << { first_name: "Doug", last_name: "Chotkevys", title: "City Manager", heal_city: "Dana Point, CA", organization: "Dana Point", email: "dchotkevys@danapoint.org" }
    contacts << { first_name: "Larry", last_name: "Chu", title: "Council Member", heal_city: "Larkspur, CA", organization: "Larkspur", email: "lchu@pacbell.net" }
    contacts << { first_name: "Carmen", last_name: "Chu", title: "District 4 Supervisor", heal_city: "San Francisco, CA", organization: "San Francisco", email: "carmen.chu@sfgov.org" }
    contacts << { first_name: "David", last_name: "Chu", title: "District 3 Supervisor", heal_city: "San Francisco, CA", organization: "San Francisco", email: "david.chu@sfgov.org" }
    contacts << { first_name: "Kansen", last_name: "Chu", title: "Council Member", heal_city: "San Jose, CA", organization: "San Jose", email: "kansen.chu@sanjoseca.gov" }
    contacts << { first_name: "R. Leon", last_name: "Churchill", title: "City Manager", heal_city: "Tracy, CA", organization: "Tracy", email: "leon.churchill@ci.tracy.ca.us" }
    contacts << { first_name: "Karen", last_name: "Clapper", title: "Council Member", heal_city: "San Carlos, CA", organization: "San Carlos", email: "kclapper@cityofsancarlos.org" }
    contacts << { first_name: "John", last_name: "Clark", title: "Human Resources Director", heal_city: "Garden Grove, CA", organization: "Garden Grove", email: "jclark@ci.garden-grove.ca.us" }
    contacts << { first_name: "Liz", last_name: "Clontz", title: "Mayor", heal_city: "Dorris, CA", organization: "Dorris", email: "cityadmin@cot.net" }
    contacts << { first_name: "Marcelo", last_name: "Co", title: "Mayor Pro Tem", heal_city: "Moreno Valley, CA", organization: "Moreno Valley", email: "marceloc@moval.org" }
    contacts << { first_name: "Alexandra", last_name: "Cock", title: "Council Member", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "towncouncil@ci.corte-madera.ca.us" }
    contacts << { first_name: "David", last_name: "Coe", title: "Council Member", heal_city: "Wheatland, CA", organization: "Wheatland", email: "lthomason@wheatland.ca.gov" }
    contacts << { first_name: "Jim", last_name: "Cohen", title: "Council Member", heal_city: "Hidden Hills, CA", organization: "Hidden Hills", email: "council@hiddenhillscity.org" }
    contacts << { first_name: "Alan", last_name: "Cohen", title: "Council Member", heal_city: "Pacific Grove, CA", organization: "Pacific Grove", email: "a.m.cohen@sbcglobal.net" }
    contacts << { first_name: "Steve", last_name: "Cohn", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "scohn@cityofsacramento.org" }
    contacts << { first_name: "Kay", last_name: "Coleman", title: "Mayor", heal_city: "San Anselmo, CA", organization: "San Anselmo", email: "colemankp@comcast.net" }
    contacts << { first_name: "Jeffrey", last_name: "Collier", title: "City Manager", heal_city: "Whittier, CA", organization: "Whittier", email: "jcollier@cityofwhittier.org" }
    contacts << { first_name: "John", last_name: "Collins", title: "Council Member", heal_city: "Fountain Valley, CA", organization: "Fountain Valley", email: "fvproud@fountainvalley.org" }
    contacts << { first_name: "Richard", last_name: "Collins", title: "Council Member", heal_city: "Tiburon, CA", organization: "Tiburon", email: "rctib1@comcast.net" }
    contacts << { first_name: "Greg", last_name: "Collins", title: "Council Member", heal_city: "Visalia, CA", organization: "Visalia", email: "greg.collins@ci.visalia.ca.us" }
    contacts << { first_name: "Anil", last_name: "Comelo", title: "Human Resources Director", heal_city: "San Rafael, CA", organization: "San Rafael", email: "anil.comelo@cityofsanrafael.org" }
    contacts << { first_name: "Leon", last_name: "Compton", title: "City Administrator", heal_city: "Ripon, CA", organization: "Ripon", email: "lcompton@cityofripon.org" }
    contacts << { first_name: "Damon", last_name: "Connolly", title: "Council Member", heal_city: "San Rafael, CA", organization: "San Rafael", email: "damon.connolly@ci.san-rafael.ca.us" }
    contacts << { first_name: "Pete", last_name: "Constant", title: "Council Member", heal_city: "San Jose, CA", organization: "San Jose", email: "pete.constant@sanjoseca.gov" }
    contacts << { first_name: "Cheryl", last_name: "Cook-Kallio", title: "Council Member", heal_city: "Pleasanton, CA", organization: "Pleasanton", email: "ccook-kallio@ci.pleasanton.ca.us" }
    contacts << { first_name: "James", last_name: "Cooper", title: "Council Member", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "jcooper@elkgrovecity.org" }
    contacts << { first_name: "Dave", last_name: "Copley", title: "Community Services Director", heal_city: "Yucaipa, CA", organization: "Yucaipa", email: "dcopley@yucaipa.org" }
    contacts << { first_name: "Jay", last_name: "Corbin", title: "Council Member", heal_city: "Twentynine Palms, CA", organization: "Twentynine Palms", email: "jcorbin@29palms.com" }
    contacts << { first_name: "Anthony", last_name: "Coroalles", title: "City Manager", heal_city: "Calabasas, CA", organization: "Calabasas", email: "tcoroalles@cityofcalabasas.com" }
    contacts << { first_name: "Ashley", last_name: "Costa", title: "Mayor Pro Tem", heal_city: "Lompoc, CA", organization: "Lompoc", email: "ashleyecosta@gmail.com" }
    contacts << { first_name: "Joe", last_name: "Costello", title: "Mayor Pro Tem", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "jcostello@Arroyogrande.org" }
    contacts << { first_name: "Meg", last_name: "Courtney", title: "Vice Mayor", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "citycouncil@fortbragg.com" }
    contacts << { first_name: "Cheryl", last_name: "Cox", title: "Mayor", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "ccox@chulavistaca.gov; nflores@chulavistaca.gov" }
    contacts << { first_name: "Robert", last_name: "Cox", title: "Council Member", heal_city: "Cloverdale, CA", organization: "Cloverdale", email: "alohabc@comcast.net" }
    contacts << { first_name: "Rick", last_name: "Crabtree", title: "City Manager/City Attorney", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "rcrabtree@ci.red-bluff.ca.us" }
    contacts << { first_name: "Kimbley", last_name: "Craig", title: "Council Member", heal_city: "Salinas, CA", organization: "Salinas", email: "district5@ci.salinas.ca.us" }
    contacts << { first_name: "Mary", last_name: "Craton", title: "Mayor", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "mcraton@cityofcanyonlake.com" }
    contacts << { first_name: "Daniel", last_name: "Crespo", title: "Council Member", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "jvicuna@bellgardens.org" }
    contacts << { first_name: "Thomas", last_name: "Cromwell", title: "Council Member", heal_city: "Belvedere, CA", organization: "Belvedere", email: "tcromwell@cityofbelvedere.org" }
    contacts << { first_name: "Victoria", last_name: "Cross", title: "Human Resources Director", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "vcross@diamondbarca.gov" }
    contacts << { first_name: "Katie", last_name: "Crowder", title: "Assistant to City Manager", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "kcrowder@hmbcity.com" }
    contacts << { first_name: "Sharon", last_name: "Crull", title: "Vice Mayor", heal_city: "St. Helena, CA", organization: "St. Helena", email: "cityclerk@ci.st-helena.ca.us" }
    contacts << { first_name: "Sean", last_name: "Crumby", title: "Asst. City Manager/Public Works Dir.", heal_city: "Seal Beach, CA", organization: "Seal Beach", email: "scrumby@sealbeachca.gov" }
    contacts << { first_name: "Raymond", last_name: "Cruz", title: "Community Services Director", heal_city: "Carson, CA", organization: "Carson", email: "rcruz@carson.ca.us" }
    contacts << { first_name: "Steve", last_name: "Culleton", title: "Council Member", heal_city: "Paradise, CA", organization: "Paradise", email: "sculleton@townofparadise.com" }
    contacts << { first_name: "Jennifer", last_name: "Curtis", title: "Human Resources Manager", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "jcurtis@santa-clarita.com" }
    contacts << { first_name: 'Anton "Tony"', last_name: "Dahlerbruch", title: "City Manager", heal_city: "Rolling Hills, CA", organization: "Rolling Hills", email: "adahlerbruch@cityofrh.net" }
    contacts << { first_name: "Leslie", last_name: "Daigle", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "lesliejdaigle@aol.com" }
    contacts << { first_name: "Judith", last_name: "Dale", title: "Mayor", heal_city: "Buellton, CA", organization: "Buellton", email: "judithd@cityofbuellton.com" }
    contacts << { first_name: "Michelle", last_name: "Danaher", title: "Finance Manager", heal_city: "Villa Park, CA", organization: "Villa Park", email: "mdanaher@villapark.org" }
    contacts << { first_name: "Rick", last_name: "Daniels", title: "City Manager", heal_city: "Desert Hot Springs, CA", organization: "Desert Hot Springs", email: "rdaniels@cityofdhs.org" }
    contacts << { first_name: "Chris", last_name: "Daste", title: "Dir. of Parks and Rec & Community Svcs", heal_city: "Burbank, CA", organization: "Burbank", email: "cdaste@ci.burbank.ca.us" }
    contacts << { first_name: "Fran", last_name: "David", title: "City Manager", heal_city: "Hayward, CA", organization: "Hayward", email: "fran.david@hayward-ca.gov" }
    contacts << { first_name: "Marlin", last_name: "Davies", title: "Mayor", heal_city: "Woodland, CA", organization: "Woodland", email: "skip.davies@cityofwoodland.org" }
    contacts << { first_name: "Randy", last_name: "Davis", title: "Parks and Recreation Director", heal_city: "American Canyon, CA", organization: "American Canyon", email: "rdavis@cityofamericancanyon.org" }
    contacts << { first_name: "Terrance", last_name: "Davis", title: "Assistant City Manager", heal_city: "Compton, CA", organization: "Compton", email: "tdavis@comptoncity.org" }
    contacts << { first_name: "Bill", last_name: "Davis", title: "Mayor", heal_city: "Vernon, CA", organization: "Vernon", email: "kenomoto@ci.vernon.ca.us" }
    contacts << { first_name: "Daniel", last_name: "Dawson", title: "City Manager/City Clerk", heal_city: "Del Rey Oaks, CA", organization: "Del Rey Oaks", email: "citymanager@delreyoaks.org" }
    contacts << { first_name: "John", last_name: "Day", title: "Council Member", heal_city: "Anderson, CA", organization: "Anderson", email: "bubajohn@live.com" }
    contacts << { first_name: "Murray", last_name: "Day", title: "Council Member", heal_city: "Waterford, CA", organization: "Waterford", email: "murrayday@sbcglobal.net" }
    contacts << { first_name: "Gloria", last_name: "De La Rosa", title: "Council Member", heal_city: "Salinas, CA", organization: "Salinas", email: "gloriad@ci.salinas.ca.us" }
    contacts << { first_name: "Art", last_name: "de Werk", title: "City Manager/Police Chief/Fire Chief", heal_city: "Ceres, CA", organization: "Ceres", email: "art.dewerk@ci.ceres.ca.us; carissa.higginbotham@ci.ceres.ca.us" }
    contacts << { first_name: "Jerry", last_name: "Deal", title: "Council Member", heal_city: "Burlingame, CA", organization: "Burlingame", email: "jdeal@burlingame.org" }
    contacts << { first_name: "Jim", last_name: "Dear", title: "Mayor", heal_city: "Carson, CA", organization: "Carson", email: "jdear@carson.ca.us" }
    contacts << { first_name: "Stephen", last_name: "DeBrum", title: "Council Member", heal_city: "Manteca, CA", organization: "Manteca", email: "sdebrum@ci.manteca.ca.us; sfd47@hotmail.com" }
    contacts << { first_name: "Terry", last_name: "Deeringer", title: "Human Resources Manager", heal_city: "La Quinta, CA", organization: "La Quinta", email: "tdeeringer@la-quinta.org" }
    contacts << { first_name: "Brian", last_name: "DeForge", title: "Council Member", heal_city: "Beaumont, CA", organization: "Beaumont", email: "cityhall@ci.beaumont.ca.us" }
    contacts << { first_name: "Jeff", last_name: "DeGrandpre", title: "Mayor", heal_city: "Eastvale, CA", organization: "Eastvale", email: "jdegrandpre@eastvaleca.gov" }
    contacts << { first_name: "Bob", last_name: "Deis", title: "City Manager", heal_city: "Stockton, CA", organization: "Stockton", email: "bob.deis@ci.stockton.ca.us" }
    contacts << { first_name: "Bertha", last_name: "Del Bosque", title: "Council Member", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "badelbosque@yahoo.com" }
    contacts << { first_name: "Stephen", last_name: "Del Guercio", title: "Mayor", heal_city: "La Canada Flintridge, CA", organization: "La Canada Flintridge", email: "sdelguercio@lcf.ca.gov" }
    contacts << { first_name: "Peggy", last_name: "Delach", title: "Council Member", heal_city: "Covina, CA", organization: "Covina", email: "mlwalcza@covinaca.gov" }
    contacts << { first_name: "John", last_name: "Delgado", title: "Mayor", heal_city: "Hercules, CA", organization: "Hercules", email: "jdelgado@ci.hercules.ca.us" }
    contacts << { first_name: "Hector", last_name: "Delgado", title: "Council Member", heal_city: "South El Monte, CA", organization: "South El Monte", email: "hdelgado@soelmonte.org" }
    contacts << { first_name: "Chuck", last_name: "Della Sala", title: "Mayor", heal_city: "Monterey, CA", organization: "Monterey", email: "ramos@ci.monterey.ca.us" }
    contacts << { first_name: "Gary", last_name: "DeLong", title: "Council Member - District 3", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district3@longbeach.gov" }
    contacts << { first_name: "Erin", last_name: "Dempster", title: "Human Resources Manager", heal_city: "Poway, CA", organization: "Poway", email: "edempster@poway.org" }
    contacts << { first_name: "Barbara", last_name: "Denny", title: "Council Member", heal_city: "Coronado, CA", organization: "Coronado", email: "bdenny@coronado.ca.us" }
    contacts << { first_name: "Kathleen", last_name: "DeRosa", title: "Mayor", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "mayorderosa@yahoo.com" }
    contacts << { first_name: "Kanwaldeep", last_name: "Dhaliwal", title: "Council Member", heal_city: "Kerman, CA", organization: "Kerman", email: "mreyes@cityofkerman.org" }
    contacts << { first_name: 'Ruby" Amarpreet', last_name: "Dhaliwal", title: "Mayor", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "amarpreet_2000@yahoo.com" }
    contacts << { first_name: "Olga", last_name: "Diaz", title: "Deputy Mayor", heal_city: "Escondido, CA", organization: "Escondido", email: "odiaz@escondido.org" }
    contacts << { first_name: "Fred", last_name: "Diaz", title: "City Manager", heal_city: "Fremont, CA", organization: "Fremont", email: "fdiaz@fremont.gov" }
    contacts << { first_name: "Steven", last_name: "Diels", title: "Council Member", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "steven.diels@redondo.org" }
    contacts << { first_name: "Sue", last_name: "Digre", title: "Council Member", heal_city: "Pacifica, CA", organization: "Pacifica", email: "digres@ci.pacifica.ca.us" }
    contacts << { first_name: "Richard", last_name: "Digre", title: "Director of Administrative Services", heal_city: "Union City, CA", organization: "Union City", email: "rdigre@ci.union-city.ca.us" }
    contacts << { first_name: "Melissa", last_name: "Dile", title: "Assistant City Manager", heal_city: "Mountain View, CA", organization: "Mountain View", email: "melissa.dile@mountainview.gov" }
    contacts << { first_name: "Michael", last_name: "DiVirgilio", title: "Council Member", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "mdivir@gmail.com" }
    contacts << { first_name: "Ron", last_name: "Dixon", title: "Council Member", heal_city: "Shasta Lake, CA", organization: "Shasta Lake", email: "toni.coates@ci.shasta-lake.ca.us" }
    contacts << { first_name: "Lillie", last_name: "Dobson", title: "Council Member - District 2", heal_city: "Compton, CA", organization: "Compton", email: "ldobson@comptoncity.org" }
    contacts << { first_name: "Daniel", last_name: "Dodge", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "daniel.dodge@cityofwatsonville.org" }
    contacts << { first_name: "Joseph", last_name: "Donabed", title: "Personnel Director", heal_city: "Hughson, CA", organization: "Hughson", email: "jdonabed@hughson.org" }
    contacts << { first_name: "John", last_name: "Donlevy, Jr.", title: "City Manager", heal_city: "Winters, CA", organization: "Winters", email: "john.donlevy@cityofwinters.org" }
    contacts << { first_name: "Lisa", last_name: "Donley", title: "Recreation & Community Svcs Dir.", heal_city: "Port Hueneme, CA", organization: "Port Hueneme", email: "ldonley@ci.port-hueneme.ca.us" }
    contacts << { first_name: "Debra", last_name: "Dorst-Porada", title: "Council Member", heal_city: "Ontario, CA", organization: "Ontario", email: "ddorst-porada@ci.ontario.ca.us" }
    contacts << { first_name: "Farrah", last_name: "Douglas", title: "Council Member", heal_city: "Carlsbad, CA", organization: "Carlsbad", email: "council@carlsbadca.gov" }
    contacts << { first_name: "Mike", last_name: "Doyle", title: "Council Member", heal_city: "Danville, CA", organization: "Danville", email: "mdoyle@danville.ca.gov" }
    contacts << { first_name: "Kelly", last_name: "Doyle", title: "Director of Rec & Comm Svcs", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "kdoyle@cityofmissionviejo.org" }
    contacts << { first_name: "John", last_name: "Drayman", title: "Council Member", heal_city: "Glendale, CA", organization: "Glendale", email: "jdrayman@ci.glendale.ca.us" }
    contacts << { first_name: "Dan", last_name: "Dreiling", title: "Interim City Manager/Police Chief", heal_city: "Palos Verdes Estates, CA", organization: "Palos Verdes Estates", email: "ddreiling@pvestates.org" }
    contacts << { first_name: "Ted", last_name: "Driscoll", title: "Council Member", heal_city: "Portola Valley, CA", organization: "Portola Valley", email: "tdriscoll@portolavalley.net" }
    contacts << { first_name: "Jeff", last_name: "Duclos", title: "Mayor", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "jeff@jeffduclos.com" }
    contacts << { first_name: "Mike", last_name: "Duguay", title: "Council Member", heal_city: "Etna, CA", organization: "Etna", email: "etnacity@sisqtel.net" }
    contacts << { first_name: "Richard", last_name: "Dukellis", title: "Director of Administrative Services", heal_city: "La Mesa, CA", organization: "La Mesa", email: "rdukellis@ci.la-mesa.ca.us" }
    contacts << { first_name: "John", last_name: "Dunbar", title: "Mayor", heal_city: "Yountville, CA", organization: "Yountville", email: "jdunbar@yville.com" }
    contacts << { first_name: "Judy", last_name: "Dunlap", title: "Council Member - District 2", heal_city: "Inglewood, CA", organization: "Inglewood", email: "jdunlap@cityofinglewood.org" }
    contacts << { first_name: "Stephen", last_name: "Dunn", title: "City Manager/Finance Director", heal_city: "Upland, CA", organization: "Upland", email: "sdunn@ci.upland.ca.us" }
    contacts << { first_name: "Jodene", last_name: "Dunphy", title: "Director of Human Resources", heal_city: "Santee, CA", organization: "Santee", email: "jdunphy@ci.santee.ca.us" }
    contacts << { first_name: "Ruben", last_name: "Duran", title: "City Manager", heal_city: "El Centro, CA", organization: "El Centro", email: "rduran@cityofelcentro.org" }
    contacts << { first_name: "Steve", last_name: "Duran", title: "City Manager", heal_city: "Hercules, CA", organization: "Hercules", email: "sduran@ci.hercules.ca.us" }
    contacts << { first_name: "John ", last_name: "Duran", title: "Council Member", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "jduran@weho.org" }
    contacts << { first_name: "Carol", last_name: "Dutra-Vernaci", title: "Mayor", heal_city: "Union City, CA", organization: "Union City", email: "carol@dutravernaci.com" }
    contacts << { first_name: "John", last_name: "Eastman", title: "Council Member", heal_city: "Mammoth Lakes, CA", organization: "Mammoth Lakes", email: "jgray@ci.mammoth-lakes.ca.us" }
    contacts << { first_name: "Edward", last_name: "Easton", title: "Mayor Pro Tem", heal_city: "Goleta, CA", organization: "Goleta", email: "ee@cityofgoleta.org" }
    contacts << { first_name: "John", last_name: "Edelston", title: "Council Member", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "jedelston@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Wallace", last_name: "Edgerton", title: "Council Member", heal_city: "Menifee, CA", organization: "Menifee", email: "wedgerton@cityofmenifee.us" }
    contacts << { first_name: "Pat", last_name: "Eklund", title: "Mayor", heal_city: "Novato, CA", organization: "Novato", email: "pat@pateklund.com; pateklund@comcast.net" }
    contacts << { first_name: "Paul", last_name: "Eldredge", title: "City Manager", heal_city: "Brentwood, CA", organization: "Brentwood", email: "peldredge@brentwoodca.gov" }
    contacts << { first_name: "David", last_name: "Elias", title: "City Manager", heal_city: "Fowler, CA", organization: "Fowler", email: "delias@ci.fowler.ca.us" }
    contacts << { first_name: "Janet", last_name: "Emmett", title: "Human Resources Manager", heal_city: "South Lake Tahoe, CA", organization: "South Lake Tahoe", email: "jemmett@cityofslt.us" }
    contacts << { first_name: "Thomas", last_name: "Engstrom", title: "Mayor", heal_city: "Lakeport, CA", organization: "Lakeport", email: "lpd1994@yahoo.com" }
    contacts << { first_name: "Becky", last_name: "Enneking", title: "Acting HR Director", heal_city: "Lathrop, CA", organization: "Lathrop", email: "benneking@ci.lathrop.ca.us" }
    contacts << { first_name: "Rodrigo", last_name: "Espinoza", title: "Mayor", heal_city: "Livingston, CA", organization: "Livingston", email: "espinozarod@yahoo.com" }
    contacts << { first_name: "Daniel", last_name: "Espitia", title: "Council Member", heal_city: "Wasco, CA", organization: "Wasco", email: "durodriguez@ci.wasco.ca.us" }
    contacts << { first_name: "Jim", last_name: "Estep", title: "City Manager", heal_city: "Lincoln, CA", organization: "Lincoln", email: "jestep@ci.lincoln.ca.us" }
    contacts << { first_name: "Margaret", last_name: "Estrada", title: "Mayor", heal_city: "Lomita, CA", organization: "Lomita", email: "jensnana@pacbell.net" }
    contacts << { first_name: "Ron", last_name: "Everett", title: "Mayor Pro Tem", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "reverett@diamondbarca.gov" }
    contacts << { first_name: "Jim", last_name: "Evert", title: "Council Member", heal_city: "San Clemente, CA", organization: "San Clemente", email: "evertj@san-clemente.org" }
    contacts << { first_name: "Ernest", last_name: "Ewin", title: "Council Member", heal_city: "La Mesa, CA", organization: "La Mesa", email: "eewin@ci.la-mesa.ca.us" }
    contacts << { first_name: "Steven", last_name: "Falk", title: "City Manager", heal_city: "Lafayette, CA", organization: "Lafayette", email: "sfalk@lovelafayette.org" }
    contacts << { first_name: "Regina", last_name: "Falkner", title: "Community Services Director", heal_city: "Los Gatos, CA", organization: "Los Gatos", email: "Rfalkner@losgatosca.gov" }
    contacts << { first_name: "Patrick", last_name: "Faretta", title: "Parks and Comm. Svcs. Director", heal_city: "Atwater, CA", organization: "Atwater", email: "pfaretta@atwater.org" }
    contacts << { first_name: "Kenneth", last_name: "Farfsing", title: "City Manager", heal_city: "Signal Hill, CA", organization: "Signal Hill", email: "kfarfsing@cityofsignalhill.org" }
    contacts << { first_name: "John", last_name: "Fasana", title: "Council Member", heal_city: "Duarte, CA", organization: "Duarte", email: "fasanaj@accessduarte.com" }
    contacts << { first_name: "Mary", last_name: "Fast", title: "Council Member", heal_city: "Reedley, CA", organization: "Reedley", email: "mfast@reedley.ca.gov" }
    contacts << { first_name: "Carol Joan", last_name: "Faul", title: "Mayor", heal_city: "Atwater, CA", organization: "Atwater", email: "jfaul@atwater.org" }
    contacts << { first_name: "Sandra", last_name: "Featherson", title: "Director of Administrative Services", heal_city: "Solvang, CA", organization: "Solvang", email: "sandraf@cityofsolvang.com" }
    contacts << { first_name: "Coralin", last_name: "Feierbach", title: "Council Member", heal_city: "Belmont, CA", organization: "Belmont", email: "cfeierbach@belmont.gov" }
    contacts << { first_name: "Gary", last_name: "Felien", title: "Council Member", heal_city: "Oceanside, CA", organization: "Oceanside", email: "gfelien@ci.oceanside.ca.us" }
    contacts << { first_name: "Ralph", last_name: "Fernandez", title: "Vice Mayor", heal_city: "Santa Paula, CA", organization: "Santa Paula", email: "info@ci.santa-paula.ca.us" }
    contacts << { first_name: "Tony", last_name: "Ferrara", title: "Mayor", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "tmf4259@charter.net; tferrara@arroyogrande.org" }
    contacts << { first_name: "John", last_name: "Ferrero", title: "Council Member", heal_city: "Industry, CA", organization: "Industry", email: "cityclerk@cityofindustry.org" }
    contacts << { first_name: "Frank", last_name: "Ferry", title: "Council Member", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "Fferry@santa-clarita.com" }
    contacts << { first_name: "Matthew", last_name: "Fertal", title: "City Manager", heal_city: "Garden Grove, CA", organization: "Garden Grove", email: "mattf@ci.garden-grove.ca.us" }
    contacts << { first_name: "Jerry Ann", last_name: "Fichter", title: "Council Member", heal_city: "Gridley, CA", organization: "Gridley", email: "jfichter@gridley.ca.us" }
    contacts << { first_name: "Artie", last_name: "Fields", title: "City Manager", heal_city: "Inglewood, CA", organization: "Inglewood", email: "AFields@Cityofinglewood.org" }
    contacts << { first_name: "Debra ", last_name: "Figone", title: "City Manager", heal_city: "San Jose, CA", organization: "San Jose", email: "debra.figone@sanjoseca.gov" }
    contacts << { first_name: "Cliff", last_name: "Finley", title: "Personnel Director", heal_city: "Santa Paula, CA", organization: "Santa Paula", email: "cfinley@ci.santa-paula.ca.us" }
    contacts << { first_name: "Bill", last_name: "Fisher", title: "Council Member", heal_city: "El Segundo, CA", organization: "El Segundo", email: "bfisher@elsegundo.org" }
    contacts << { first_name: "Mary Kaye", last_name: "Fisher", title: "Interim Human Resources Director", heal_city: "Fremont, CA", organization: "Fremont", email: "mkfisher@fremont.gov" }
    contacts << { first_name: "Jarrett", last_name: "Fishpaw", title: "Mayor", heal_city: "Los Altos, CA", organization: "Los Altos", email: "jfishpaw@losaltosca.gov" }
    contacts << { first_name: "Beth", last_name: "Flamm-Overby", title: "Human Resources Director", heal_city: "Lompoc, CA", organization: "Lompoc", email: "b_overby@ci.lompoc.ca.us" }
    contacts << { first_name: "Michael", last_name: "Fleager", title: "City Manager", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "mfleager@chinohills.org" }
    contacts << { first_name: "Lolita", last_name: "Fletcher", title: "Personnel Director", heal_city: "South Gate, CA", organization: "South Gate", email: "lbrownfletcher@sogate.org" }
    contacts << { first_name: "Jose", last_name: "Flores", title: "Mayor", heal_city: "Clovis, CA", organization: "Clovis", email: "clovisjoe@prodigy.net" }
    contacts << { first_name: "Sally", last_name: "Flowers", title: "Mayor Pro Tem", heal_city: "Artesia, CA", organization: "Artesia", email: "sflowers@cityofartesia.us" }
    contacts << { first_name: "Darrell", last_name: "Fong", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "dfong@cityofsacramento.org" }
    contacts << { first_name: "Gerald", last_name: "Forde", title: "City Manager", heal_city: "Huron, CA", organization: "Huron", email: "gforde415@yahoo.com" }
    contacts << { first_name: "Jim", last_name: "Foreman", title: "Mayor Pro Tem", heal_city: "Hemet, CA", organization: "Hemet", email: "jforeman@cityofhemet.org" }
    contacts << { first_name: "Bryan", last_name: "Foster", title: "Council Member", heal_city: "Yreka, CA", organization: "Yreka", email: "bfoster@ci.yreka.ca.us" }
    contacts << { first_name: "Marc", last_name: "Fox", title: "Assistant City Manager", heal_city: "Pittsburg, CA", organization: "Pittsburg", email: "mfox@ci.pittsburg.ca.us" }
    contacts << { first_name: "Michael", last_name: "Frank", title: "City Manager", heal_city: "Novato, CA", organization: "Novato", email: "mfrank@novato.org" }
    contacts << { first_name: "Ralph", last_name: "Franklin", title: "Council Member - District 4", heal_city: "Inglewood, CA", organization: "Inglewood", email: "rfranklin@cityofinglewood.org" }
    contacts << { first_name: "Brett", last_name: "Frazier", title: "Council Member", heal_city: "Madera, CA", organization: "Madera", email: "brett_frazier@ymail.com" }
    contacts << { first_name: "Steve", last_name: "Freedland", title: "Mayor Pro Tem", heal_city: "Hidden Hills, CA", organization: "Hidden Hills", email: "council@hiddenhillscity.org" }
    contacts << { first_name: "Laura", last_name: "Friedman", title: "Council Member", heal_city: "Glendale, CA", organization: "Glendale", email: "lfriedman@ci.glendale.ca.us" }
    contacts << { first_name: "Pam", last_name: "Frisella", title: "Mayor", heal_city: "Foster City, CA", organization: "Foster City", email: "pfrisella@fostercity.org" }
    contacts << { first_name: "Dale", last_name: "Fritchen", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "dale.fritchen@ci.stockton.ca.us" }
    contacts << { first_name: "David", last_name: "Fuentes", title: "Council Member", heal_city: "Irwindale, CA", organization: "Irwindale", email: "lsnyder@ci.irwindale.ca.us" }
    contacts << { first_name: "Pat", last_name: "Furey", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "pfurey@TorranceCA.gov" }
    contacts << { first_name: "Mike", last_name: "Fuson", title: "Interim City Manager", heal_city: "Belvedere, CA", organization: "Belvedere", email: "mfuson@sbcglobal.net" }
    contacts << { first_name: "Ted", last_name: "Gaebler", title: "City Manager", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "tgaebler@cityofranchocordova.org" }
    contacts << { first_name: "Eric", last_name: "Garcetti", title: "Council President", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.garcetti@lacity.org" }
    contacts << { first_name: "Leon", last_name: "Garcia", title: "Mayor", heal_city: "American Canyon, CA", organization: "American Canyon", email: "lgarcia@cityofamericancanyon.org" }
    contacts << { first_name: "Marlen", last_name: "Garcia", title: "Council Member", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "mgarcia2@baldwinpark.com" }
    contacts << { first_name: "Ron", last_name: "Garcia", title: "mayor", heal_city: "Brea, CA", organization: "Brea", email: "rong@cityofbrea.net" }
    contacts << { first_name: "David", last_name: "Garcia", title: "City Manager", heal_city: "Coachella, CA", organization: "Coachella", email: "dgarcia@coachella.org" }
    contacts << { first_name: "Eduardo", last_name: "Garcia", title: "Mayor", heal_city: "Coachella, CA", organization: "Coachella", email: "edgarcia@coachella.org" }
    contacts << { first_name: "Tony", last_name: "Garcia", title: "Council Member", heal_city: "Coalinga, CA", organization: "Coalinga", email: "tgarcia@coalinga.com" }
    contacts << { first_name: "Gabe", last_name: "Garcia", title: "Dir. of Parks & Community Services", heal_city: "Corona, CA", organization: "Corona", email: "gabriel.garcia@ci.corona.ca.us" }
    contacts << { first_name: "Bart", last_name: "Garcia", title: "Council Member", heal_city: "Gustine, CA", organization: "Gustine", email: "bgarcia@cityofgustine.com" }
    contacts << { first_name: "Joe", last_name: "Garcia", title: "Mayor Pro Tem", heal_city: "Monrovia, CA", organization: "Monrovia", email: "jgarcia@ci.monrovia.ca.us" }
    contacts << { first_name: "Henry", last_name: "Garcia", title: "City Manager", heal_city: "Moreno Valley, CA", organization: "Moreno Valley", email: "henryg@moval.org" }
    contacts << { first_name: "Angelica", last_name: "Garcia", title: "Council Member", heal_city: "South El Monte, CA", organization: "South El Monte", email: "agarcia@soelmonte.org" }
    contacts << { first_name: "Elvia", last_name: "Garcia-Ayala", title: "Community Services Director", heal_city: "Davis, CA", organization: "Davis", email: "egarcia@cityofdavis.org" }
    contacts << { first_name: "Nancy", last_name: "Gardner", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "gardnerncy@aol.com" }
    contacts << { first_name: "Jeff", last_name: "Gardner", title: "City Manager", heal_city: "Plymouth, CA", organization: "Plymouth", email: "jgardner@ci.plymouth.ca.us" }
    contacts << { first_name: "Bob", last_name: "Gardner", title: "Council Member", heal_city: "Redlands, CA", organization: "Redlands", email: "citycouncil@cityofredlands.org" }
    contacts << { first_name: "Yvonne", last_name: "Garrett", title: "Asst. City Manager/Community Services Director", heal_city: "La Mesa, CA", organization: "La Mesa", email: "ygarrett@ci.la-mesa.ca.us" }
    contacts << { first_name: "Dave", last_name: "Geer", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "dgeer@modestogov.com" }
    contacts << { first_name: "Darrell", last_name: "George", title: "City Manager", heal_city: "Duarte, CA", organization: "Duarte", email: "georged@accessduarte.com" }
    contacts << { first_name: "Pat", last_name: "Gilardi", title: "Council Member", heal_city: "Cotati, CA", organization: "Cotati", email: "pgilardi@ci.cotati.ca.us" }
    contacts << { first_name: "Pat", last_name: "Gilbreath", title: "Council Member", heal_city: "Redlands, CA", organization: "Redlands", email: "pgilbreath@cityofredlands.org" }
    contacts << { first_name: "Marie", last_name: "Gilmore", title: "Mayor", heal_city: "Alameda, CA", organization: "Alameda", email: "mgilmore@ci.alameda.ca.us" }
    contacts << { first_name: "Mike", last_name: "Gin", title: "Mayor", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "mikegin4redondo@aol.com" }
    contacts << { first_name: "Mike", last_name: "Gipson", title: "Council Member", heal_city: "Carson, CA", organization: "Carson", email: "mgipson@carson.ca.us" }
    contacts << { first_name: "Dan", last_name: "Gjerde", title: "Council Member", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "dgjerde@fortbragg.com" }
    contacts << { first_name: "Dean", last_name: "Glaser", title: "Council Member", heal_city: "Fortuna, CA", organization: "Fortuna", email: "camelg@aol.com" }
    contacts << { first_name: "Steven", last_name: "Glazer", title: "Council Member", heal_city: "Orinda, CA", organization: "Orinda", email: "sglazer@cityoforinda.org" }
    contacts << { first_name: "Beverly", last_name: "Glode", title: "Human Resource Director", heal_city: "Lancaster, CA", organization: "Lancaster", email: "bglode@cityoflancasterca.org" }
    contacts << { first_name: "Robin", last_name: "Goble", title: "Mayor", heal_city: "Windsor, CA", organization: "Windsor", email: "rgoble@townofwindsor.com" }
    contacts << { first_name: "Charles", last_name: "Goeken", title: "Mayor", heal_city: "Waterford, CA", organization: "Waterford", email: "cagjen@charter.net" }
    contacts << { first_name: "Jay", last_name: "Goldstone", title: "Chief Operating Officer", heal_city: "San Diego, CA", organization: "San Diego", email: "jgoldstone@sandiego.gov" }
    contacts << { first_name: "Dave", last_name: "Golonski", title: "Mayor", heal_city: "Burbank, CA", organization: "Burbank", email: "dgolonski@ci.burbank.ca.us" }
    contacts << { first_name: "Stephanie", last_name: "Gomes", title: "Vice Mayor", heal_city: "Vallejo, CA", organization: "Vallejo", email: "sgomes@ci.vallejo.ca.us" }
    contacts << { first_name: "Joe", last_name: "Gomez", title: "Mayor", heal_city: "Barstow, CA", organization: "Barstow", email: "jgomez@barstowca.org" }
    contacts << { first_name: "Michael", last_name: "Gomez", title: "Vice Mayor", heal_city: "Hawaiian Gardens, CA", organization: "Hawaiian Gardens", email: "mgomez@hawaiiangardenscity.org" }
    contacts << { first_name: "Armando", last_name: "Gomez", title: "Council Member", heal_city: "Milpitas, CA", organization: "Milpitas", email: "agomez@ci.milpitas.ca.gov" }
    contacts << { first_name: "Frank", last_name: "Gonzales", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "fgonzales@ci.colton.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Gonzales", title: "Council Member", heal_city: "South El Monte, CA", organization: "South El Monte", email: "jgonzales@soelmonte.org" }
    contacts << { first_name: "Aldo", last_name: "Gonzalez", title: "Council Member", heal_city: "Dinuba, CA", organization: "Dinuba", email: "lbarkley@dinuba.ca.gov" }
    contacts << { first_name: "Eduardo", last_name: "Gonzalez", title: "Council Member", heal_city: "Fillmore, CA", organization: "Fillmore", email: "egonzalez@ci.fillmore.ca.us" }
    contacts << { first_name: "Gabriel", last_name: "Gonzalez", title: "City Manager", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "ggonzalez@rpcity.org" }
    contacts << { first_name: "Luis", last_name: "Gonzalez", title: "Council Member", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "louiegonzalez@santafesprings.org" }
    contacts << { first_name: "Robert", last_name: "Gonzalez", title: "Mayor", heal_city: "Santa Paula, CA", organization: "Santa Paula", email: "info@ci.santa-paula.ca.us" }
    contacts << { first_name: "Adela", last_name: "Gonzalez", title: "City Manager", heal_city: "Soledad, CA", organization: "Soledad", email: "adelag@cityofsoledad.com" }
    contacts << { first_name: "Henry", last_name: "Gonzalez", title: "Council Member", heal_city: "South Gate, CA", organization: "South Gate", email: "vgalvez@sogate.org" }
    contacts << { first_name: "Pedro", last_name: "Gonzalez", title: "Mayor", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "pedro.gonzalez@ssf.net" }
    contacts << { first_name: "Victor", last_name: "Gordo", title: "Council Member", heal_city: "Pasadena, CA", organization: "Pasadena", email: "vgordo@cityofpasadena.net" }
    contacts << { first_name: "David", last_name: "Gordon", title: "Council Member", heal_city: "Burbank, CA", organization: "Burbank", email: "dgordon@ci.burbank.ca.us" }
    contacts << { first_name: "Bonnie", last_name: "Gore", title: "Council Member", heal_city: "Roseville, CA", organization: "Roseville", email: "bgore@roseville.ca.us" }
    contacts << { first_name: "Susan", last_name: "Gorin", title: "Council Member", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "sgorin@srcity.org" }
    contacts << { first_name: "Kathleen", last_name: "Gotch", title: "Asst. City Manager", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "kgotch@chinohills.org" }
    contacts << { first_name: "Rick", last_name: "Gould", title: "Dir. Parks, Rec., Comm. Svcs.", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "Rgould@santa-clarita.com" }
    contacts << { first_name: "Rod", last_name: "Gould", title: "City Manager", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "rod.gould@smgov.net" }
    contacts << { first_name: "Gerri", last_name: "Graham-Mejia", title: "Council Member", heal_city: "Los Alamitos, CA", organization: "Los Alamitos", email: "citycouncil@cityoflosalamitos.org" }
    contacts << { first_name: "Ellis", last_name: "Green", title: "Mayor", heal_city: "Port Hueneme, CA", organization: "Port Hueneme", email: "meengreen@gmail.com" }
    contacts << { first_name: "Michelle", last_name: "Greene", title: "Administrative Services Director", heal_city: "Goleta, CA", organization: "Goleta", email: "mgreene@cityofgoleta.org" }
    contacts << { first_name: "Michael", last_name: "Gregory", title: "Council Member", heal_city: "San Leandro, CA", organization: "San Leandro", email: "mgregory@ci.san-leandro.ca.us" }
    contacts << { first_name: "Norman", last_name: "Griffaw", title: "Council Member", heal_city: "Port Hueneme, CA", organization: "Port Hueneme", email: "normangriffaw@hotmail.com" }
    contacts << { first_name: "Jeff", last_name: "Griffiths", title: "Council Member", heal_city: "Bishop, CA", organization: "Bishop", email: "panajeff@hotmail.com" }
    contacts << { first_name: "Dean", last_name: "Grose", title: "Council Member", heal_city: "Los Alamitos, CA", organization: "Los Alamitos", email: "deanlosal@yahoo.com" }
    contacts << { first_name: "Geoffrey", last_name: "Grote", title: "City Administrator", heal_city: "Piedmont, CA", organization: "Piedmont", email: "ggrote@ci.piedmont.ca.us" }
    contacts << { first_name: "Brandt", last_name: "Grotte", title: "Council Member", heal_city: "San Mateo, CA", organization: "San Mateo", email: "bgrotte@cityofsanmateo.org" }
    contacts << { first_name: "Beth", last_name: "Groves", title: "City Manager", heal_city: "Norco, CA", organization: "Norco", email: "bgroves@ci.norco.ca.us" }
    contacts << { first_name: "Scott", last_name: "Gruendl", title: "Vice Mayor", heal_city: "Chico, CA", organization: "Chico", email: "sgruendl@ci.chico.ca.us" }
    contacts << { first_name: "Dean", last_name: "Gualco", title: "Human Resources Manager", heal_city: "Lodi, CA", organization: "Lodi", email: "dgualco@lodi.gov" }
    contacts << { first_name: "Veronica", last_name: "Guardado", title: "Mayor Pro Tem", heal_city: "Maywood, CA", organization: "Maywood", email: "veronica.guardado@cityofmaywood.org" }
    contacts << { first_name: "Mario", last_name: "Guerra", title: "Mayor", heal_city: "Downey, CA", organization: "Downey", email: "mguerra@downeyca.org" }
    contacts << { first_name: "Elba", last_name: "Guerrero", title: "Vice Mayor", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "eguerrero@huntingtonpark.org" }
    contacts << { first_name: "John", last_name: "Guinn", title: "City Manager", heal_city: "Shafter, CA", organization: "Shafter", email: "jguinn@shafter.com" }
    contacts << { first_name: "Alex", last_name: "Gurza", title: "Employee Relations Director", heal_city: "San Jose, CA", organization: "San Jose", email: "alex.gurza@sanjoseca.gov" }
    contacts << { first_name: "Loretta", last_name: "Gutierrez", title: "Interim Director of Comm. Svcs.", heal_city: "Commerce, CA", organization: "Commerce", email: "robertc@ci.commerce.ca.us" }
    contacts << { first_name: "Ken", last_name: "Gutierrez", title: "Council Member", heal_city: "Riverside, CA", organization: "Riverside", email: "kgutierrez@riversideca.gov" }
    contacts << { first_name: "Teresia", last_name: "Haase", title: "Personnel Director", heal_city: "Stockton, CA", organization: "Stockton", email: "teresia.haase@stocktongov.com" }
    contacts << { first_name: "Laura", last_name: "Haban", title: "Administrative Analyst", heal_city: "Crescent City, CA", organization: "Crescent City", email: "lhaban@crescentcity.org" }
    contacts << { first_name: "Christine", last_name: "Hach", title: "Administrative Svcs Director/Assist City Manager", heal_city: "Gardena, CA", organization: "Gardena", email: "chach@ci.gardena.ca.us" }
    contacts << { first_name: "Brian", last_name: "Haddix", title: "City Manager", heal_city: "Sanger, CA", organization: "Sanger", email: "bhaddix@ci.sanger.ca.us" }
    contacts << { first_name: "Carl", last_name: "Hagen", title: "Vice Mayor", heal_city: "Placerville, CA", organization: "Placerville", email: "szito@cityofplacerville.org" }
    contacts << { first_name: "Roger", last_name: "Haley", title: "City Manager", heal_city: "Lynwood, CA", organization: "Lynwood", email: "rhaley@lynwood.ca.us" }
    contacts << { first_name: "Alexander", last_name: "Hall", title: "Community Services Dir.", heal_city: "Merced, CA", organization: "Merced", email: "halla@cityofmerced.org" }
    contacts << { first_name: "Takafumi", last_name: "Hamabata", title: "Director Of Social Services", heal_city: "Norwalk, CA", organization: "Norwalk", email: "thamabata@ci.norwalk.ca.us" }
    contacts << { first_name: "Doug", last_name: "Hammerstrom", title: "Council Member", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "thehahas@mcn.org" }
    contacts << { first_name: "Stacey", last_name: "Haney", title: "Human Resources Director", heal_city: "Roseville, CA", organization: "Roseville", email: "shaney@roseville.ca.us" }
    contacts << { first_name: "Scott", last_name: "Hanin", title: "City Manager", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "shanin@ci.el-cerrito.ca.us" }
    contacts << { first_name: "Keith", last_name: "Hanks", title: "Council Member", heal_city: "Azusa, CA", organization: "Azusa", email: "keithhanks@ci.azusa.ca.us" }
    contacts << { first_name: "Kevin", last_name: "Hanley", title: "Mayor", heal_city: "Auburn, CA", organization: "Auburn", email: "hanleykh@jps.net" }
    contacts << { first_name: "Julie", last_name: "Hannon", title: "Parks & Rec Dir./Neighborhoods", heal_city: "Modesto, CA", organization: "Modesto", email: "jhannon@modestogov.com" }
    contacts << { first_name: "Larry", last_name: "Hansen", title: "Council Member", heal_city: "Lodi, CA", organization: "Lodi", email: "hansen@lodi.gov" }
    contacts << { first_name: "Victor", last_name: "Hanson", title: "Council Member", heal_city: "Willits, CA", organization: "Willits", email: "vzh2064@sbcglobal.net" }
    contacts << { first_name: "Danny", last_name: "Harber", title: "Council Member", heal_city: "Bell, CA", organization: "Bell", email: "dharber@cityofbell.org" }
    contacts << { first_name: "Robert", last_name: "Harbicht", title: "Mayor", heal_city: "Arcadia, CA", organization: "Arcadia", email: "mbuttice@ci.arcadia.ca.us" }
    contacts << { first_name: "Jim", last_name: "Hardy", title: "City Manager", heal_city: "Foster City, CA", organization: "Foster City", email: "jhardy@fostercity.org" }
    contacts << { first_name: "Steve", last_name: "Hardy", title: "Mayor", heal_city: "Vacaville, CA", organization: "Vacaville", email: "shardy@cityofvacaville.com" }
    contacts << { first_name: "Matthew", last_name: "Harper", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "matthew.harper@surfcity-hb.org" }
    contacts << { first_name: "John", last_name: "Harris", title: "Council Member", heal_city: "Manteca, CA", organization: "Manteca", email: "jharris@ci.manteca.ca.us" }
    contacts << { first_name: "Sally", last_name: "Harris", title: "Vice Mayor", heal_city: "Nevada City, CA", organization: "Nevada City", email: "sally.harris@co.nevada.ca.us" }
    contacts << { first_name: "Mike", last_name: "Harris", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "citycouncil@ci.petaluma.ca.us" }
    contacts << { first_name: "Dilenna", last_name: "Harris", title: "Vice Mayor", heal_city: "Vacaville, CA", organization: "Vacaville", email: "dharris@cityofvacaville.com" }
    contacts << { first_name: "Jon", last_name: "Harrison", title: "Council Member", heal_city: "Redlands, CA", organization: "Redlands", email: "citycouncil@cityofredlands.org; jonharrisoncc@hotmail.com" }
    contacts << { first_name: "D. James", last_name: "Hart", title: "City Manager", heal_city: "Adelanto, CA", organization: "Adelanto", email: "jhart@ci.adelanto.ca.us" }
    contacts << { first_name: "Nancy", last_name: "Hart", title: "Council Member", heal_city: "Riverside, CA", organization: "Riverside", email: "nhart@riversideca.gov" }
    contacts << { first_name: "Pam", last_name: "Hartwell-Herrero", title: "Council Member", heal_city: "Fairfax, CA", organization: "Fairfax", email: "phartwell-herrero@townoffairfax.org" }
    contacts << { first_name: "Kevin", last_name: "Hawkins", title: "Park, Rec & Community Svcs Director", heal_city: "San Bernardino, CA", organization: "San Bernardino", email: "hawkins_ke@sbcity.org" }
    contacts << { first_name: "Matt", last_name: "Hawkins", title: "Mayor Pro Tem", heal_city: "Sonora, CA", organization: "Sonora", email: "matthawkinsforcouncil@yahoo.com" }
    contacts << { first_name: "Lee", last_name: "Haydu", title: "Council Member", heal_city: "Del Mar, CA", organization: "Del Mar", email: "lhaydu@delmar.ca.us" }
    contacts << { first_name: "Andy", last_name: "Heath", title: "Finance Director", heal_city: "Auburn, CA", organization: "Auburn", email: "aheath@auburn.ca.gov" }
    contacts << { first_name: "Janan", last_name: "Hebert", title: "Council Member", heal_city: "Chowchilla, CA", organization: "Chowchilla", email: "jhebert@ci.chowchilla.ca.us" }
    contacts << { first_name: "Thomas", last_name: "Heinsheimer", title: "Council Member", heal_city: "Rolling Hills, CA", organization: "Rolling Hills", email: "mayor_citycouncil@cityofrh.net" }
    contacts << { first_name: "Barbara", last_name: "Heller", title: "Council Member", heal_city: "San Rafael, CA", organization: "San Rafael", email: "barbaraheller2000@yahoo.com" }
    contacts << { first_name: "Terry", last_name: "Henderson", title: "Council Member", heal_city: "La Quinta, CA", organization: "La Quinta", email: "Terry1henderson@aol.com" }
    contacts << { first_name: "Mike", last_name: "Henn", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "mhenn527@hotmail.com" }
    contacts << { first_name: "Steve", last_name: "Herfert", title: "Council Member", heal_city: "West Covina, CA", organization: "West Covina", email: "steve.herfert@westcovina.org" }
    contacts << { first_name: "Ofelia", last_name: "Hernandez", title: "Council Member", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "ohernandez@huntingtonpark.org" }
    contacts << { first_name: "Rick", last_name: "Herrick", title: "Council Member", heal_city: "Big Bear Lake, CA", organization: "Big Bear Lake", email: "rherrick@citybigbearlake.com" }
    contacts << { first_name: "Peter", last_name: "Herzog", title: "Council Member", heal_city: "Lake Forest, CA", organization: "Lake Forest", email: "pherzog@lakeforestca.gov" }
    contacts << { first_name: "D-B", last_name: "Heusser", title: "City Manager", heal_city: "Selma, CA", organization: "Selma", email: "dbh@cityofselma.com" }
    contacts << { first_name: "Rob", last_name: "Hickey", title: "City Manager", heal_city: "Gridley, CA", organization: "Gridley", email: "rhickey@gridley.ca.us" }
    contacts << { first_name: "Don", last_name: "Higginson", title: "Mayor", heal_city: "Poway, CA", organization: "Poway", email: "dhigginson@poway.org" }
    contacts << { first_name: "Patrice", last_name: "Hildreth", title: "Administrative Services Manager", heal_city: "Porterville, CA", organization: "Porterville", email: "phildreth@ci.porterville.ca.us" }
    contacts << { first_name: "Frank", last_name: "Hill", title: "Mayor Pro Tem", heal_city: "Rolling Hills, CA", organization: "Rolling Hills", email: "mayor_citycouncil@cityofrh.net" }
    contacts << { first_name: "Scott", last_name: "Hines", title: "Mayor", heal_city: "Rancho Mirage, CA", organization: "Rancho Mirage", email: "alans@ranchomirageca.gov" }
    contacts << { first_name: "Diane", last_name: "Hodges", title: "Council Member", heal_city: "Live Oak, CA", organization: "Live Oak", email: "dhodges@liveoakcity.org" }
    contacts << { first_name: "Brenda", last_name: "Hodges", title: "Community Services Director", heal_city: "National City, CA", organization: "National City", email: "bhodges@nationalcityca.gov" }
    contacts << { first_name: "David", last_name: "Hodgkins", title: "Director of Human Resources", heal_city: "Berkeley, CA", organization: "Berkeley", email: "dhodgkins@ci.berkeley.ca.us" }
    contacts << { first_name: "Joe", last_name: "Hoefgen", title: "Acting Recreation & Community Services Dir.", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "joe.hoefgen@redondo.org" }
    contacts << { first_name: "Steve", last_name: "Hoefs", title: "City Manager", heal_city: "Avalon, CA", organization: "Avalon", email: "fire@cityofavalon.com" }
    contacts << { first_name: "Steven", last_name: "Hofbauer", title: "Mayor Pro Tem", heal_city: "Palmdale, CA", organization: "Palmdale", email: "shofbauer@cityofpalmdale.org;steve.hofbauer@yahoo.com" }
    contacts << { first_name: "Harold", last_name: "Hofmann", title: "Mayor", heal_city: "Lawndale, CA", organization: "Lawndale", email: "hhlawndale@aol.com" }
    contacts << { first_name: "Daryl", last_name: "Hofmeyer", title: "Council Member", heal_city: "Paramount, CA", organization: "Paramount", email: "lhodnett@paramountcity.com" }
    contacts << { first_name: "Robert", last_name: "Holbrook", title: "Council Member", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "robert.holbrook@smgov.net" }
    contacts << { first_name: "Chris", last_name: "Holden", title: "Council Member - District 3", heal_city: "Pasadena, CA", organization: "Pasadena", email: "cholden@cityofpasadena.net" }
    contacts << { first_name: 'Marshall "Chip"', last_name: "Holloway", title: "Vice Mayor", heal_city: "Ridgecrest, CA", organization: "Ridgecrest", email: "mhollo5177@aol.com" }
    contacts << { first_name: "Karen", last_name: "Holman", title: "Council Member", heal_city: "Palo Alto, CA", organization: "Palo Alto", email: "kcholman@sbcglobal.net" }
    contacts << { first_name: "Mike", last_name: "Holmes", title: "Council Member", heal_city: "Auburn, CA", organization: "Auburn", email: "njrhs@inreach.com" }
    contacts << { first_name: "Nadia", last_name: "Holober", title: "Vice Mayor", heal_city: "Millbrae, CA", organization: "Millbrae", email: "nholober@yahoo.com" }
    contacts << { first_name: "Stephanie", last_name: "Hom", title: "Administrative Services Director", heal_city: "Moraga, CA", organization: "Moraga", email: "shom@moraga.ca.us" }
    contacts << { first_name: "Debe", last_name: "Hopkins", title: "Vice Mayor", heal_city: "Anderson, CA", organization: "Anderson", email: "debehopkins@yahoo.com" }
    contacts << { first_name: "Doug", last_name: "Horner", title: "Council Member", heal_city: "Livermore, CA", organization: "Livermore", email: "jdhorner@cityoflivermore.net" }
    contacts << { first_name: "Nancy", last_name: "Horton", title: "Council Member", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "nhorton@cityofcanyonlake.com" }
    contacts << { first_name: "Grant", last_name: "House", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "ghouse@santabarbaraca.gov" }
    contacts << { first_name: "Kelly", last_name: "Howell", title: "Mayor Pro Tem", heal_city: "Eastvale, CA", organization: "Eastvale", email: "khowell@eastvaleca.gov" }
    contacts << { first_name: "Craig", last_name: "Hubler", title: "Council Member", heal_city: "Sand City, CA", organization: "Sand City", email: "craig@sandcity.org" }
    contacts << { first_name: "Mike", last_name: "Hudson", title: "Mayor Pro Tem", heal_city: "Suisun City, CA", organization: "Suisun City", email: "mhudson@suisun.com" }
    contacts << { first_name: "Terry", last_name: "Hughes", title: "Council Member", heal_city: "King City, CA", organization: "King City", email: "deputyclerk@kingcity.com" }
    contacts << { first_name: "Chris", last_name: "Hughes", title: "City Manager", heal_city: "Ontario, CA", organization: "Ontario", email: "chughes@ci.ontario.ca.us" }
    contacts << { first_name: "JosÈ", last_name: "Huizar", title: "Council Member - District 14", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.huizar@lacity.org" }
    contacts << { first_name: "Rosemary", last_name: "Humphrey", title: "Council Member", heal_city: "Palos Verdes Estates, CA", organization: "Palos Verdes Estates", email: "citycouncil@pvestates.org" }
    contacts << { first_name: "Steven", last_name: "Hunt", title: "Director of Rec/Parks/Comm Svcs", heal_city: "Buena Park, CA", organization: "Buena Park", email: "shunt@buenapark.com" }
    contacts << { first_name: "Ken", last_name: "Hunt", title: "City Manager", heal_city: "Fontana, CA", organization: "Fontana", email: "khunt@fontana.org" }
    contacts << { first_name: "Jill", last_name: "Hunter", title: "Mayor", heal_city: "Saratoga, CA", organization: "Saratoga", email: "jhunter@saratoga.ca.us" }
    contacts << { first_name: "Randy", last_name: "Hurley", title: "Council Member", heal_city: "Greenfield, CA", organization: "Greenfield", email: "rhurley@ci.greenfield.ca.us" }
    contacts << { first_name: "Gene", last_name: "Hurst", title: "Mayor Pro Tem", heal_city: "Dorris, CA", organization: "Dorris", email: "cityadmin@cot.net" }
    contacts << { first_name: "Gil", last_name: "Hurtado", title: "Vice Mayor", heal_city: "South Gate, CA", organization: "South Gate", email: "vgalvez@sogate.org" }
    contacts << { first_name: "Donald", last_name: "Hutchins", title: "Council Member", heal_city: "Newman, CA", organization: "Newman", email: "donald-hutchins@sbcglobal.net" }
    contacts << { first_name: "Edie", last_name: "Hylton", title: "Director of Community Services", heal_city: "La Quinta, CA", organization: "La Quinta", email: "ehylton@la-quinta.org" }
    contacts << { first_name: "Ronald", last_name: "Ikejiri", title: "Mayor Pro Tem", heal_city: "Gardena, CA", organization: "Gardena", email: "rikejiri@ci.gardena.ca.us" }
    contacts << { first_name: "Sergio", last_name: "Infanzon", title: "Mayor Pro Tem", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "jvicuna@bellgardens.rog" }
    contacts << { first_name: "Mitchell", last_name: "Ing", title: "Mayor", heal_city: "Monterey Park, CA", organization: "Monterey Park", email: "ming@montereypark.ca.gov" }
    contacts << { first_name: "Eric", last_name: "Ingwerson", title: "Council Member", heal_city: "Ceres, CA", organization: "Ceres", email: "eric.ingwerson@ci.ceres.ca.us; eingwerson@pmz.com" }
    contacts << { first_name: "John", last_name: "Inks", title: "Mayor", heal_city: "Mountain View, CA", organization: "Mountain View", email: "johninks@sbcgloba.net" }
    contacts << { first_name: "Juliana", last_name: "Inman", title: "Council Member", heal_city: "Napa, CA", organization: "Napa", email: "jinman@cityofnapa.org" }
    contacts << { first_name: "Jeffrey", last_name: "Ira", title: "Council Member", heal_city: "Redwood City, CA", organization: "Redwood City", email: "jira@redwoodcity.org" }
    contacts << { first_name: "Laura", last_name: "Ireland", title: "Human Resources Manager", heal_city: "Hemet, CA", organization: "Hemet", email: "lireland@cityofhemet.org" }
    contacts << { first_name: "Jim", last_name: "Irwin", title: "Council Member", heal_city: "Hanford, CA", organization: "Hanford", email: "kmadruga@ci.hanford.ca.us" }
    contacts << { first_name: "Jacqui", last_name: "Irwin", title: "Council Member", heal_city: "Thousand Oaks, CA", organization: "Thousand Oaks", email: "jacqui@earthlink.net" }
    contacts << { first_name: "Kathleen ", last_name: "Ito", title: "Director of Human Resources", heal_city: "Concord, CA", organization: "Concord", email: "kathy.ito@ci.concord.ca.us" }
    contacts << { first_name: "Brent", last_name: "Ives", title: "Mayor", heal_city: "Tracy, CA", organization: "Tracy", email: "council@ci.tracy.ca.us" }
    contacts << { first_name: "Dennis", last_name: "Ivey", title: "Assistant Town Manager", heal_city: "Paradise, CA", organization: "Paradise", email: "divey@townofparadise.com" }
    contacts << { first_name: "Isaac", last_name: "Jackson", title: "Mayor Pro Tem", heal_city: "Chowchilla, CA", organization: "Chowchilla", email: "ijackson@ci.chowchilla.ca.us" }
    contacts << { first_name: "Farrell", last_name: "Jackson", title: "Council Member", heal_city: "Oakdale, CA", organization: "Oakdale", email: "fjackson@ci.oakdale.ca.us" }
    contacts << { first_name: "Constance", last_name: "Jackson", title: "City Manager", heal_city: "San Bruno, CA", organization: "San Bruno", email: "cjackson@sanbruno.ca.gov" }
    contacts << { first_name: "Leroy", last_name: "Jackson", title: "City Manager", heal_city: "Torrance, CA", organization: "Torrance", email: "ljackson@TorranceCA.gov" }
    contacts << { first_name: "Carol", last_name: "Jacobs", title: "City Manager", heal_city: "Eastvale, CA", organization: "Eastvale", email: "cjacobs@eastvaleca.gov" }
    contacts << { first_name: "Keith", last_name: "Jacques", title: "Council Member", heal_city: "Alturas, CA", organization: "Alturas", email: "cary@cityofalturas.org" }
    contacts << { first_name: "Frank", last_name: "Jager", title: "Mayor", heal_city: "Eureka, CA", organization: "Eureka", email: "fjager@ci.eureka.ca.gov" }
    contacts << { first_name: "Bill", last_name: "Jahn", title: "Council Member", heal_city: "Big Bear Lake, CA", organization: "Big Bear Lake", email: "thejahns@charter.net" }
    contacts << { first_name: "Jim", last_name: "Jakel", title: "City Manager", heal_city: "Antioch, CA", organization: "Antioch", email: "jjakel@ci.antioch.ca.us" }
    contacts << { first_name: "Joleen", last_name: "Jameson", title: "Council Member", heal_city: "Hanford, CA", organization: "Hanford", email: "kmadruga@ci.hanford.ca.us" }
    contacts << { first_name: "Jim", last_name: "Janney", title: "Mayor", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "jimjanney@oappkg.com" }
    contacts << { first_name: "Cynthia", last_name: "Jarvis", title: "Community Services Director", heal_city: "Alhambra, CA", organization: "Alhambra", email: "cjarvis@cityofalhambra.org" }
    contacts << { first_name: "Robert", last_name: "Jenkins", title: "Council Member", heal_city: "San Bernardino, CA", organization: "San Bernardino", email: "desjardins_ja@sbcity.org" }
    contacts << { first_name: "Linda", last_name: "Jensen", title: "City Clerk/HR Manager", heal_city: "Fortuna, CA", organization: "Fortuna", email: "ljensen@ci.fortuna.ca.us" }
    contacts << { first_name: "Steven", last_name: "Jepsen", title: "City Manager", heal_city: "Yuba City, CA", organization: "Yuba City", email: "sjepsen@yubacity.net" }
    contacts << { first_name: "Gabriel", last_name: "Jimenez", title: "Mayor", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "gabriel@cityoforangecove.com" }
    contacts << { first_name: "Russell", last_name: "Johnson", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "city_council@bakersfieldcity.us" }
    contacts << { first_name: "Steve", last_name: "Johnson", title: "HR Director/Acting City Clerk", heal_city: "Dixon, CA", organization: "Dixon", email: "sjohnson@ci.dixon.ca.us" }
    contacts << { first_name: "Rachel", last_name: "Johnson", title: "Council Member", heal_city: "Gardena, CA", organization: "Gardena", email: "rjohnson@ci.gardena.ca.us" }
    contacts << { first_name: "James", last_name: "Johnson", title: "Council Member - District 7", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district7@longbeach.gov" }
    contacts << { first_name: "Nancy", last_name: "Johnson", title: "Council Member", heal_city: "Morro Bay, CA", organization: "Morro Bay", email: "nanj93442@yahoo.com" }
    contacts << { first_name: "Ben", last_name: "Johnson", title: "Council Member", heal_city: "Pittsburg, CA", organization: "Pittsburg", email: "johnben31@comcast.net" }
    contacts << { first_name: "Rikke", last_name: "Johnson", title: "Council Member", heal_city: "San Bernardino, CA", organization: "San Bernardino", email: "johnson_ri@sbcity.org" }
    contacts << { first_name: "Greg", last_name: "Johnson", title: "Director of Community Services", heal_city: "Westminster, CA", organization: "Westminster", email: "gjohnson@ci.westminster.ca.us" }
    contacts << { first_name: "Jon", last_name: "Johnston", title: "Mayor", heal_city: "Shafter, CA", organization: "Shafter", email: "jjohnston@bak.rr.com" }
    contacts << { first_name: "Susan", last_name: "Jones", title: "Mayor", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "sjones@ci.healdsburg.ca.us" }
    contacts << { first_name: "Charles", last_name: "Jones", title: "Council Member", heal_city: "Kerman, CA", organization: "Kerman", email: "rholdcroft@cityofkerman.org" }
    contacts << { first_name: "Steve", last_name: "Jones", title: "Council Member", heal_city: "La Mirada, CA", organization: "La Mirada", email: "citycouncil@cityoflamirada.org" }
    contacts << { first_name: "Patrick", last_name: "Jones", title: "Vice Mayor", heal_city: "Redding, CA", organization: "Redding", email: "pjones@ci.redding.ca.us" }
    contacts << { first_name: "John", last_name: "Jones", title: "Community Services Director", heal_city: "Torrance, CA", organization: "Torrance", email: "Jjones@torranceca.gov" }
    contacts << { first_name: "Sean", last_name: "Joyce", title: "City Manager", heal_city: "Irvine, CA", organization: "Irvine", email: "sjoyce@cityofirvine.org" }
    contacts << { first_name: "Daniel", last_name: "Juarez", title: "Mayor", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "djuarez@cityofhawthorne.org" }
    contacts << { first_name: "Phil", last_name: "Kamlarz", title: "City Manager", heal_city: "Berkeley, CA", organization: "Berkeley", email: "manager@cityofberkeley.info" }
    contacts << { first_name: "Alan", last_name: "Kapanicas", title: "City Manager", heal_city: "Beaumont, CA", organization: "Beaumont", email: "akapanicas@ci.beaumont.ca.us" }
    contacts << { first_name: "David", last_name: "Karstetter", title: "Mayor Pro Tem", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "dckingsburg@yahoo.com" }
    contacts << { first_name: "Michael", last_name: "Kasperzak", title: "Council Member", heal_city: "Mountain View, CA", organization: "Mountain View", email: "michael.kasperzak@mountainview.gov" }
    contacts << { first_name: "Cynthia", last_name: "Kasten", title: "Personnel Director", heal_city: "Napa, CA", organization: "Napa", email: "ckasten@cityofnapa.org" }
    contacts << { first_name: "Ed", last_name: "Katen", title: "Mayor", heal_city: "Newman, CA", organization: "Newman", email: "edk10@sbcglobal.net" }
    contacts << { first_name: "Michelle", last_name: "Katusyoshi", title: "Human Resources Manager", heal_city: "Morgan Hill, CA", organization: "Morgan Hill", email: "michelle.katusyoshi@morganhill.ca.gov" }
    contacts << { first_name: "Phil", last_name: "Katzakian", title: "Mayor Pro Tem", heal_city: "Lodi, CA", organization: "Lodi", email: "pkatzakian@lodi.gov" }
    contacts << { first_name: "Leslie", last_name: "Keane", title: "City Manager", heal_city: "Laguna Woods, CA", organization: "Laguna Woods", email: "lkeane@lagunawoodscity.org" }
    contacts << { first_name: "Garrett", last_name: "Keating", title: "Council Member", heal_city: "Piedmont, CA", organization: "Piedmont", email: "gkeating@ci.piedmont.ca.us" }
    contacts << { first_name: "Daniel", last_name: "Keen", title: "City Manager", heal_city: "Vallejo, CA", organization: "Vallejo", email: "dkeen@ci.vallejo.ca.us" }
    contacts << { first_name: "Bob", last_name: "Kellar", title: "Mayor", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "BKellar@santa-clarita.com" }
    contacts << { first_name: "Trish", last_name: "Kelley", title: "Council Member", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "tkelley@cityofmissionviejo.org" }
    contacts << { first_name: "Chas", last_name: "Kelley", title: "Council Member", heal_city: "San Bernardino, CA", organization: "San Bernardino", email: "kelley_ch@sbcity.org" }
    contacts << { first_name: "Bob", last_name: "Kennedy", title: "Mayor", heal_city: "Avalon, CA", organization: "Avalon", email: "scubaluvcatalina@att.net" }
    contacts << { first_name: "Patricia", last_name: "Kerningham", title: "Council Member", heal_city: "Oakland, CA", organization: "Oakland", email: "pkerningham@oaklandnet.com" }
    contacts << { first_name: "Ray", last_name: "Kerridge", title: "City Manager", heal_city: "Roseville, CA", organization: "Roseville", email: "rkerridge@roseville.ca.us" }
    contacts << { first_name: "Jere", last_name: "Kersnar", title: "Community Services Director", heal_city: "Ojai, CA", organization: "Ojai", email: "kersnar@ci.ojai.ca.us" }
    contacts << { first_name: "Linda", last_name: "Kidd", title: "Council Member", heal_city: "Needles, CA", organization: "Needles", email: "councilmemberkidd@yahoo.com" }
    contacts << { first_name: "Arthur", last_name: "Kiesel", title: "Council Member", heal_city: "Foster City, CA", organization: "Foster City", email: "akiesel@fostercity.org" }
    contacts << { first_name: "David", last_name: "Kiff", title: "City Manager", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "dkiff@newportbeachca.gov" }
    contacts << { first_name: "Travis", last_name: "Kiger", title: "Council Member", heal_city: "Fullerton, CA", organization: "Fullerton", email: "council@ci.fullerton.ca.us" }
    contacts << { first_name: "Brad", last_name: "Kilger", title: "City Manager", heal_city: "Benicia, CA", organization: "Benicia", email: "bkilger@ci.benicia.ca.us" }
    contacts << { first_name: "Matthew", last_name: "Kilroy", title: "Council Member - District 5", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "mattkilroy2000@aol.com" }
    contacts << { first_name: "Dave", last_name: "King", title: "Mayor Pro Tem", heal_city: "Buellton, CA", organization: "Buellton", email: "davek@cityofbuellton.com" }
    contacts << { first_name: "Jerry", last_name: "King", title: "Council Member", heal_city: "Tulelake, CA", organization: "Tulelake", email: "cityoftulelake@cot.net" }
    contacts << { first_name: "Tom", last_name: "King", title: "Mayor Pro Tem", heal_city: "Walnut, CA", organization: "Walnut", email: "tking@ci.walnut.ca.us;jwright@ci.walnut.ca.us" }
    contacts << { first_name: "Geriann", last_name: "Kingslan", title: "Human Resource Director", heal_city: "Chino, CA", organization: "Chino", email: "gkingslan@cityofchino.org" }
    contacts << { first_name: "Jeff", last_name: "Kiser", title: "City Manager/Public Works Dir.", heal_city: "Anderson, CA", organization: "Anderson", email: "jkiser@ci.anderson.ca.us" }
    contacts << { first_name: "Philippa", last_name: "Klessig", title: "Mayor", heal_city: "Westlake Village, CA", organization: "Westlake Village", email: "beth@wlv.org" }
    contacts << { first_name: "Leslie", last_name: "Knight", title: "Asst. City Manager/HR Director", heal_city: "Richmond, CA", organization: "Richmond", email: "leslie_knight@ci.richmond.ca.us" }
    contacts << { first_name: "Carolyn", last_name: "Knudtson", title: "Recreation & Human Services Dir.", heal_city: "San Leandro, CA", organization: "San Leandro", email: "cknudtson@ci.san-leandro.ca.us" }
    contacts << { first_name: "William", last_name: "Koehler", title: "Mayor Pro Tem", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "wkoehler@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Chris", last_name: "Koerber", title: "Council Member", heal_city: "Sierra Madre, CA", organization: "Sierra Madre", email: "koerber4ca@gmail.com" }
    contacts << { first_name: "Jeff", last_name: "Kolin", title: "City Manager", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "jkolin@beverlyhills.org" }
    contacts << { first_name: "Paul", last_name: "Koretz", title: "Council Member - District 5", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.koretz@lacity.org" }
    contacts << { first_name: "Michael", last_name: "Kotowski", title: "Council Member", heal_city: "Campbell, CA", organization: "Campbell", email: "michaelk@cityofcampbell.com" }
    contacts << { first_name: "Gary", last_name: "Kovacic", title: "Mayor Pro Tem", heal_city: "Arcadia, CA", organization: "Arcadia", email: "gkovacic@swdlaw.net" }
    contacts << { first_name: "Suzzanne", last_name: "Kozma", title: "Human Resource Director", heal_city: "Big Bear Lake, CA", organization: "Big Bear Lake", email: "skozma@citybigbearlake.com" }
    contacts << { first_name: "Larry", last_name: "Kramer", title: "Council Member", heal_city: "San Juan Capistrano, CA", organization: "San Juan Capistrano", email: "lkramer@sanjuancapistrano.org" }
    contacts << { first_name: "Bruce", last_name: "Kranz", title: "City Manager", heal_city: "Colfax, CA", organization: "Colfax", email: "colfaxkranz@foothill.net" }
    contacts << { first_name: "Beth", last_name: "Krom", title: "Council Member", heal_city: "Irvine, CA", organization: "Irvine", email: "bkrom@ci.irvine.ca.us" }
    contacts << { first_name: "Raymond", last_name: "Kromer", title: "City Manager", heal_city: "Fountain Valley, CA", organization: "Fountain Valley", email: "ray.kromer@fountainvalley.org" }
    contacts << { first_name: "Jeff", last_name: "Kroot", title: "Vice Mayor", heal_city: "San Anselmo, CA", organization: "San Anselmo", email: "jkarch2@sbcglobal.net" }
    contacts << { first_name: "Joe", last_name: "Krovoza", title: "Mayor", heal_city: "Davis, CA", organization: "Davis", email: "jkrovoza@cityofdavis.org" }
    contacts << { first_name: "Steven", last_name: "Kueny", title: "City Manager", heal_city: "Moorpark, CA", organization: "Moorpark", email: "skueny@ci.moorpark.ca.us" }
    contacts << { first_name: "John", last_name: "Kunkel", title: "City Manager", heal_city: "Buellton, CA", organization: "Buellton", email: "johnk@cityofbuellton.com" }
    contacts << { first_name: "Debra", last_name: "Kurita", title: "Interim Community Services Dir.", heal_city: "Bell, CA", organization: "Bell", email: "dkurita@cityofbell.org" }
    contacts << { first_name: "Thomas", last_name: "Lackey", title: "Mayor Pro Tem", heal_city: "Palmdale, CA", organization: "Palmdale", email: "tlackey@cityofpalmdale.org" }
    contacts << { first_name: "Alfred", last_name: "Landers", title: "Mayor Pro Tem", heal_city: "Perris, CA", organization: "Perris", email: "alanders@cityofperris.org" }
    contacts << { first_name: "Mary Anne", last_name: "Landis", title: "Council Member", heal_city: "Ukiah, CA", organization: "Ukiah", email: "malandis@pacific.net" }
    contacts << { first_name: "David", last_name: "Lane", title: "City Manager", heal_city: "Blythe, CA", organization: "Blythe", email: "dlane@cityofblythe.ca.gov" }
    contacts << { first_name: "Patricia", last_name: "Lane", title: "Dir-Human Svcs/Rec/Neighborhoods", heal_city: "Pasadena, CA", organization: "Pasadena", email: "plane@cityofpasadena.net" }
    contacts << { first_name: "Mitchell", last_name: "Lansdell", title: "City Manager", heal_city: "Gardena, CA", organization: "Gardena", email: "mlansdell@ci.gardena.ca.us" }
    contacts << { first_name: "Paula", last_name: "Lantz", title: "Council Member - District 4", heal_city: "Pomona, CA", organization: "Pomona", email: "paula_lantz@ci.pomona.ca.us" }
    contacts << { first_name: "Alicia", last_name: "Lara", title: "Human Resources Manager", heal_city: "Santa Maria, CA", organization: "Santa Maria", email: "alara@ci.santa-maria.ca.us" }
    contacts << { first_name: "Greg", last_name: "Larson", title: "City Manager", heal_city: "Los Gatos, CA", organization: "Los Gatos", email: "glarson@losgatosca.gov" }
    contacts << { first_name: "David", last_name: "Lau", title: "Council Member", heal_city: "Monterey Park, CA", organization: "Monterey Park", email: "dlau@montereypark.ca.gov" }
    contacts << { first_name: "Kristina", last_name: "Lawson", title: "Mayor Pro Tem", heal_city: "Walnut Creek, CA", organization: "Walnut Creek", email: "lawson@walnut-creek.org; kristina.d.lawson@gmail.com" }
    contacts << { first_name: "Allen", last_name: "Lay", title: "Council Member", heal_city: "Rolling Hills, CA", organization: "Rolling Hills", email: "mayor_citycouncil@cityofrh.net" }
    contacts << { first_name: "John", last_name: "Lazar", title: "Mayor", heal_city: "Turlock, CA", organization: "Turlock", email: "jlazar@turlock.ca.us" }
    contacts << { first_name: "George", last_name: "Leage", title: "Council Member", heal_city: "Morro Bay, CA", organization: "Morro Bay", email: "gwleage@aol.com" }
    contacts << { first_name: "Dave", last_name: "Leckness", title: "Council Member", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "dleckness@cityofmissionviejo.org" }
    contacts << { first_name: "Clayton", last_name: "Lee", title: "Community Services Director", heal_city: "Hollister, CA", organization: "Hollister", email: "clay.lee@hollister.ca.gov" }
    contacts << { first_name: "Donna", last_name: "Legge", title: "Parks and Recreation Director", heal_city: "Windsor, CA", organization: "Windsor", email: "dlegge@townofwindsor.com" }
    contacts << { first_name: "Matthew", last_name: "Lehman", title: "Mayor", heal_city: "Mammoth Lakes, CA", organization: "Mammoth Lakes", email: "jgray@ci.mammoth-lakes.ca.us" }
    contacts << { first_name: "Carolyn", last_name: "Lehr", title: "City Manager", heal_city: "Rancho Palos Verdes, CA", organization: "Rancho Palos Verdes", email: "clehr@rpv.com" }
    contacts << { first_name: "Linda", last_name: "Leichtle", title: "Human Resources Manager", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "lleichtle@cityofib.org" }
    contacts << { first_name: "Peggy", last_name: "Lemons", title: "Mayor", heal_city: "Paramount, CA", organization: "Paramount", email: "lhodnett@paramountcity.com" }
    contacts << { first_name: "Cliff", last_name: "Lentz", title: "Council Member", heal_city: "Brisbane, CA", organization: "Brisbane", email: "clentz@ci.brisbane.ca.us" }
    contacts << { first_name: "Ron", last_name: "Leone", title: "Council Member", heal_city: "Concord, CA", organization: "Concord", email: "ronleonecitycouncil@gmail.com" }
    contacts << { first_name: "Jonathan", last_name: "Leone", title: "Vice Mayor", heal_city: "Sausalito, CA", organization: "Sausalito", email: "jonathan@jonathanleone.com" }
    contacts << { first_name: "Michael", last_name: "Levitt", title: "Mayor", heal_city: "Seal Beach, CA", organization: "Seal Beach", email: "mglevitt@roadrunner.com" }
    contacts << { first_name: "Mark", last_name: "Lewis", title: "City Administrator", heal_city: "Chowchilla, CA", organization: "Chowchilla", email: "mlewis@ci.chowchilla.ca.us" }
    contacts << { first_name: "Michael", last_name: "Lewis", title: "Human Relations Manager", heal_city: "Grass Valley, CA", organization: "Grass Valley", email: "michaell@cityofgrassvalley.com" }
    contacts << { first_name: "Sam", last_name: "Liccardo", title: "Council Member", heal_city: "San Jose, CA", organization: "San Jose", email: "sam.liccardo@sanjoseca.gov" }
    contacts << { first_name: "Katie", last_name: "Lichtig", title: "City Manager", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "klichtig@slocity.org" }
    contacts << { first_name: "Laurie", last_name: "Lile", title: "City Manager", heal_city: "Monrovia, CA", organization: "Monrovia", email: "llile@ci.monrovia.ca.us" }
    contacts << { first_name: "Antonio", last_name: "Lima", title: "Council Member", heal_city: "Artesia, CA", organization: "Artesia", email: "tlima@cityofartesia.us" }
    contacts << { first_name: "Paul", last_name: "Linder", title: "Mayor Pro Tem", heal_city: "Taft, CA", organization: "Taft", email: "plinder@cityoftaft.org" }
    contacts << { first_name: "Linda", last_name: "Lindholm", title: "Mayor Pro Tem", heal_city: "Laguna Niguel, CA", organization: "Laguna Niguel", email: "council@cityoflagunaniguel.org" }
    contacts << { first_name: "Mary", last_name: "Lindsay", title: "Deputy City Manager", heal_city: "Hanford, CA", organization: "Hanford", email: "mlindsay@ci.hanford.ca.us" }
    contacts << { first_name: "John", last_name: "Linn", title: "Mayor", heal_city: "Lompoc, CA", organization: "Lompoc", email: "j_linn@ci.lompoc.ca.us" }
    contacts << { first_name: "Jim", last_name: "Livingstone", title: "Council Member", heal_city: "San Ramon, CA", organization: "San Ramon", email: "jlivingstone@sanramon.ca.gov" }
    contacts << { first_name: "John", last_name: "Livingstone", title: "Community Development Director", heal_city: "Saratoga, CA", organization: "Saratoga", email: "johnl@saratoga.ca.us" }
    contacts << { first_name: "Paul", last_name: "Loehr", title: "Human Resources Director", heal_city: "Montebello, CA", organization: "Montebello", email: "ploehr@cityofmontebello.com" }
    contacts << { first_name: "Susan", last_name: "Loftus", title: "City Manager", heal_city: "San Mateo, CA", organization: "San Mateo", email: "sloftus@cityofsanmateo.org" }
    contacts << { first_name: "J.", last_name: "Logan", title: "Asst. City Manager/Personnel Dir.", heal_city: "Los Altos, CA", organization: "Los Altos", email: "jlogan@losaltosca.gov" }
    contacts << { first_name: "Alfredo", last_name: "Lopez", title: "Director of Human Resources", heal_city: "Lynwood, CA", organization: "Lynwood", email: "alopez@lynwood.ca.us" }
    contacts << { first_name: "Dave", last_name: "Lopez", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "dlopez@modestogov.com" }
    contacts << { first_name: "Joe", last_name: "Lopez", title: "Human Resources Director", heal_city: "Modesto, CA", organization: "Modesto", email: "jlopez@modestogov.com" }
    contacts << { first_name: "Jim", last_name: "Lopez", title: "Council Member", heal_city: "Needles, CA", organization: "Needles", email: "councilmemberlopez@yahoo.com" }
    contacts << { first_name: "Lori", last_name: "Lopin", title: "Council Member", heal_city: "San Anselmo, CA", organization: "San Anselmo", email: "ljl@aol.com" }
    contacts << { first_name: "Mike", last_name: "Losey", title: "Mayor Pro Tem", heal_city: "Fortuna, CA", organization: "Fortuna", email: "mlosey@suddenlink.net" }
    contacts << { first_name: "Scott", last_name: "Lotter", title: "Vice Mayor", heal_city: "Paradise, CA", organization: "Paradise", email: "slotter@townofparadise.com" }
    contacts << { first_name: "Vivian", last_name: "Love", title: "Director of Human Resources", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "vlove@weho.org" }
    contacts << { first_name: "Evan", last_name: "Low", title: "Mayor", heal_city: "Campbell, CA", organization: "Campbell", email: "low.evan@gmail.com" }
    contacts << { first_name: "Robert", last_name: "Low", title: "Council Member", heal_city: "Covina, CA", organization: "Covina", email: "mlwascza@covinaca.gov" }
    contacts << { first_name: "Polly", last_name: "Low", title: "Mayor Pro Tem", heal_city: "Rosemead, CA", organization: "Rosemead", email: "plow@cityofrosemead.org" }
    contacts << { first_name: "Diane", last_name: "Lowart", title: "Parks & Community Services Director", heal_city: "Dublin, CA", organization: "Dublin", email: "diane.lowart@ci.dublin.ca.us" }
    contacts << { first_name: "Diana", last_name: "Lowery", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "diana.lowery@ci.stockton.ca.us" }
    contacts << { first_name: "Linda", last_name: "Lowry", title: "City Manager", heal_city: "Pomona, CA", organization: "Pomona", email: "linda_lowry@ci.pomona.ca.us" }
    contacts << { first_name: "Arlene", last_name: "Lozada", title: "Human Resources Manager", heal_city: "San Pablo, CA", organization: "San Pablo", email: "arlenel@ci.san-pablo.ca.us" }
    contacts << { first_name: "Abel", last_name: "Lua", title: "Council Member", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "abellua@hotmail.com" }
    contacts << { first_name: "Colleen", last_name: "Ludwig", title: "Council Member", heal_city: "Holtville, CA", organization: "Holtville", email: "gsnyder@holtville.ca.gov" }
    contacts << { first_name: "Gary", last_name: "Luebbers", title: "City Manager", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "citymgr@ci.sunnyvale.ca.us" }
    contacts << { first_name: "Andrea", last_name: "Lueker", title: "City Manager", heal_city: "Morro Bay, CA", organization: "Morro Bay", email: "alueker@morro-bay.ca.us" }
    contacts << { first_name: "Sheree", last_name: "Lustgarten", title: "Council Member", heal_city: "Patterson, CA", organization: "Patterson", email: "slustgarten@ci.patterson.ca.us" }
    contacts << { first_name: "Mary Ann", last_name: "Lutz", title: "Mayor", heal_city: "Monrovia, CA", organization: "Monrovia", email: "mlutz@ci.monrovia.ca.us" }
    contacts << { first_name: "Jack", last_name: "Lynch", title: "Vice Mayor", heal_city: "Angels Camp, CA", organization: "Angels Camp", email: "coa@angelscamp.gov" }
    contacts << { first_name: "John", last_name: "Lyon", title: "Mayor", heal_city: "Artesia, CA", organization: "Artesia", email: "jlyon@cityofartesia.us" }
    contacts << { first_name: "Tej", last_name: "Maan", title: "Council Member", heal_city: "Yuba City, CA", organization: "Yuba City", email: "councilfeedback@yubacity.net" }
    contacts << { first_name: "Ted", last_name: "Macaulay", title: "Council Member", heal_city: "Exeter, CA", organization: "Exeter", email: "sguillen@exetercityhall.com" }
    contacts << { first_name: "Uriel", last_name: "Macias", title: "Council Member", heal_city: "Azusa, CA", organization: "Azusa", email: "umacias@ci.azusa.ca.us" }
    contacts << { first_name: "Jake", last_name: "Mackenzie", title: "Council Member", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "jmackenzie@rpcity.org" }
    contacts << { first_name: "Nancy", last_name: "Mackle", title: "City Manager", heal_city: "San Rafael, CA", organization: "San Rafael", email: "nancy.mackle@ci.san-rafael.ca.us" }
    contacts << { first_name: "Jeanne", last_name: "MacLeamy", title: "Council Member", heal_city: "Novato, CA", organization: "Novato", email: "jmacleamy@novato.org" }
    contacts << { first_name: "Steven", last_name: "Madison", title: "Council Member - District 6", heal_city: "Pasadena, CA", organization: "Pasadena", email: "smadison@cityofpasadena.net" }
    contacts << { first_name: "Art", last_name: "Madrid", title: "Mayor", heal_city: "La Mesa, CA", organization: "La Mesa", email: "amadrid@ci.la-mesa.ca.us" }
    contacts << { first_name: "Oscar", last_name: "Magana", title: "Mayor", heal_city: "Maywood, CA", organization: "Maywood", email: "oscar.magana@cityofmaywoodca.org" }
    contacts << { first_name: "Gary", last_name: "Magill", title: "Community Services Director", heal_city: "Lake Forest, CA", organization: "Lake Forest", email: "gmagill@lakeforestca.gov" }
    contacts << { first_name: "Patricia", last_name: "Mahan", title: "Council Member", heal_city: "Santa Clara, CA", organization: "Santa Clara", email: "mayorandcouncil@santaclaraca.gov" }
    contacts << { first_name: "Orrin", last_name: "Mahoney", title: "Mayor", heal_city: "Cupertino, CA", organization: "Cupertino", email: "omahoney@cupertino.org; orrinmahoney@comcast.net" }
    contacts << { first_name: "Richard", last_name: "Maisano", title: "Council Member", heal_city: "Vernon, CA", organization: "Vernon", email: "kenomoto@ci.vernon.ca.us" }
    contacts << { first_name: "Victor", last_name: "Manalo, Ph.D.", title: "Council Member", heal_city: "Artesia, CA", organization: "Artesia", email: "vmanalo@cityofartesia.us" }
    contacts << { first_name: "Stephen", last_name: "Mandoki", title: "City Manager", heal_city: "Lawndale, CA", organization: "Lawndale", email: "smandoki@lawndalecity.org" }
    contacts << { first_name: "Lana", last_name: "Manzanita", title: "Mayor Pro Tem", heal_city: "Blue Lake, CA", organization: "Blue Lake", email: "bluelakecm@aol.com" }
    contacts << { first_name: "Bill", last_name: "Marble", title: "Council Member", heal_city: "Woodland, CA", organization: "Woodland", email: "bill.marble@cityofwoodland.org" }
    contacts << { first_name: "Pat", last_name: "Marcellin", title: "Council Member", heal_city: "Industry, CA", organization: "Industry", email: "cityclerk@cityofindustry.org" }
    contacts << { first_name: "Theodore", last_name: "Marconi", title: "City Manager", heal_city: "Mt. Shasta, CA", organization: "Mt. Shasta", email: "tmarconi@ci.mt-shasta.ca.us" }
    contacts << { first_name: "Juliana", last_name: "Mark", title: "Council Member", heal_city: "Portola, CA", organization: "Portola", email: "jfrr@att.net" }
    contacts << { first_name: "Luis", last_name: "Marquez", title: "Council Member", heal_city: "Downey, CA", organization: "Downey", email: "lmarquez@downeyca.org" }
    contacts << { first_name: "Javier", last_name: "Marquez", title: "Council Member", heal_city: "Firebaugh, CA", organization: "Firebaugh", email: "deputyclerk@ci.firebaugh.ca.us" }
    contacts << { first_name: "Brad", last_name: "Marsh", title: "Council Member", heal_city: "Larkspur, CA", organization: "Larkspur", email: "bmarch@cityoflarkspur.org" }
    contacts << { first_name: "Shawn", last_name: "Marshall", title: "Vice Mayor", heal_city: "Mill Valley, CA", organization: "Mill Valley", email: "citycouncil@cityofmillvalley.org" }
    contacts << { first_name: "Robert", last_name: "Marshall", title: "Council Member", heal_city: "Newark, CA", organization: "Newark", email: "robert.marshall@newark.org" }
    contacts << { first_name: "Jay", last_name: "Martin", title: "Council Member", heal_city: "Etna, CA", organization: "Etna", email: "etnacity@sisqtel.net" }
    contacts << { first_name: "Thomas", last_name: "Martin", title: "Council Member", heal_city: "Maywood, CA", organization: "Maywood", email: "tmartin@cityofmaywood.com" }
    contacts << { first_name: "Dennis", last_name: "Martin", title: "Mayor Pro Tem", heal_city: "McFarland, CA", organization: "McFarland", email: "kalalpa@earthlink.net" }
    contacts << { first_name: "Laura", last_name: "Martinez", title: "Council Member", heal_city: "East Palo Alto, CA", organization: "East Palo Alto", email: "mwarren@cityofepa.org" }
    contacts << { first_name: "Victoria", last_name: "Martinez", title: "Council Member", heal_city: "El Monte, CA", organization: "El Monte", email: "vmartinez@elmonteca.gov" }
    contacts << { first_name: "Lou", last_name: "Martinez", title: "Mayor", heal_city: "Hanford, CA", organization: "Hanford", email: "kmadruga@ci.hanford.ca.us" }
    contacts << { first_name: "Lou", last_name: "Martinez", title: "City Manager", heal_city: "Parlier, CA", organization: "Parlier", email: "citymanager@parlier.ca.us" }
    contacts << { first_name: "Michele", last_name: "Martinez", title: "Council Member", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "mimartinez@santa-ana.org" }
    contacts << { first_name: "Tom", last_name: "Masner", title: "Council Member", heal_city: "Yucaipa, CA", organization: "Yucaipa", email: "tommasner@yucaipa.org" }
    contacts << { first_name: "Steve", last_name: "Matarazzo", title: "City Administrator", heal_city: "Sand City, CA", organization: "Sand City", email: "steve@sandcity.org" }
    contacts << { first_name: "Scott", last_name: "Matas", title: "Mayor Pro Tem", heal_city: "Desert Hot Springs, CA", organization: "Desert Hot Springs", email: "swmatas@roadrunner.com" }
    contacts << { first_name: "Michael", last_name: "Matsumoto", title: "Finance Director/Personnel Dir.", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "mmatsumoto@pico-rivera.org" }
    contacts << { first_name: "Wendy", last_name: "Mattson", title: "Mayor", heal_city: "Placerville, CA", organization: "Placerville", email: "szito@cityofplacerville.org" }
    contacts << { first_name: "Johnny", last_name: "Mays", title: "Council Member", heal_city: "Dos Palos, CA", organization: "Dos Palos", email: "city@dospalos.org" }
    contacts << { first_name: "Kevin", last_name: "McArdle", title: "Community Services Director", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "kevinmcardle@cityofrc.us" }
    contacts << { first_name: "Margaret", last_name: "McAustin", title: "Vice Mayor", heal_city: "Pasadena, CA", organization: "Pasadena", email: "mmcaustin@cityofpasadena.net" }
    contacts << { first_name: "Wendy", last_name: "McCammack", title: "Council Member", heal_city: "San Bernardino, CA", organization: "San Bernardino", email: "mccammack_we@sbcity.org" }
    contacts << { first_name: "James", last_name: "McCann", title: "City Manager", heal_city: "Mill Valley, CA", organization: "Mill Valley", email: "jmmcann@cityofmillvalley.org" }
    contacts << { first_name: "Mike", last_name: "McCarty", title: "Parks & Community Resources Director", heal_city: "Moreno Valley, CA", organization: "Moreno Valley", email: "mikem@moval.org" }
    contacts << { first_name: "Kevin", last_name: "McCarty", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "kmccarty@cityofsacramento.org" }
    contacts << { first_name: "Michael", last_name: "McCormick", title: "Mayor Pro Tem", heal_city: "Vernon, CA", organization: "Vernon", email: "kenomoto@ci.vernon.ca.us" }
    contacts << { first_name: "Pete", last_name: "McCracken", title: "Vice Mayor", heal_city: "Porterville, CA", organization: "Porterville", email: "petemccracken@portervilleca.gov" }
    contacts << { first_name: "Kathryn", last_name: "McCullough", title: "Mayor", heal_city: "Lake Forest, CA", organization: "Lake Forest", email: "kmccullough@lakeforestca.gov" }
    contacts << { first_name: "Cheryl", last_name: "McDonald", title: "Council Member", heal_city: "Susanville, CA", organization: "Susanville", email: "gmacdonald@cityofsusanville.org" }
    contacts << { first_name: "Robert", last_name: "McGarvey", title: "Council Member", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "rmcgarvey@cityofranchocordova.org" }
    contacts << { first_name: "Deborah", last_name: "McHenry", title: "Human Resources Director", heal_city: "Antioch, CA", organization: "Antioch", email: "dmchenry@ci.antioch.ca.us" }
    contacts << { first_name: "Alex", last_name: "McIntyre", title: "City Manager", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "admcintyre@menlopark.org" }
    contacts << { first_name: "Diana", last_name: "McKeen", title: "Env. & Reg. Compliance Mgr.", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "dmckeen@applevalley.org" }
    contacts << { first_name: "Kevin", last_name: "McKeown", title: "Council Member", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "kevin@mckeown.net" }
    contacts << { first_name: "Wade", last_name: "McKinney", title: "City Manager", heal_city: "Atascadero, CA", organization: "Atascadero", email: "wmckinney@atascadero.org" }
    contacts << { first_name: "Michelle", last_name: "McKinsey", title: "Senior Human Resources Analyst", heal_city: "Oakdale, CA", organization: "Oakdale", email: "mmckinsey@ci.oakdale.ca.us" }
    contacts << { first_name: "Larry", last_name: "McLaughlin", title: "Interim City Manager/City Attorney", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "lwmclaughlin@juno.com" }
    contacts << { first_name: "Marsha", last_name: "McLean", title: "Council Member", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "mmclean@santa-clarita.com" }
    contacts << { first_name: "Rory", last_name: "McNeil", title: "Council Member", heal_city: "Yreka, CA", organization: "Yreka", email: "rmcneil@ci.yreka.ca.us" }
    contacts << { first_name: "Diane", last_name: "McNutt", title: "Council Member", heal_city: "Los Gatos, CA", organization: "Los Gatos", email: "dmcnutt@losgatosca.gov" }
    contacts << { first_name: "Greg", last_name: "McPherron", title: "Community Services Director", heal_city: "Lomita, CA", organization: "Lomita", email: "g.mcpherron@lomitacity.com" }
    contacts << { first_name: "Dan", last_name: "Medina", title: "Council Member", heal_city: "Gardena, CA", organization: "Gardena", email: "dmedina@ci.gardena.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Medrano", title: "Council Member", heal_city: "Clayton, CA", organization: "Clayton", email: "joe@claytoncouncil.com" }
    contacts << { first_name: "Andy", last_name: "Melendrez", title: "Council Member", heal_city: "Riverside, CA", organization: "Riverside", email: "asmelendrez@riversideca.gov" }
    contacts << { first_name: "Michael", last_name: "Mendez", title: "Council Member", heal_city: "Norwalk, CA", organization: "Norwalk", email: "mmendez@norwalkca.gov" }
    contacts << { first_name: "Randy", last_name: "Mendosa", title: "City Manager", heal_city: "Arcata, CA", organization: "Arcata", email: "rmendosa@cityofarcata.org" }
    contacts << { first_name: "Michael", last_name: "Menesini", title: "Council Member", heal_city: "Martinez, CA", organization: "Martinez", email: "mmenesini@cityofmartinez.org" }
    contacts << { first_name: "Heidi", last_name: "Meraz", title: "Community Services Director", heal_city: "Banning, CA", organization: "Banning", email: "hmeraz@ci.banning.ca.us" }
    contacts << { first_name: "Barbara", last_name: "Messina", title: "Mayor", heal_city: "Alhambra, CA", organization: "Alhambra", email: "luwan@cityofalhambra.org" }
    contacts << { first_name: "Fred", last_name: "Meurer", title: "City Manager", heal_city: "Monterey, CA", organization: "Monterey", email: "meurer@ci.monterey.ca.us" }
    contacts << { first_name: "Alexander", last_name: "Meyerhoff", title: "City Manager", heal_city: "Holtville, CA", organization: "Holtville", email: "ameyerhoff@holtville.ca.gov" }
    contacts << { first_name: "L. Dennis", last_name: "Michael", title: "Mayor", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "ldennismichael@aol.com;dennis.michael@cityofrc.us" }
    contacts << { first_name: "Dan", last_name: "Miller", title: "Mayor", heal_city: "Grass Valley, CA", organization: "Grass Valley", email: "dmiller@cityofgrassvalley.com" }
    contacts << { first_name: "Howard", last_name: "Miller", title: "Council Member", heal_city: "Saratoga, CA", organization: "Saratoga", email: "hmiller@saratoga.ca.us" }
    contacts << { first_name: "Timothy", last_name: "Miller", title: "City Administrator", heal_city: "Sonora, CA", organization: "Sonora", email: "tmiller@sonoraca.com" }
    contacts << { first_name: "Katherine", last_name: "Miller", title: "Vice Mayor", heal_city: "Stockton, CA", organization: "Stockton", email: "kathy.miller@stocktongov.com" }
    contacts << { first_name: "Kathleen", last_name: "Millison", title: "City Manager", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "kmillison@srcity.org" }
    contacts << { first_name: "Leroy", last_name: "Mills", title: "Mayor Pro Tem", heal_city: "Cypress, CA", organization: "Cypress", email: "lmills@ci.cypress.ca.us" }
    contacts << { first_name: "Robert", last_name: "Ming", title: "Mayor", heal_city: "Laguna Niguel, CA", organization: "Laguna Niguel", email: "council@cityoflagunaniguel.org" }
    contacts << { first_name: "Manuel", last_name: "Minjares", title: "Mayor Pro Tem", heal_city: "Fillmore, CA", organization: "Fillmore", email: "mminjares@ci.fillmore.ca.us" }
    contacts << { first_name: "Miguel", last_name: "Miranda", title: "Mayor Pro Tem", heal_city: "Brawley, CA", organization: "Brawley", email: "mmiranda@brawley-ca.gov" }
    contacts << { first_name: "Charles", last_name: "Mitchell", title: "City Manager", heal_city: "Barstow, CA", organization: "Barstow", email: "cmitchell@barstowca.org" }
    contacts << { first_name: "Graham", last_name: "Mitchell", title: "City Manager", heal_city: "Lemon Grove, CA", organization: "Lemon Grove", email: "gmitchell@ci.lemon-grove.ca.us" }
    contacts << { first_name: "Judy", last_name: "Mitchell", title: "Mayor Pro Tem", heal_city: "Rolling Hills Estates, CA", organization: "Rolling Hills Estates", email: "judith.mitchell@cox.net" }
    contacts << { first_name: "Tom", last_name: "Mitze", title: "Community & Cultural Svcs. Director", heal_city: "Thousand Oaks, CA", organization: "Thousand Oaks", email: "tmitze@toaks.org" }
    contacts << { first_name: "Richard", last_name: "Montgomery", title: "Council Member", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "rmontgomery@citymb.info" }
    contacts << { first_name: "Craig", last_name: "Mooneyham", title: "Council Member", heal_city: "Atwater, CA", organization: "Atwater", email: "cmooneyham@atwater.org" }
    contacts << { first_name: "Roy", last_name: "Moore", title: "Council Member", heal_city: "Brea, CA", organization: "Brea", email: "roym@ci.brea.ca.us" }
    contacts << { first_name: "Andy", last_name: "Moore", title: "Vice Mayor", heal_city: "San Juan Bautista, CA", organization: "San Juan Bautista", email: "andymoorerealtor@aol.com" }
    contacts << { first_name: "Adrienne", last_name: "Moore", title: "Interim City Manager/City Clerk", heal_city: "Willits, CA", organization: "Willits", email: "cityclerk@willitscity.com" }
    contacts << { first_name: "Mike", last_name: "Morales", title: "Council Member", heal_city: "Huron, CA", organization: "Huron", email: "admasst@cityofhuron.com" }
    contacts << { first_name: "Eloy", last_name: "Morales", title: "Council Member - District 3", heal_city: "Inglewood, CA", organization: "Inglewood", email: "emorales@cityofinglewood.org" }
    contacts << { first_name: "Josh", last_name: "Moran", title: "Mayor", heal_city: "Sierra Madre, CA", organization: "Sierra Madre", email: "joshuamoran@gmail.com" }
    contacts << { first_name: "Annie", last_name: "Moreno", title: "Council Member", heal_city: "Greenfield, CA", organization: "Greenfield", email: "amoreno@ci.greenfield.ca.us" }
    contacts << { first_name: "Karin", last_name: "Morgan", title: "Director of Parks & Rec", heal_city: "Brawley, CA", organization: "Brawley", email: "kmorgan@brawley-ca.gov" }
    contacts << { first_name: "Rhonda", last_name: "Morillas", title: "Council Member", heal_city: "Loomis, CA", organization: "Loomis", email: "rhonda.morillas@gmail.com" }
    contacts << { first_name: "Dave", last_name: "Morrison", title: "Council Member", heal_city: "Dorris, CA", organization: "Dorris", email: "cityadmin@cot.net" }
    contacts << { first_name: "Ralph", last_name: "Morrow", title: "Council Member", heal_city: "Avalon, CA", organization: "Avalon", email: "ralphmorrow@catalinaisp.com" }
    contacts << { first_name: "Jim", last_name: "Morton", title: "Mayor", heal_city: "Lynwood, CA", organization: "Lynwood", email: "jmorton@lynwood.ca.us" }
    contacts << { first_name: "Pat", last_name: "Morton", title: "Council Member", heal_city: "Portola, CA", organization: "Portola", email: "pat-morton@att.net" }
    contacts << { first_name: "Pedro", last_name: "Mota", title: "Mayor Pro Tem", heal_city: "Gridley, CA", organization: "Gridley", email: "pmota@gridley.ca.us" }
    contacts << { first_name: "Stephanie", last_name: "Moulton-Peters", title: "Council Member", heal_city: "Mill Valley, CA", organization: "Mill Valley", email: "smmoulton@aol.com" }
    contacts << { first_name: "JoAnne", last_name: "Mounce", title: "Council Member", heal_city: "Lodi, CA", organization: "Lodi", email: "mounce@lodi.gov" }
    contacts << { first_name: "Kathy", last_name: "Mount", title: "Director of Human Resources", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "kathy.mount@ssf.net" }
    contacts << { first_name: "Lawrence", last_name: "Mowles", title: "Council Member", heal_city: "La Mirada, CA", organization: "La Mirada", email: "citycouncil@cityoflamirada.org" }
    contacts << { first_name: "Christopher", last_name: "Moylan", title: "Council Member", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "cmoylan@ci.sunnyvale.ca.us" }
    contacts << { first_name: "John", last_name: "Mraz", title: "Council Member", heal_city: "Fairfield, CA", organization: "Fairfield", email: "jmraz@fairfield.ca.gov" }
    contacts << { first_name: "Patrick", last_name: "Mullany", title: "Council Member", heal_city: "Indian Wells, CA", organization: "Indian Wells", email: "pmullany@indianwells.com; pjmsa@msn.com" }
    contacts << { first_name: "Duane", last_name: "Munson", title: "Human Resources Officer", heal_city: "Carson, CA", organization: "Carson", email: "dmunson@carson.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Muratore", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "jmuratore@modestogov.com" }
    contacts << { first_name: "Brett", last_name: "Murdock", title: "Mayor Pro Tem", heal_city: "Brea, CA", organization: "Brea", email: "brettm@cityofbrea.net" }
    contacts << { first_name: "Kathryn", last_name: "Murray", title: "Council Member", heal_city: "Crescent City, CA", organization: "Crescent City", email: "kmurray@cc.crescentcity.org" }
    contacts << { first_name: "Lilian", last_name: "Myers", title: "City Manager", heal_city: "Maywood, CA", organization: "Maywood", email: "lmyers@cityofmaywood.org" }
    contacts << { first_name: "Stan", last_name: "Nader", title: "Mayor", heal_city: "Lincoln, CA", organization: "Lincoln", email: "snader@ci.lincoln.ca.us" }
    contacts << { first_name: "Terry", last_name: "Nagel", title: "Council Member", heal_city: "Burlingame, CA", organization: "Burlingame", email: "tnagel@burlingame.org" }
    contacts << { first_name: "Barry", last_name: "Nagel", title: "City Manager", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "barry.nagel@ssf.net" }
    contacts << { first_name: "Ara", last_name: "Najarian", title: "Council Member", heal_city: "Glendale, CA", organization: "Glendale", email: "anajarian@ci.glendale.ca.us" }
    contacts << { first_name: "Wanda", last_name: "Nalls", title: "Community Service Center Supervisor", heal_city: "Daly City, CA", organization: "Daly City", email: "wnalls@dalycity.org" }
    contacts << { first_name: "Prakash", last_name: "Narain", title: "Mayor", heal_city: "Cypress, CA", organization: "Cypress", email: "pnarain@ci.cypress.ca.us" }
    contacts << { first_name: "Tesla", last_name: "Nason", title: "Human Resources Analyst", heal_city: "Selma, CA", organization: "Selma", email: "teslan@cityofselma.com" }
    contacts << { first_name: "Scott", last_name: "Nassif", title: "Council Member", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "snassif@applevalley.org;JHeim@applevalley.org; napasn@aol.com" }
    contacts << { first_name: "Anu", last_name: "Natarajan", title: "Vice Mayor", heal_city: "Fremont, CA", organization: "Fremont", email: "anatarajan@fremont.gov" }
    contacts << { first_name: "Luie", last_name: "Natividad", title: "Council Member", heal_city: "National City, CA", organization: "National City", email: "lnatividad@nationalcityca.gov" }
    contacts << { first_name: "Raul", last_name: "Navarro", title: "Mayor", heal_city: "Calipatria, CA", organization: "Calipatria", email: "r_navarro@calipatria.com" }
    contacts << { first_name: "Lois", last_name: "Navolt", title: "Deputy City Manager", heal_city: "San Marcos, CA", organization: "San Marcos", email: "lnavolt@ci.san-marcos.ca.us" }
    contacts << { first_name: "Maravic", last_name: "Nazario", title: "Management Analyst", heal_city: "Artesia, CA", organization: "Artesia", email: "mnazario@cityofartesia.us" }
    contacts << { first_name: "Steven", last_name: "Neal", title: "Council Member - District 9", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district9@longbeach.gov" }
    contacts << { first_name: "Mary", last_name: "Neilan", title: "Acting Human Resources Dir.", heal_city: "Vallejo, CA", organization: "Vallejo", email: "mneilan@ci.vallejo.ca.us" }
    contacts << { first_name: "Keith", last_name: "Nesbitt", title: "Council Member", heal_city: "Auburn, CA", organization: "Auburn", email: "mr.auburn@sbcglobal.net" }
    contacts << { first_name: "Patricia", last_name: "Nevarez", title: "Human Resources Manager", heal_city: "Palmdale, CA", organization: "Palmdale", email: "pnevarez@cityofpalmdale.org" }
    contacts << { first_name: "Ann", last_name: "Nevero", title: "Mayor", heal_city: "St. Helena, CA", organization: "St. Helena", email: "cityclerk@ci.st-helena.ca.us" }
    contacts << { first_name: "Madison", last_name: "Nguyen", title: "Vice Mayor", heal_city: "San Jose, CA", organization: "San Jose", email: "madison.nguyen@sanjoseca.gov" }
    contacts << { first_name: "Cecelia", last_name: "Nichols-Fritzler", title: "Employee Relations Officer", heal_city: "Oakley, CA", organization: "Oakley", email: "fritzler@ci.oakley.ca.us" }
    contacts << { first_name: "Bill", last_name: "Nicolls", title: "Mayor Pro Tem", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "gbadmin@grover.org" }
    contacts << { first_name: "Rodney", last_name: "Nielson", title: "Council Member", heal_city: "Sanger, CA", organization: "Sanger", email: "rnielson@ci.sanger.ca.us" }
    contacts << { first_name: "Kimberly", last_name: "Niemer", title: "Community Services Director", heal_city: "Redding, CA", organization: "Redding", email: "kniemer@ci.redding.ca.us" }
    contacts << { first_name: "Michael", last_name: "Noll", title: "Vice Mayor", heal_city: "Signal Hill, CA", organization: "Signal Hill", email: "mnoll@cityofsignalhill.org; signalnoll@aol.com" }
    contacts << { first_name: "Mark", last_name: "Nuaimi", title: "City Manager", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "mnuaimi@yucca-valley.org" }
    contacts << { first_name: "Cliff", last_name: "Numark", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "cnumark@TorranceCA.gov" }
    contacts << { first_name: "Beth", last_name: "Nunes", title: "Admin Director/Community Srvcs Dir.", heal_city: "Dinuba, CA", organization: "Dinuba", email: "bnunes@dinuba.ca.gov" }
    contacts << { first_name: "Elden", last_name: "Nutt", title: "Council Member", heal_city: "Ripon, CA", organization: "Ripon", email: "enutt@cityofripon.org" }
    contacts << { first_name: "Dotty", last_name: "Nygard", title: "Council Member", heal_city: "Riverbank, CA", organization: "Riverbank", email: "dnygard@riverbank.org" }
    contacts << { first_name: "Jay", last_name: "Obernolte", title: "Mayor", heal_city: "Big Bear Lake, CA", organization: "Big Bear Lake", email: "jay@farsightstudios.com" }
    contacts << { first_name: "Robert", last_name: "O'Brien", title: "Human Resources Manager", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "robrien@cityofhawthorne.org" }
    contacts << { first_name: "Pam", last_name: "O'Connor", title: "Mayor", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "pam-oconnor@santa-monica.org" }
    contacts << { first_name: "Tim", last_name: "O'Donnell", title: "City Manager", heal_city: "Brea, CA", organization: "Brea", email: "timo@ci.brea.ca.us" }
    contacts << { first_name: "Patrick", last_name: "O'Donnell", title: "Council Member - District 4", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district4@longbeach.gov" }
    contacts << { first_name: "Tim", last_name: "Ogden", title: "City Manager", heal_city: "Waterford, CA", organization: "Waterford", email: "togden@cityofwaterford.org" }
    contacts << { first_name: "Steven", last_name: "Ojeda", title: "Mayor Pro Tem", heal_city: "Arvin, CA", organization: "Arvin", email: "stevenarvincouncil@yahoo.com" }
    contacts << { first_name: "Patrick", last_name: "O'Keeffe", title: "City Manager", heal_city: "Emeryville, CA", organization: "Emeryville", email: "pokeeffe@emeryville.org" }
    contacts << { first_name: "Meda", last_name: "Okelo", title: "Community Services Director", heal_city: "East Palo Alto, CA", organization: "East Palo Alto", email: "otoyo@aol.com" }
    contacts << { first_name: "Miche·l", last_name: "O'Leary", title: "Council Member", heal_city: "Culver City, CA", organization: "Culver City", email: "micheal.oleary@culvercity.org" }
    contacts << { first_name: "Laura", last_name: "Olhasso", title: "Mayor Pro Tem", heal_city: "La Canada Flintridge, CA", organization: "La Canada Flintridge", email: "lolhasso@lcf.ca.gov" }
    contacts << { first_name: "Susan", last_name: "Oliva", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "soliva@ci.colton.ca.us" }
    contacts << { first_name: "Sandra", last_name: "Olivencia", title: "Asst. Dir. Admin. Serv/Dir. HR", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "solivencia@beverlyhils.org" }
    contacts << { first_name: "Clinton", last_name: "Olivier", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "clint.olivier@fresno.gov" }
    contacts << { first_name: "Maria", last_name: "Olvera", title: "Human Resources Director", heal_city: "Tracy, CA", organization: "Tracy", email: "maria.olvera@ci.tracy.ca.us" }
    contacts << { first_name: "Ryan", last_name: "O'Neil", title: "Council Member", heal_city: "Fairfax, CA", organization: "Fairfax", email: "roneil@townoffairfax.org" }
    contacts << { first_name: "Susan", last_name: "Ornelas", title: "Council Member", heal_city: "Arcata, CA", organization: "Arcata", email: "sornelas@cityofarcata.org" }
    contacts << { first_name: "David", last_name: "Ott", title: "City Manager", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "dott@cosb.org" }
    contacts << { first_name: "Kay", last_name: "Ours", title: "Council Member", heal_city: "Calipatria, CA", organization: "Calipatria", email: "k_ours@calipatria.com" }
    contacts << { first_name: "Al", last_name: "Ovrom", title: "Council Member", heal_city: "Coronado, CA", organization: "Coronado", email: "aovrom@coronado.ca.us" }
    contacts << { first_name: "Mike", last_name: "Oxborrow", title: "Mayor Pro Tem", heal_city: "Coalinga, CA", organization: "Coalinga", email: "moxborrow@coalinga.com" }
    contacts << { first_name: "Michiko", last_name: "Oyama-Canada", title: "Council Member", heal_city: "Hawaiian Gardens, CA", organization: "Hawaiian Gardens", email: "ocanada@hawaiiangardenscity.org" }
    contacts << { first_name: "Ricardo", last_name: "Pacheco", title: "Council Member", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "rpacheco@baldwinpark.com" }
    contacts << { first_name: "Chuck", last_name: "Page", title: "Council Member", heal_city: "Saratoga, CA", organization: "Saratoga", email: "cpage@saratoga.ca.us" }
    contacts << { first_name: "Cherie", last_name: "Paglia", title: "City Manager", heal_city: "Hidden Hills, CA", organization: "Hidden Hills", email: "citymanager@hiddenhillscity.org" }
    contacts << { first_name: "Carlos", last_name: "Palacios", title: "City Manager", heal_city: "Watsonville, CA", organization: "Watsonville", email: "cpalacio@ci.watsonville.ca.us" }
    contacts << { first_name: "Aaron", last_name: "Palmer", title: "Deputy City Manager", heal_city: "Adelanto, CA", organization: "Adelanto", email: "apalmer@ci.adelanto.ca.us" }
    contacts << { first_name: "Bonnie", last_name: "Pannell", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "bpannell@cityofsacramento.org" }
    contacts << { first_name: "Gina", last_name: "Papan", title: "Mayor", heal_city: "Millbrae, CA", organization: "Millbrae", email: "ginapapan@gmail.com" }
    contacts << { first_name: "Marla", last_name: "Parada", title: "Community Services Manager", heal_city: "Concord, CA", organization: "Concord", email: "marla@ci.concord.ca.us" }
    contacts << { first_name: "Nancy", last_name: "Parent", title: "Vice Mayor", heal_city: "Pittsburg, CA", organization: "Pittsburg", email: "nparent@ci.pittsburg.ca.us" }
    contacts << { first_name: "Robin", last_name: "Parker", title: "Administrative Services Director", heal_city: "Calabasas, CA", organization: "Calabasas", email: "rparker@cityofcalabasas.com" }
    contacts << { first_name: "Yvonne", last_name: "Parks", title: "Mayor", heal_city: "Desert Hot Springs, CA", organization: "Desert Hot Springs", email: "parks_yvonne@hotmail.com" }
    contacts << { first_name: "Bernard", last_name: "Parks", title: "Council Member - District 8", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.parks@lacity.org" }
    contacts << { first_name: "Daniel", last_name: "Parra", title: "Mayor Pro Tem", heal_city: "Fowler, CA", organization: "Fowler", email: "dparra@ci.fowler.ca.us" }
    contacts << { first_name: "Daryl", last_name: "Parrish", title: "City Manager", heal_city: "Covina, CA", organization: "Covina", email: "dparrish@covinaca.gov" }
    contacts << { first_name: "Jay", last_name: "Parrish", title: "City Manager", heal_city: "Ferndale, CA", organization: "Ferndale", email: "citymanager@ci.ferndale.ca.us" }
    contacts << { first_name: "Andrew", last_name: "Pasmant", title: "City Manager", heal_city: "West Covina, CA", organization: "West Covina", email: "Andrew.Pasmant@westcovina.org" }
    contacts << { first_name: "Sam", last_name: "Patel", title: "Vice Mayor", heal_city: "Blythe, CA", organization: "Blythe", email: "spatel@cityofblythe.ca.gov" }
    contacts << { first_name: "Jason", last_name: "Patin", title: "Mayor Pro-Tem", heal_city: "Ridgecrest, CA", organization: "Ridgecrest", email: "jpatin@ci.ridgecrest.ca.us" }
    contacts << { first_name: "Luis", last_name: "Patlan", title: "City Manager", heal_city: "Kerman, CA", organization: "Kerman", email: "lpatlan@cityofkerman.org" }
    contacts << { first_name: "Naomi", last_name: "Patridge", title: "Council Member", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "naomip@hmbcity.com" }
    contacts << { first_name: "Elizabeth", last_name: "Patterson", title: "Mayor", heal_city: "Benicia, CA", organization: "Benicia", email: "epatterson@ci.benicia.ca.us" }
    contacts << { first_name: "Joni", last_name: "Pattillo", title: "City Manager", heal_city: "Dublin, CA", organization: "Dublin", email: "joni.pattillo@dublin.ca.gov" }
    contacts << { first_name: "Donald", last_name: "Pauley", title: "Executive Director", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "dfpauley@cityofkingsburg-ca.gov" }
    contacts << { first_name: "Leonard", last_name: "Paulitz", title: "Council Member", heal_city: "Montclair, CA", organization: "Montclair", email: "lpaulitz@ci.montclair.ca.us" }
    contacts << { first_name: "Deborah", last_name: "Pauly", title: "Council Member", heal_city: "Villa Park, CA", organization: "Villa Park", email: "dpauly@villapark.org" }
    contacts << { first_name: "David", last_name: "Pearce", title: "Council Member", heal_city: "Weed, CA", organization: "Weed", email: "chevy2@snowcrest.net" }
    contacts << { first_name: "Elizabeth", last_name: "Pearson", title: "Mayor Pro Tem", heal_city: "Laguna Beach, CA", organization: "Laguna Beach", email: "elizabethschneider@cox.net" }
    contacts << { first_name: "Jeffrey", last_name: "Pedersen", title: "Community Services Division Manager", heal_city: "Santa Clara, CA", organization: "Santa Clara", email: "communityservices@santaclaraca.gov" }
    contacts << { first_name: "Alfredo", last_name: "Pedroza", title: "Council Member", heal_city: "Napa, CA", organization: "Napa", email: "alfredo.pedroza@wellsfargo.com" }
    contacts << { first_name: "George", last_name: "Perez", title: "Executive Director", heal_city: "Cudahy, CA", organization: "Cudahy", email: "gperez@cityofcudahyca.gov" }
    contacts << { first_name: "Rosa", last_name: "Perez", title: "Council Member", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "rperez@huntingtonpark.org" }
    contacts << { first_name: "Ellen", last_name: "Perkins", title: "Council Member", heal_city: "Palos Verdes Estates, CA", organization: "Palos Verdes Estates", email: "citycouncil@pvestates.org" }
    contacts << { first_name: "Godfrey", last_name: "Pernell", title: "Council Member", heal_city: "Rolling Hills, CA", organization: "Rolling Hills", email: "mayor_citycouncil@cityofrh.net" }
    contacts << { first_name: "Paula", last_name: "Perotte", title: "Council Member", heal_city: "Goleta, CA", organization: "Goleta", email: "pperotte@cityofgoleta.org" }
    contacts << { first_name: "Robert", last_name: "Perrault", title: "City Manager", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "bperrault@grover.org" }
    contacts << { first_name: "Eric", last_name: "Perrodin", title: "Mayor", heal_city: "Compton, CA", organization: "Compton", email: "eperrodin@comptoncity.org" }
    contacts << { first_name: "Jan", last_name: "Perry", title: "Council Member - District 9", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.perry@lacity.org" }
    contacts << { first_name: "Gregory", last_name: "Pettis", title: "Council Member", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "gpettis@cathedralcity.gov" }
    contacts << { first_name: "Marjorie", last_name: "Pettus", title: "City Manager", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "mpettus@ci.healdsburg.ca.us" }
    contacts << { first_name: "Joan", last_name: "Phillipe", title: "City Manager", heal_city: "Clearlake, CA", organization: "Clearlake", email: "city.administrator@clearlake.ca.us" }
    contacts << { first_name: "Thad", last_name: "Phillips", title: "Community Services Director", heal_city: "Downey, CA", organization: "Downey", email: "tphillips@downeyca.org" }
    contacts << { first_name: "Jim", last_name: "Pia", title: "Assistant City Manager", heal_city: "Salinas, CA", organization: "Salinas", email: "jimp@ci.salinas.ca.us" }
    contacts << { first_name: "Duane", last_name: "Picanco", title: "Mayor", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "dpicanco@prcity.com" }
    contacts << { first_name: "Antoniette", last_name: "Pichardo", title: "Council Member", heal_city: "Arvin, CA", organization: "Arvin", email: "tonipichardo@yahoo.com" }
    contacts << { first_name: "Barbara", last_name: "Pierce", title: "Council Member", heal_city: "Redwood City, CA", organization: "Redwood City", email: "bpierce@redwoodcity.org; barbara@barbarapierce.org" }
    contacts << { first_name: "Steve", last_name: "Pinkerton", title: "City Manager", heal_city: "Davis, CA", organization: "Davis", email: "spinkerton@cityofdavis.org" }
    contacts << { first_name: "Joe", last_name: "Pirzynski", title: "Council Member", heal_city: "Los Gatos, CA", organization: "Los Gatos", email: "JPirzynski@losgatosca.gov" }
    contacts << { first_name: "Angela", last_name: "Placheck-Fulcher", title: "Council Member", heal_city: "Williams, CA", organization: "Williams", email: "cityclerk@cityofwilliams.net" }
    contacts << { first_name: "Steven", last_name: "Placido", title: "Vice Mayor", heal_city: "Alhambra, CA", organization: "Alhambra", email: "luwan@cityofalhambra.org" }
    contacts << { first_name: "Mike", last_name: "Podegracz", title: "City Manager", heal_city: "Hesperia, CA", organization: "Hesperia", email: "mpodegracz@cityofhesperia.us" }
    contacts << { first_name: "Althea", last_name: "Polanski", title: "Council Member", heal_city: "Milpitas, CA", organization: "Milpitas", email: "apolanski@ci.milpitas.ca.gov" }
    contacts << { first_name: "Beth", last_name: "Pollard", title: "City Manager", heal_city: "Albany, CA", organization: "Albany", email: "bpollard@albanyca.org" }
    contacts << { first_name: "David", last_name: "Pollock", title: "Council Member", heal_city: "Moorpark, CA", organization: "Moorpark", email: "dpollack@ci.moorpark.ca.us" }
    contacts << { first_name: "Michael", last_name: "Ponce", title: "Mayor Pro Tem", heal_city: "Avalon, CA", organization: "Avalon", email: "michaelponce@ymail.com" }
    contacts << { first_name: "Donald", last_name: "Powell", title: "Interim City Manager", heal_city: "Artesia, CA", organization: "Artesia", email: "dpowell@cityofartesia.us" }
    contacts << { first_name: "Wayne", last_name: "Powell", title: "Council Member", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "wpowell@citymb.info" }
    contacts << { first_name: "Bridget", last_name: "Powers", title: "Vice Mayor", heal_city: "Auburn, CA", organization: "Auburn", email: "jferro@auburn.ca.gov" }
    contacts << { first_name: "Jeffrey", last_name: "Prang", title: "Mayor", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "jprang@weho.org" }
    contacts << { first_name: "Bob", last_name: "Prather", title: "Council Member", heal_city: "Etna, CA", organization: "Etna", email: "etnacity@sisqtel.net" }
    contacts << { first_name: "Patrick", last_name: "Pratt", title: "City Manager", heal_city: "Rancho Mirage, CA", organization: "Rancho Mirage", email: "patrickp@ranchomirageca.gov" }
    contacts << { first_name: "Harry", last_name: "Price", title: "Mayor", heal_city: "Fairfield, CA", organization: "Fairfield", email: "hprice@fairfield.ca.gov" }
    contacts << { first_name: "Douglas", last_name: "Prichard", title: "City Manager", heal_city: "Rolling Hills Estates, CA", organization: "Rolling Hills Estates", email: "dougp@ci.rolling-hills-estates.ca.us" }
    contacts << { first_name: "Jose", last_name: "Pulido", title: "City Manager", heal_city: "Temple City, CA", organization: "Temple City", email: "jpulido@templecity.us" }
    contacts << { first_name: "Robert", last_name: "Pullen-Miles", title: "Council Member", heal_city: "Lawndale, CA", organization: "Lawndale", email: "rpmlawndale@aol.com" }
    contacts << { first_name: "Mark", last_name: "Pulone", title: "City Manager", heal_city: "Aliso Viejo, CA", organization: "Aliso Viejo", email: "mpulone@cityofalisoviejo.com" }
    contacts << { first_name: "Philip", last_name: "Putnam", title: "Mayor Pro Tem", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "cco@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Jan", last_name: "Pye", title: "Council Member", heal_city: "Desert Hot Springs, CA", organization: "Desert Hot Springs", email: "jpye@cityofdhs.org" }
    contacts << { first_name: "Andy", last_name: "Quach", title: "Mayor Pro Tem", heal_city: "Westminster, CA", organization: "Westminster", email: "aquach@ci.westminster.ca.us" }
    contacts << { first_name: "Jean", last_name: "Quan", title: "Mayor", heal_city: "Oakland, CA", organization: "Oakland", email: "jquan@oaklandnet.com;EDillard@oaklandnet.com" }
    contacts << { first_name: "Clint", last_name: "Quilter", title: "City Manager", heal_city: "Hollister, CA", organization: "Hollister", email: "clintquilter@hollister.ca.gov" }
    contacts << { first_name: "Sean", last_name: "Quinn", title: "City Manager", heal_city: "Fairfield, CA", organization: "Fairfield", email: "squinn@fairfield.ca.gov" }
    contacts << { first_name: "Frank", last_name: "Quintero", title: "Mayor", heal_city: "Glendale, CA", organization: "Glendale", email: "fquintero@ci.glendale.ca.us" }
    contacts << { first_name: "Yvonne", last_name: "Quiring", title: "City Manager", heal_city: "Fillmore, CA", organization: "Fillmore", email: "yquiring@ci.fillmore.ca.us" }
    contacts << { first_name: "Sharon", last_name: "Quirk-Silva", title: "Mayor", heal_city: "Fullerton, CA", organization: "Fullerton", email: "council@ci.fullerton.ca.us" }
    contacts << { first_name: "Kevin", last_name: "Radecki", title: "City Manager", heal_city: "Industry, CA", organization: "Industry", email: "kradecki@cityofindustry.org" }
    contacts << { first_name: "Greg", last_name: "Ramirez", title: "City Manager", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "gramirez@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Rudy", last_name: "Ramirez", title: "Council Member", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "rramirez@chulavistaca.gov" }
    contacts << { first_name: "Jose", last_name: "Ramirez", title: "City Manager", heal_city: "Livingston, CA", organization: "Livingston", email: "citymanager@livingstoncity.com" }
    contacts << { first_name: "Diana", last_name: "Ramirez", title: "Admin. Svcs. - Asst. Director of HR", heal_city: "Victorville, CA", organization: "Victorville", email: "dramirez@ci.victorville.ca.us" }
    contacts << { first_name: "Tony", last_name: "Ramos", title: "City Manager", heal_city: "Claremont, CA", organization: "Claremont", email: "tramos@ci.claremont.ca.us" }
    contacts << { first_name: "Cruz", last_name: "Ramos", title: "City Manager", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "cruzramos@kermantel.net" }
    contacts << { first_name: "Trish", last_name: "Raver", title: "Human Resources Manager", heal_city: "Orinda, CA", organization: "Orinda", email: "traver@cityoforinda.org" }
    contacts << { first_name: "Mary-Michal", last_name: "Rawling", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "rawlingm@cityofmerced.org" }
    contacts << { first_name: "Caren", last_name: "Ray", title: "Council Member", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "cray@arroyogrande.org; carenray@sbcglobal.net" }
    contacts << { first_name: "John", last_name: "Rea", title: "Council Member", heal_city: "Palos Verdes Estates, CA", organization: "Palos Verdes Estates", email: "citycouncil@pvestates.org" }
    contacts << { first_name: "Rhonda", last_name: "Reardon", title: "Mayor", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "rreardon@cityofmissionviejo.org; jwilson@cityofmissionviejo.org" }
    contacts << { first_name: "Chuck", last_name: "Reed", title: "Mayor", heal_city: "San Jose, CA", organization: "San Jose", email: "chuck.reed@sanjoseca.gov" }
    contacts << { first_name: "Brad", last_name: "Reese", title: "Mayor", heal_city: "Villa Park, CA", organization: "Villa Park", email: "breese@villapark.org" }
    contacts << { first_name: "Jerry", last_name: "Reid", title: "Director of Parks, Rec. & Community Service", heal_city: "Chowchilla, CA", organization: "Chowchilla", email: "jreid@ci.chowchilla.ca.us" }
    contacts << { first_name: "Phillip", last_name: "Reyes", title: "Council Member", heal_city: "Duarte, CA", organization: "Duarte", email: "reyesphil@hotmail.com" }
    contacts << { first_name: "Ed", last_name: "Reyes", title: "Council Member - District 1", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.reyes@lacity.org" }
    contacts << { first_name: "Mary Helen", last_name: "Reynaga", title: "Council Member", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "sanjcity@kermantel.net" }
    contacts << { first_name: "Susan", last_name: "Rhilinger", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "srhilinger@TorranceCA.gov" }
    contacts << { first_name: "Stephen", last_name: "Rhodes", title: "City Manager", heal_city: "Pacifica, CA", organization: "Pacifica", email: "rhodess@ci.pacifica.ca.us" }
    contacts << { first_name: "Sally", last_name: "Rice", title: "Assist. Director Admin. Serv.", heal_city: "Walnut Creek, CA", organization: "Walnut Creek", email: "rice@walnut-creek.org" }
    contacts << { first_name: "Daniel", last_name: "Rich", title: "City Manager", heal_city: "Mountain View, CA", organization: "Mountain View", email: "dan.rich@mountainview.gov" }
    contacts << { first_name: "Robert", last_name: "Richardson", title: "City Manager", heal_city: "Auburn, CA", organization: "Auburn", email: "rrichardson@auburn.ca.gov" }
    contacts << { first_name: "Sepi", last_name: "Richardson", title: "Council Member", heal_city: "Brisbane, CA", organization: "Brisbane", email: "sepirichardson@gmail.com" }
    contacts << { first_name: "Len", last_name: "Rifkind", title: "Council Member", heal_city: "Larkspur, CA", organization: "Larkspur", email: "lrifkind@cityoflarkspur.org" }
    contacts << { first_name: "Hugh", last_name: "Riley", title: "Assistant City Manager", heal_city: "Moorpark, CA", organization: "Moorpark", email: "hriley@ci.moorpark.ca.us" }
    contacts << { first_name: "Penny", last_name: "Riley", title: "City Manager", heal_city: "Poway, CA", organization: "Poway", email: "priley@poway.org" }
    contacts << { first_name: "Robert", last_name: "Ring", title: "Mayor", heal_city: "Laguna Woods, CA", organization: "Laguna Woods", email: "cityhall@lagunawoodscity.org" }
    contacts << { first_name: "Carol ", last_name: "Rios", title: "Vice Mayor", heal_city: "Oakley, CA", organization: "Oakley", email: "rios@ci.oakley.ca.us" }
    contacts << { first_name: "Jeff", last_name: "Ritterman", title: "Council Member", heal_city: "Richmond, CA", organization: "Richmond", email: "jeffritterman@yahoo.com" }
    contacts << { first_name: "Jeff", last_name: "Rivero", title: "Council Member", heal_city: "Atwater, CA", organization: "Atwater", email: "jeffrivero@atwater.org" }
    contacts << { first_name: "Brad", last_name: "Robbins", title: "City Manager", heal_city: "Corona, CA", organization: "Corona", email: "brad.robbins@ci.corona.ca.us" }
    contacts << { first_name: "Milt", last_name: "Robbins", title: "Mayor", heal_city: "Laguna Woods, CA", organization: "Laguna Woods", email: "cityhall@lagunawoodscity.org" }
    contacts << { first_name: "Marc", last_name: "Roberts", title: "City Manager", heal_city: "Livermore, CA", organization: "Livermore", email: "mroberts@cityoflivermore.net" }
    contacts << { first_name: "Ronald", last_name: "Roberts", title: "Council Member", heal_city: "Temecula, CA", organization: "Temecula", email: "rroberts@citycouncil.org" }
    contacts << { first_name: "Deborah", last_name: "Robertson", title: "Mayor", heal_city: "Rialto, CA", organization: "Rialto", email: "drobertson@rialtoca.gov" }
    contacts << { first_name: "Doug", last_name: "Robertson", title: "City Manager", heal_city: "Victorville, CA", organization: "Victorville", email: "drobertson@ci.victorville.ca.us" }
    contacts << { first_name: "Frank", last_name: "Robinson", title: "Town Manager", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "frobinson@applevalley.org" }
    contacts << { first_name: "Thomas", last_name: "Robinson", title: "City Manager", heal_city: "La Mirada, CA", organization: "La Mirada", email: "trobinson@cityoflamirada.org" }
    contacts << { first_name: "Jacque", last_name: "Robinson", title: "Council Member - District 1", heal_city: "Pasadena, CA", organization: "Pasadena", email: "jacquerobinson@cityofpasadena.net; jacque_robinson@yahoo.com" }
    contacts << { first_name: "Lynn", last_name: "Robinson", title: "Council Member", heal_city: "Santa Cruz, CA", organization: "Santa Cruz", email: "lrobinson@ci.santa-cruz.ca.us" }
    contacts << { first_name: "Fran", last_name: "Robustelli", title: "Human Resources Director", heal_city: "Hayward, CA", organization: "Hayward", email: "Fran.robustelli@hayward-ca.gov" }
    contacts << { first_name: "Mary", last_name: "Roche", title: "Mayor", heal_city: "Indian Wells, CA", organization: "Indian Wells", email: "marytroche@aol.com" }
    contacts << { first_name: "Willard", last_name: "Rodarmel", title: "Council Member Mayor", heal_city: "Lemoore, CA", organization: "Lemoore", email: "willard_rodarmel@yahoo.com" }
    contacts << { first_name: "James", last_name: "Rodems", title: "Community Services Director", heal_city: "Lodi, CA", organization: "Lodi", email: "jrodems@lodi.gov" }
    contacts << { first_name: "Mari", last_name: "Rodin", title: "Council Member", heal_city: "Ukiah, CA", organization: "Ukiah", email: "rodin@pacific.net" }
    contacts << { first_name: "Jennifer", last_name: "Rodriguez", title: "Council Member", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "jvicuna@bellgardens.org" }
    contacts << { first_name: "Hector", last_name: "Rodriguez", title: "City Manager", heal_city: "Cudahy, CA", organization: "Cudahy", email: "hrodriguez@cityofcudahyca.gov" }
    contacts << { first_name: "Louis", last_name: "Rodriguez", title: "Council Member", heal_city: "Huron, CA", organization: "Huron", email: "admasst@cityofhuron.com" }
    contacts << { first_name: "Robert", last_name: "Rodriguez", title: "Council Member", heal_city: "La Verne, CA", organization: "La Verne", email: "rrodriguez@ci.la-verne.ca.us" }
    contacts << { first_name: "Ramon", last_name: "Rodriguez", title: "Council Member", heal_city: "Lynwood, CA", organization: "Lynwood", email: "rrodriguez@lynwood.ca.us" }
    contacts << { first_name: "Julio", last_name: "Rodriguez", title: "Council Member", heal_city: "Perris, CA", organization: "Perris", email: "jrodriguez@cityofperris.org" }
    contacts << { first_name: "Freddie", last_name: "Rodriguez", title: "Council Member - District 2", heal_city: "Pomona, CA", organization: "Pomona", email: "freddie_rodriguez@ci.pomona.ca.us" }
    contacts << { first_name: "Matt", last_name: "Rodriguez", title: "City Manager", heal_city: "San Pablo, CA", organization: "San Pablo", email: "mattr@sanpabloca.gov" }
    contacts << { first_name: "Pete", last_name: "Rodriguez", title: "Personnel Manager", heal_city: "Shafter, CA", organization: "Shafter", email: "prodriguez@shafter.com" }
    contacts << { first_name: "Oscar", last_name: "Rodriquez", title: "City Manager", heal_city: "Calexico, CA", organization: "Calexico", email: "citymanager@calexico.ca.gov" }
    contacts << { first_name: "Jim", last_name: "Rogers", title: "Vice Mayor", heal_city: "Richmond, CA", organization: "Richmond", email: "elirapty@aol.com" }
    contacts << { first_name: "Steve", last_name: "Rogers", title: "Town Manager", heal_city: "Yountville, CA", organization: "Yountville", email: "srogers@yville.com" }
    contacts << { first_name: "Juan", last_name: "Romo", title: "Council Member", heal_city: "Cudahy, CA", organization: "Cudahy", email: "jromo@cityofcudahyca.gov" }
    contacts << { first_name: "Jenny", last_name: "Roney", title: "HR Director", heal_city: "Ventura, CA", organization: "Ventura", email: "jroney@ci.ventura.ca.us" }
    contacts << { first_name: "Mary", last_name: "Rooney", title: "Community Services Director", heal_city: "Walnut, CA", organization: "Walnut", email: "mrooney@ci.walnut.ca.us" }
    contacts << { first_name: "Bill", last_name: "Rosendahl", title: "Council Member - District 11", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.rosendahl@lacity.org" }
    contacts << { first_name: "Robert", last_name: "Ross", title: "Council Member", heal_city: "San Mateo, CA", organization: "San Mateo", email: "ross4smcouncil@aol.com" }
    contacts << { first_name: "William", last_name: "Rounds", title: "Mayor", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "williamrounds@santafesprings.org" }
    contacts << { first_name: "Bruce", last_name: "Roundy", title: "Council Member", heal_city: "Orland, CA", organization: "Orland", email: "broundy@cityoforland.com" }
    contacts << { first_name: "Richard", last_name: "Rowe", title: "Interim City Manager", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "ndlscity@citlink.net" }
    contacts << { first_name: "Dawn", last_name: "Rowe", title: "Council Member", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "towncouncil@yucca-valley.org" }
    contacts << { first_name: "Jeff", last_name: "Rubin", title: "Community Services Director", heal_city: "Calabasas, CA", organization: "Calabasas", email: "jrubin@cityofcalabasas.com" }
    contacts << { first_name: "Larry", last_name: "Rudolph", title: "Mayor Pro Tem", heal_city: "Lawndale, CA", organization: "Lawndale", email: "lrlawndale@aol.com" }
    contacts << { first_name: "Linda", last_name: "Ruffing", title: "City Manager", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "lruffing@fortbragg.com" }
    contacts << { first_name: "Julie", last_name: "Ruiz-Raber", title: "Mayor Pro Tem", heal_city: "Carson, CA", organization: "Carson", email: "jraber@carson.ca.us" }
    contacts << { first_name: "Carol", last_name: "Russell", title: "Vice Mayor", heal_city: "Cloverdale, CA", organization: "Cloverdale", email: "incloverdale@comcast.net" }
    contacts << { first_name: "Rupert", last_name: "Russell", title: "Mayor", heal_city: "Ross, CA", organization: "Ross", email: "rrussell@sflaw.com" }
    contacts << { first_name: "Hank", last_name: "Russell", title: "Mayor", heal_city: "Sonora, CA", organization: "Sonora", email: "hwrussell@mlode.com" }
    contacts << { first_name: "John", last_name: "Russo", title: "City Manager", heal_city: "Alameda, CA", organization: "Alameda", email: "jrusso@ci.alameda.ca.us" }
    contacts << { first_name: "Kay", last_name: "Russo", title: "Recreation & Community Services Dir", heal_city: "Monterey, CA", organization: "Monterey", email: "russo@ci.monterey.ca.us" }
    contacts << { first_name: "Maria", last_name: "Saguisag-Sid", title: "Human Resources Administrator", heal_city: "Brisbane, CA", organization: "Brisbane", email: "msaguisag@ci.brisbane.ca.us" }
    contacts << { first_name: "Lydia", last_name: "Salazar-Wibert", title: "Council Member", heal_city: "Fontana, CA", organization: "Fontana", email: "lwibert@fontana.org" }
    contacts << { first_name: "Gregory", last_name: "Salcido", title: "Council Member", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "spena@pico-rivera.org" }
    contacts << { first_name: "Mark", last_name: "Salinas", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "mark.salinas@hayward-ca.gov" }
    contacts << { first_name: "Nancy", last_name: "Salisbery", title: "Community Services Director", heal_city: "Orland, CA", organization: "Orland", email: "nsalisbery@cityoforland.com" }
    contacts << { first_name: "Sam", last_name: "Salmon", title: "Council Member", heal_city: "Windsor, CA", organization: "Windsor", email: "ssalmon@townofwindsor.com" }
    contacts << { first_name: "Steven", last_name: "Salomon", title: "City Manager", heal_city: "Visalia, CA", organization: "Visalia", email: "ssalomon@ci.visalia.ca.us" }
    contacts << { first_name: "Adam", last_name: "Sanchez", title: "Council Member", heal_city: "Desert Hot Springs, CA", organization: "Desert Hot Springs", email: "asanchez@cityofdhs.org" }
    contacts << { first_name: "Pete", last_name: "Sanchez", title: "Mayor", heal_city: "Suisun City, CA", organization: "Suisun City", email: "psanchez@suisun.com" }
    contacts << { first_name: "David", last_name: "Sander", title: "Council Member", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "dsander@cityofranchocordova.org" }
    contacts << { first_name: "Sedalia", last_name: "Sanders", title: "Council Member", heal_city: "El Centro, CA", organization: "El Centro", email: "ssanders@cityofelcentro.org" }
    contacts << { first_name: "Shelley", last_name: "Sanderson", title: "Mayor", heal_city: "West Covina, CA", organization: "West Covina", email: "shelly.sandersonc" }
    contacts << { first_name: "Jim", last_name: "Sandoval", title: "City Manager", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "jsandoval@chulavista.ca.gov" }
    contacts << { first_name: "Maria", last_name: "Santillan", title: "Council Member", heal_city: "Lynwood, CA", organization: "Lynwood", email: "msantillan@lynwood.ca.us" }
    contacts << { first_name: "Mark", last_name: "Santoro", title: "Council Member", heal_city: "Cupertino, CA", organization: "Cupertino", email: "msantoro@cupertino.org" }
    contacts << { first_name: "Joe", last_name: "Santoro", title: "Mayor Pro Tem", heal_city: "Glendora, CA", organization: "Glendora", email: "jsantoro@ci.glendora.ca.us; jsantoro11@verizon.net" }
    contacts << { first_name: "Megan", last_name: "Satterlee", title: "Mayor Pro Tem", heal_city: "Los Altos, CA", organization: "Los Altos", email: "MSatterlee@losaltosca.gov" }
    contacts << { first_name: "Kevin", last_name: "Sawkins", title: "Mayor", heal_city: "San Gabriel, CA", organization: "San Gabriel", email: "deggehorn@sgch.org" }
    contacts << { first_name: "Tim", last_name: "Sbranti", title: "Mayor", heal_city: "Dublin, CA", organization: "Dublin", email: "tim.sbranti@dublin.ca.gov" }
    contacts << { first_name: "George", last_name: "Scarborough", title: "City Manager", heal_city: "San Clemente, CA", organization: "San Clemente", email: "scarboroughg@san-clemente.org" }
    contacts << { first_name: "Robert", last_name: "Scattini", title: "Council Member", heal_city: "Hollister, CA", organization: "Hollister", email: "coh-dist2@hollister.ca.gov" }
    contacts << { first_name: "Kelly", last_name: "Schellong", title: "Council Member", heal_city: "Crescent City, CA", organization: "Crescent City", email: "kschellong@cc.crescentcity.org" }
    contacts << { first_name: "Walt", last_name: "Scherer", title: "Mayor", heal_city: "Loomis, CA", organization: "Loomis", email: "walt@starstream.net" }
    contacts << { first_name: "Gerrie", last_name: "Schipske", title: "Council Member", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district5@longbeach.gov" }
    contacts << { first_name: "Helene", last_name: "Schneider", title: "Mayor", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "hschneider@santabarbaraca.gov" }
    contacts << { first_name: "Richard", last_name: "Schneider, M.D.", title: "Mayor", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "cco@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Jim", last_name: "Schooler", title: "Community Services Director", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "jschooler@yucca-valley.org" }
    contacts << { first_name: "Harry", last_name: "Schwarz", title: "Council Member", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "hschwarz@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Donald", last_name: "Schweitzer", title: "Mayor", heal_city: "Brea, CA", organization: "Brea", email: "dons@cityofbrea.net" }
    contacts << { first_name: "Tami", last_name: "Scott", title: "Administrative Services Director", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "tscott@cathedralcity.gov" }
    contacts << { first_name: "Mark", last_name: "Scott", title: "City Manager", heal_city: "Fresno, CA", organization: "Fresno", email: "mark.scott@fresno.gov" }
    contacts << { first_name: "Deborah", last_name: "Scott-Leistra", title: "Personnel Director", heal_city: "Redlands, CA", organization: "Redlands", email: "dleistra@cityofredlands.org" }
    contacts << { first_name: "Frank", last_name: "Scotto", title: "Mayor", heal_city: "Torrance, CA", organization: "Torrance", email: "fscotto@TorranceCA.gov" }
    contacts << { first_name: "Susan", last_name: "Seamans", title: "Council Member", heal_city: "Rolling Hills Estates, CA", organization: "Rolling Hills Estates", email: "suzyseamans@cox.net" }
    contacts << { first_name: "Michael", last_name: "Segala", title: "Council Member", heal_city: "Suisun City, CA", organization: "Suisun City", email: "msegala@suisun.com" }
    contacts << { first_name: "Nancy", last_name: "Selfridge", title: "Council Member", heal_city: "Monterey, CA", organization: "Monterey", email: "ramos@ci.monterey.ca.us" }
    contacts << { first_name: "Sophia", last_name: "Selivanoff", title: "Human Resources Director", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "sselivanoff@rpcity.org" }
    contacts << { first_name: "Sue", last_name: "Severson", title: "Council Member", heal_city: "Orinda, CA", organization: "Orinda", email: "sseverson@cityoforinda.org" }
    contacts << { first_name: "Pat", last_name: "Shackleton", title: "Council Member", heal_city: "Plymouth, CA", organization: "Plymouth", email: "trishdenny@comcast.net" }
    contacts << { first_name: "Stephen", last_name: "Sham", title: "Council Member", heal_city: "Alhambra, CA", organization: "Alhambra", email: "stephensham@me.com" }
    contacts << { first_name: "Gordon", last_name: "Shanks", title: "Council Member", heal_city: "Seal Beach, CA", organization: "Seal Beach", email: "gorsha@aol.com" }
    contacts << { first_name: "Greg", last_name: "Shapton", title: "Community Services Director", heal_city: "Pomona, CA", organization: "Pomona", email: "greg_shapton@ci.pomona.ca.us" }
    contacts << { first_name: "Joe", last_name: "Shaw", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "joe.shaw@surfcity-hb.org" }
    contacts << { first_name: "Mike", last_name: "Shellito", title: "Community Svcs Director", heal_city: "Roseville, CA", organization: "Roseville", email: "mshellito@roseville.ca.us" }
    contacts << { first_name: "James Gregory", last_name: "Shelton", title: "Council Member", heal_city: "Porterville, CA", organization: "Porterville", email: "gregshelton@portervilleca.gov" }
    contacts << { first_name: "Nancy", last_name: "Shepherd", title: "Vice Mayor", heal_city: "Palo Alto, CA", organization: "Palo Alto", email: "nancy.shepherd@cityofpaloalto.org" }
    contacts << { first_name: "Fran", last_name: "Shields", title: "Parks, Rec., & Community Services Dir.", heal_city: "Whittier, CA", organization: "Whittier", email: "fshields@cityofwhittier.org" }
    contacts << { first_name: "Pam", last_name: "Shinault", title: "Community Services Director", heal_city: "Novato, CA", organization: "Novato", email: "pshinault@novato.org" }
    contacts << { first_name: "John", last_name: "Shirey", title: "City Manager", heal_city: "Sacramento, CA", organization: "Sacramento", email: "jshirey@cityofsacramento.org" }
    contacts << { first_name: "Amy", last_name: "Shuklian", title: "Mayor", heal_city: "Visalia, CA", organization: "Visalia", email: "ashuklian@ci.visalia.ca.us" }
    contacts << { first_name: "John", last_name: "Sibert", title: "Council Member", heal_city: "Malibu, CA", organization: "Malibu", email: "jsibert@ci.malibu.ca.us" }
    contacts << { first_name: "Jac", last_name: "Siegel", title: "Council Member", heal_city: "Mountain View, CA", organization: "Mountain View", email: "jacsharonsiegel@comcast.net" }
    contacts << { first_name: "Richard", last_name: "Signs", title: "Human Resources Manager", heal_city: "Rancho Mirage, CA", organization: "Rancho Mirage", email: "richards@ranchomirageca.gov" }
    contacts << { first_name: "Bronda", last_name: "Silva", title: "Human Resources Director", heal_city: "American Canyon, CA", organization: "American Canyon", email: "bbsilva@cityofamericancanyon.org" }
    contacts << { first_name: "Tim", last_name: "Silva", title: "Council Member", heal_city: "Barstow, CA", organization: "Barstow", email: "tsilva@barstowca.org" }
    contacts << { first_name: "Robert", last_name: "Silva", title: "Mayor", heal_city: "Mendota, CA", organization: "Mendota", email: "rsilva@ci.mendota.ca.us" }
    contacts << { first_name: "Teri", last_name: "Silva", title: "Human Resources Officer", heal_city: "Salinas, CA", organization: "Salinas", email: "teris@ci.salinas.ca.us" }
    contacts << { first_name: "David", last_name: "Simmen", title: "Mayor", heal_city: "Yreka, CA", organization: "Yreka", email: "dsimmen@ci.yreka.ca.us" }
    contacts << { first_name: "Jim", last_name: "Simonian", title: "Council Member", heal_city: "Fowler, CA", organization: "Fowler", email: "Jsimonian@simonianfruit.com" }
    contacts << { first_name: "Marty", last_name: "Simonoff", title: "Council Member", heal_city: "Brea, CA", organization: "Brea", email: "martys@cityofbrea.net" }
    contacts << { first_name: "Vijay", last_name: "Singhal", title: "Chief Executive Officer", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "vsinghal@baldwinpark.com" }
    contacts << { first_name: "Mike", last_name: "Singleton", title: "Vice Mayor", heal_city: "Galt, CA", organization: "Galt", email: "msingleton@ci.galt.ca.us" }
    contacts << { first_name: "Rod", last_name: "Sinks", title: "Council Member", heal_city: "Cupertino, CA", organization: "Cupertino", email: "rsinks@cupertino.org" }
    contacts << { first_name: "Brian", last_name: "Sipes", title: "Council Member", heal_city: "Fillmore, CA", organization: "Fillmore", email: "brian.sipes10@gmail.com" }
    contacts << { first_name: "Stan", last_name: "Skipworth", title: "Council Member", heal_city: "Corona, CA", organization: "Corona", email: "Stan.Skipworth@ci.corona.ca.us" }
    contacts << { first_name: "Dan", last_name: "Skoglund", title: "Vice Mayor", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "dskoglund@cityofranchocordova.org" }
    contacts << { first_name: "Bob", last_name: "Slavin", title: "Mayor Pro Tem", heal_city: "Westlake Village, CA", organization: "Westlake Village", email: "beth@wlv.org;rslavin@acstax.com" }
    contacts << { first_name: "Thurston", last_name: "Smith", title: "Mayor Pro Tem", heal_city: "Hesperia, CA", organization: "Hesperia", email: "tsmith@cityofhesperia.us" }
    contacts << { first_name: "Carol", last_name: "Smith", title: "Council Member", heal_city: "Ojai, CA", organization: "Ojai", email: "csmit2u@yahoo.com" }
    contacts << { first_name: "Laura", last_name: "Snideman", title: "City Manager", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "lsnideman@hmbcity.com" }
    contacts << { first_name: "April", last_name: "Soash", title: "Dir of Comm Svcs/Asst City Mgr", heal_city: "Monrovia, CA", organization: "Monrovia", email: "asoash@ci.monrovia.ca.us" }
    contacts << { first_name: "Frank", last_name: "Solecito", title: "Council Member", heal_city: "Monterey, CA", organization: "Monterey", email: "solecit@ci.monterey.ca.us" }
    contacts << { first_name: "Ray", last_name: "Soleno", title: "Mayor Pro Tem", heal_city: "Reedley, CA", organization: "Reedley", email: "sylvia.plata@reedley.com" }
    contacts << { first_name: "Ben", last_name: "Solomon", title: "Mayor", heal_city: "El Centro, CA", organization: "El Centro", email: "bsolomon@cityofelcentro.org" }
    contacts << { first_name: "Debbie", last_name: "Solomon", title: "Director of Community Services", heal_city: "Simi Valley, CA", organization: "Simi Valley", email: "dsolomon@simivalley.org" }
    contacts << { first_name: "Steven", last_name: "Sopp", title: "Community Dev.  Director", heal_city: "Avenal, CA", organization: "Avenal", email: "ssopp@cityofavenal.com" }
    contacts << { first_name: "Carla", last_name: "Soracco", title: "Accounting Manager", heal_city: "Jackson, CA", organization: "Jackson", email: "csoracco@ci.jackson.ca.us" }
    contacts << { first_name: "Diana", last_name: "Souza", title: "Council Member", heal_city: "San Leandro, CA", organization: "San Leandro", email: "dsouza@sanleandro.org" }
    contacts << { first_name: "Sam", last_name: "Spagnolo", title: "Mayor Pro Tem", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "spagnolo@charter.net;council@cityofrc.us" }
    contacts << { first_name: "William", last_name: "Spears", title: "Council Member/Police Chief", heal_city: "Willows, CA", organization: "Willows", email: "wspears@cityofwillows.org" }
    contacts << { first_name: "David", last_name: "Spence", title: "Council Member", heal_city: "La Canada Flintridge, CA", organization: "La Canada Flintridge", email: "dspence@lcf.ca.gov" }
    contacts << { first_name: "Frank", last_name: "Spevacek", title: "City Manager", heal_city: "La Quinta, CA", organization: "La Quinta", email: "fspevacek@la-quinta.org" }
    contacts << { first_name: "Anthony", last_name: "Spitaleri", title: "Mayor", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "tspitaleri@sunnyvale.ca.gov" }
    contacts << { first_name: "Jeri", last_name: "Spittler", title: "Council Member", heal_city: "Clearlake, CA", organization: "Clearlake", email: "council@clearlake.ca.us" }
    contacts << { first_name: "Tim", last_name: "Spohn", title: "Mayor Pro Tem", heal_city: "Industry, CA", organization: "Industry", email: "cityclerk@cityofindustry.org" }
    contacts << { first_name: "Pam", last_name: "Stafford", title: "Mayor", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "pstafford@rpcity.org" }
    contacts << { first_name: "Walt", last_name: "Stanckiewitz", title: "Mayor", heal_city: "Grand Terrace, CA", organization: "Grand Terrace", email: "walt@cityofgrandterrace.org" }
    contacts << { first_name: "Susan", last_name: "Stanton", title: "City Manager", heal_city: "Greenfield, CA", organization: "Greenfield", email: "sstanton@ci.greenfield.ca.us" }
    contacts << { first_name: "Kevin", last_name: "Stapleton", title: "Mayor", heal_city: "Covina, CA", organization: "Covina", email: "mlwalcza@covinaca.gov" }
    contacts << { first_name: "Craig", last_name: "Starkey", title: "Council Member", heal_city: "Yuba City, CA", organization: "Yuba City", email: "cstarkey@yubacity.net" }
    contacts << { first_name: "Kurt", last_name: "Starman", title: "City Manager", heal_city: "Redding, CA", organization: "Redding", email: "kstarman@ci.redding.ca.us" }
    contacts << { first_name: "David", last_name: "Stein", title: "Mayor", heal_city: "Etna, CA", organization: "Etna", email: "etnacity@sisqtel.net" }
    contacts << { first_name: "Ed", last_name: "Steinbeck", title: "Council Member", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "esteinbeck@prcity.com" }
    contacts << { first_name: "Patricia", last_name: "Stephens", title: "Mayor Pro Tem", heal_city: "Soledad, CA", organization: "Soledad", email: "pstephens11@yahoo.com" }
    contacts << { first_name: "Ruth", last_name: "Sterling", title: "Council Member", heal_city: "La Mesa, CA", organization: "La Mesa", email: "rsterling@ci.la-mesa.ca.us" }
    contacts << { first_name: "Cynthia", last_name: "Sternquist", title: "Mayor Pro Tem", heal_city: "Temple City, CA", organization: "Temple City", email: "csternquist@templecity.us" }
    contacts << { first_name: "Michael", last_name: "Stevens", title: "Council Member", heal_city: "Inglewood, CA", organization: "Inglewood", email: "mstevens@cityofinglewood.org" }
    contacts << { first_name: "Richard", last_name: "Stewart", title: "Council Member", heal_city: "Moreno Valley, CA", organization: "Moreno Valley", email: "richards@moval.org" }
    contacts << { first_name: "Alex", last_name: "Stillman", title: "Council Member", heal_city: "Arcata, CA", organization: "Arcata", email: "astillman@cityofarcata.org" }
    contacts << { first_name: "Jason", last_name: "Stilwell", title: "City Administrator", heal_city: "Carmel-by-the-Sea, CA", organization: "Carmel-by-the-Sea", email: "jstilwell@ci.carmel.ca.us" }
    contacts << { first_name: "Elizabeth", last_name: "Stone", title: "Council Member", heal_city: "Los Banos, CA", organization: "Los Banos", email: "elizabeth.stone@losbanos.org" }
    contacts << { first_name: "Sam", last_name: "Storey", title: "Vice Mayor", heal_city: "Capitola, CA", organization: "Capitola", email: "samforcapitola@att.net" }
    contacts << { first_name: "David", last_name: "Stottlemyre", title: "Council Member", heal_city: "Bishop, CA", organization: "Bishop", email: "bishoptax@gmail.com" }
    contacts << { first_name: "Hank", last_name: "Stratford", title: "Vice Mayor", heal_city: "Clayton, CA", organization: "Clayton", email: "hank_stratford@yahoo.com" }
    contacts << { first_name: "Doug", last_name: "Strehl", title: "Mayor", heal_city: "Fortuna, CA", organization: "Fortuna", email: "dstrehl@earthlink.com" }
    contacts << { first_name: "Mary", last_name: "Strenn", title: "Interim City Manager", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "mstrenn1@socal.rr.com" }
    contacts << { first_name: "Ken", last_name: "Striplin", title: "City Manager", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "kstriplin@santa-clarita.com" }
    contacts << { first_name: "Carlon", last_name: "Strobel", title: "Mayor Pro Tem", heal_city: "Ojai, CA", organization: "Ojai", email: "strobel@ci.ojai.ca.us" }
    contacts << { first_name: "Fred", last_name: "Strong", title: "Council Member", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "fstrong@charter.net; fredstrong@me.com" }
    contacts << { first_name: "Rhonda", last_name: "Strout", title: "Human Resources Director", heal_city: "Riverside, CA", organization: "Riverside", email: "rstrout@riversideca.gov" }
    contacts << { first_name: "Mary", last_name: "Su", title: "Mayor", heal_city: "Walnut, CA", organization: "Walnut", email: "msu@ci.walnut.ca.us;jwright@ci.walnut.ca.us; marywsu@hotmail.com" }
    contacts << { first_name: "Karen", last_name: "Suiker", title: "City Manager", heal_city: "Trinidad, CA", organization: "Trinidad", email: "citymanager@trinidad.ca.gov" }
    contacts << { first_name: "Jacquie", last_name: "Sullivan", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "city_council@bakersfieldcity.us" }
    contacts << { first_name: "Harvey", last_name: "Sullivan", title: "Council Member", heal_city: "Norco, CA", organization: "Norco", email: "cnclmbr@att.net" }
    contacts << { first_name: "Lisa", last_name: "Sullivan", title: "Human Resources Director", heal_city: "Santa Cruz, CA", organization: "Santa Cruz", email: "lsullivan@ci.santa-cruz.ca.us" }
    contacts << { first_name: "Carey", last_name: "Sullivan", title: "Interim Director, Park & Recreation", heal_city: "Woodland, CA", organization: "Woodland", email: "carey.sullivan@cityofwoodland.org" }
    contacts << { first_name: "Hermino", last_name: "Sunga", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "hsunga@ci.vallejo.ca.us" }
    contacts << { first_name: "Bill", last_name: "Sutherland", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "bsutherland@TorranceCA.gov" }
    contacts << { first_name: "Gary", last_name: "Svanda", title: "Council Member", heal_city: "Madera, CA", organization: "Madera", email: "glansings@yahoo.com" }
    contacts << { first_name: "Angela", last_name: "Swanson", title: "Council Member", heal_city: "South Lake Tahoe, CA", organization: "South Lake Tahoe", email: "aswanson@cityofslt.us" }
    contacts << { first_name: "Michael", last_name: "Sweeney", title: "Mayor", heal_city: "Hayward, CA", organization: "Hayward", email: "michael.sweeney@hayward-ca.gov" }
    contacts << { first_name: "Andrew", last_name: "Takata", title: "City Manager", heal_city: "Banning, CA", organization: "Banning", email: "atakata@ci.banning.ca.us" }
    contacts << { first_name: "Lena", last_name: "Tam", title: "Council Member", heal_city: "Alameda, CA", organization: "Alameda", email: "ltam@ci.alameda.ca.us" }
    contacts << { first_name: "Paul", last_name: "Tanaka", title: "Mayor", heal_city: "Gardena, CA", organization: "Gardena", email: "ptanaka@ci.gardena.ca.us" }
    contacts << { first_name: "Alan", last_name: "Tandy", title: "City Manager", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "admmgr@bakersfieldcity.us" }
    contacts << { first_name: "Joseph", last_name: "Tanner", title: "Interim City Manager", heal_city: "Rio Vista, CA", organization: "Rio Vista", email: "jtanner@ci.rio-vista.ca.us" }
    contacts << { first_name: "Tim", last_name: "Tarver", title: "Council Member", heal_city: "Arvin, CA", organization: "Arvin", email: "ttarver@arvin.org" }
    contacts << { first_name: "Steve", last_name: "Tate", title: "Mayor", heal_city: "Morgan Hill, CA", organization: "Morgan Hill", email: "steve.tate@morganhill.ca.gov" }
    contacts << { first_name: "John", last_name: "Taylor", title: "Mayor", heal_city: "San Juan Capistrano, CA", organization: "San Juan Capistrano", email: "jtaylor@sanjuancapistrano.org" }
    contacts << { first_name: "Raymond", last_name: "Taylor", title: "City Manager", heal_city: "Westlake Village, CA", organization: "Westlake Village", email: "ray@wlv.org" }
    contacts << { first_name: "Terry", last_name: "Taylor-Vodden", title: "Vice Mayor", heal_city: "Willows, CA", organization: "Willows", email: "mmistrot@cityofwillows.org" }
    contacts << { first_name: "Nick", last_name: "Tell", title: "Council Member", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "ntell@citymb.info" }
    contacts << { first_name: "Michelle", last_name: "Tellez", title: "Human Resources Director", heal_city: "Oxnard, CA", organization: "Oxnard", email: "michelle.tellez@ci.oxnard.ca.us" }
    contacts << { first_name: "Doug", last_name: "Tessitor", title: "Council Member", heal_city: "Glendora, CA", organization: "Glendora", email: "dtessitor@ci.glendora.ca.us" }
    contacts << { first_name: "Debbie", last_name: "Tharp", title: "Community Services Manager", heal_city: "Murrieta, CA", organization: "Murrieta", email: "dtharp@murrieta.org" }
    contacts << { first_name: "Judy", last_name: "Thein", title: "Vice Mayor", heal_city: "Clearlake, CA", organization: "Clearlake", email: "council@clearlake.ca.us" }
    contacts << { first_name: "Cari", last_name: "Thomas", title: "Mayor", heal_city: "Adelanto, CA", organization: "Adelanto", email: "cthomas@ci.adelanto.ca.us" }
    contacts << { first_name: "Benj", last_name: "Thomas", title: "Councli member", heal_city: "Ukiah, CA", organization: "Ukiah", email: "ukiahguy@yahoo.com" }
    contacts << { first_name: "Dianne", last_name: "Thompson", title: "City Manager", heal_city: "Cotati, CA", organization: "Cotati", email: "dthompson@ci.cotati.ca.us" }
    contacts << { first_name: "Cathy", last_name: "Thompson", title: "Human Resources Manager", heal_city: "Cypress, CA", organization: "Cypress", email: "cthompson@ci.cypress.ca.us" }
    contacts << { first_name: "Peggy", last_name: "Thomsen", title: "Mayor", heal_city: "Albany, CA", organization: "Albany", email: "peggy.thomsen@gmail.com" }
    contacts << { first_name: "Jerry", last_name: "Thorne", title: "Mayor", heal_city: "Pleasanton, CA", organization: "Pleasanton", email: "jthorne@ci.pleasanton.ca.us" }
    contacts << { first_name: "Jim", last_name: "Thorsen", title: "City Manager", heal_city: "Malibu, CA", organization: "Malibu", email: "jthorsen@malibucity.org" }
    contacts << { first_name: "Leslie", last_name: "Tigan", title: "City Manager", heal_city: "Portola, CA", organization: "Portola", email: "l.tigan@ci.portola.ca.us" }
    contacts << { first_name: "Keith", last_name: "Till", title: "City Manager", heal_city: "Santee, CA", organization: "Santee", email: "ktill@ci.santee.ca.us" }
    contacts << { first_name: "Henry", last_name: "Tingle", title: "City Manager", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "htingle@citrusheights.net" }
    contacts << { first_name: "Stuart", last_name: "Titus", title: "Mayor", heal_city: "Ferndale, CA", organization: "Ferndale", email: "cityclerk@ci.ferndale.ca.us" }
    contacts << { first_name: "Tim", last_name: "Titus", title: "Mayor", heal_city: "Paradise, CA", organization: "Paradise", email: "ttitus@townofparadise.com" }
    contacts << { first_name: "Ed ", last_name: "Todd", title: "City Manager", heal_city: "Dinuba, CA", organization: "Dinuba", email: "etodd@dinuba.ca.gov" }
    contacts << { first_name: "Sam", last_name: "Toles", title: "Council Member", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "stoles@cathedralcity.gov" }
    contacts << { first_name: "Sam", last_name: "Torres", title: "Council Member", heal_city: "Indio, CA", organization: "Indio", email: "msommons@indio.org" }
    contacts << { first_name: "Vincent", last_name: "Torres", title: "Community Services & Recreation  Director", heal_city: "Paramount, CA", organization: "Paramount", email: "vtorres@paramountcity.com" }
    contacts << { first_name: "Michael", last_name: "Touhey", title: "Council Member", heal_city: "West Covina, CA", organization: "West Covina", email: "Mike.Touhey@westcovina.org" }
    contacts << { first_name: "Nancy", last_name: "Tragarz", title: "Council Member", heal_city: "Walnut, CA", organization: "Walnut", email: "ntragarz@ci.walnut.ca.us" }
    contacts << { first_name: "John", last_name: "Troughton, Jr.", title: "Council Member", heal_city: "Williams, CA", organization: "Williams", email: "wcctroughtonjr@cityofwilliams.org" }
    contacts << { first_name: "Phillip", last_name: "Tsunoda", title: "Mayor Pro Tem", heal_city: "Aliso Viejo, CA", organization: "Aliso Viejo", email: "ptsunoda@cityofalisoviejo.com" }
    contacts << { first_name: "Delores", last_name: "Turner", title: "Assistant City Manager", heal_city: "Emeryville, CA", organization: "Emeryville", email: "dturner@emeryville.org" }
    contacts << { first_name: "Miguel", last_name: "Ucovich", title: "Council Member", heal_city: "Loomis, CA", organization: "Loomis", email: "ucovich@hotmail.com" }
    contacts << { first_name: "Shawna", last_name: "Urban", title: "Personnel Manager", heal_city: "Claremont, CA", organization: "Claremont", email: "surban@ci.claremont.ca.us" }
    contacts << { first_name: "Francine", last_name: "Uy", title: "Human Resources Technician", heal_city: "Soledad, CA", organization: "Soledad", email: "francine.uy@cityofsoledad.com" }
    contacts << { first_name: "Carmen", last_name: "Valdez", title: "Human Resources Director", heal_city: "Milpitas, CA", organization: "Milpitas", email: "cvaldez@ci.milpitas.ca.gov" }
    contacts << { first_name: "Cecilia", last_name: "Valdez", title: "Council Member", heal_city: "San Pablo, CA", organization: "San Pablo", email: "cecilia_cecy_valdez@comcast.net" }
    contacts << { first_name: "Pauline", last_name: "Valdivia", title: "Council Member", heal_city: "Hollister, CA", organization: "Hollister", email: "jantano@aol.com" }
    contacts << { first_name: "Betty", last_name: "Vallejo", title: "Mayor Pro Tem", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "bvallejo@gpusd.k12.ca.us" }
    contacts << { first_name: "Angela", last_name: "Valles", title: "Council Member", heal_city: "Victorville, CA", organization: "Victorville", email: "avalles@ci.victorville.ca.us" }
    contacts << { first_name: "Charles", last_name: "Valvo", title: "Council Member", heal_city: "Adelanto, CA", organization: "Adelanto", email: "cvalvo@ci.adelanto.ca.us" }
    contacts << { first_name: "Lynette", last_name: "Van Laar", title: "City Clerk/Finance Director", heal_city: "Ripon, CA", organization: "Ripon", email: "lvanlaar@cityofripon.org" }
    contacts << { first_name: "Jerry", last_name: "Van Leeuwen", title: "Community Services Director", heal_city: "Escondido, CA", organization: "Escondido", email: "jvanleeuwen@escondido.org" }
    contacts << { first_name: "Michael", last_name: "Vanwinkle", title: "Council Member", heal_city: "Waterford, CA", organization: "Waterford", email: "mlvanwinkle@sbcglobal.net" }
    contacts << { first_name: "Kris", last_name: "Vardas", title: "Council Member", heal_city: "Pismo Beach, CA", organization: "Pismo Beach", email: "krisvardas@yahoo.com" }
    contacts << { first_name: "Edward", last_name: "Varela", title: "Mayor Pro Tem", heal_city: "Maywood, CA", organization: "Maywood", email: "ed.varela@cityofmaywoodca.org" }
    contacts << { first_name: "Charles", last_name: "Vasquez", title: "Mayor Pro Tem", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "cvasquez@cathedralcity.gov" }
    contacts << { first_name: "Fernando", last_name: "Vasquez", title: "Council Member", heal_city: "Downey, CA", organization: "Downey", email: "fvasquez@downeyca.org" }
    contacts << { first_name: "Craig", last_name: "Vejvoda", title: "Council Member", heal_city: "Tulare, CA", organization: "Tulare", email: "cvejvoda@lightspeed.net" }
    contacts << { first_name: "Carlos", last_name: "Victoria", title: "Council Member", heal_city: "King City, CA", organization: "King City", email: "deputyclerk@kingcity.com" }
    contacts << { first_name: "Cheryl", last_name: "Viegas Walker", title: "Council Member", heal_city: "El Centro, CA", organization: "El Centro", email: "cwalker@cityofelcentro.org" }
    contacts << { first_name: "Chris", last_name: "Vierra", title: "Mayor", heal_city: "Ceres, CA", organization: "Ceres", email: "chris.vierra@ci.ceres.ca.us" }
    contacts << { first_name: "Antonio", last_name: "Villaraigosa", title: "Mayor", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "mayor@lacity.org" }
    contacts << { first_name: "Dawn", last_name: "Villarreal", title: "Human Resources Director", heal_city: "Vacaville, CA", organization: "Vacaville", email: "dvillarreal@cityofvacaville.com" }
    contacts << { first_name: "Oscar", last_name: "Villegas", title: "Council Member", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "oscarv@cityofwestsacramento.org" }
    contacts << { first_name: "Gus", last_name: "Vina", title: "City Manager", heal_city: "Encinitas, CA", organization: "Encinitas", email: "gvina@encinitasca.gov" }
    contacts << { first_name: "Joe", last_name: "Vinatieri", title: "Council Member", heal_city: "Whittier, CA", organization: "Whittier", email: "jvcc@bewleylaw.com" }
    contacts << { first_name: "Philip", last_name: "Vince", title: "City Manager", heal_city: "Martinez, CA", organization: "Martinez", email: "pvince@cityofmartinez.org" }
    contacts << { first_name: "Fernando", last_name: "Vizcarra", title: "Council Member", heal_city: "Temple City, CA", organization: "Temple City", email: "fvizcarra@templecity.us" }
    contacts << { first_name: "Donald", last_name: "Voss", title: "Council Member", heal_city: "La Canada Flintridge, CA", organization: "La Canada Flintridge", email: "dvoss@lcf.ca.gov" }
    contacts << { first_name: "Steve", last_name: "Wagner", title: "Public Works Director/City Engineer", heal_city: "Goleta, CA", organization: "Goleta", email: "swagner@cityofgoleta.org" }
    contacts << { first_name: "Ron", last_name: "Waldrop", title: "Council Member", heal_city: "Taft, CA", organization: "Taft", email: "cthompson@cityoftaft.org" }
    contacts << { first_name: "Timothy", last_name: "Walker", title: "Mayor", heal_city: "Wildomar, CA", organization: "Wildomar", email: "twalker@cityofwildomar.org" }
    contacts << { first_name: "Robert", last_name: "Wall", title: "Community Dev. Director", heal_city: "Eureka, CA", organization: "Eureka", email: "rwall@ci.eureka.ca.gov" }
    contacts << { first_name: "Steve", last_name: "Wallace", title: "Community Dev. Director", heal_city: "Pleasant Hill, CA", organization: "Pleasant Hill", email: "swallace@ci.pleasant-hill.ca.us" }
    contacts << { first_name: "Alan", last_name: "Wapner", title: "Council Member", heal_city: "Ontario, CA", organization: "Ontario", email: "awapner@ci.ontario.ca.us" }
    contacts << { first_name: "Ellen", last_name: "Ward", title: "Council Member", heal_city: "Signal Hill, CA", organization: "Signal Hill", email: "Eward@cityofsignalhill.org" }
    contacts << { first_name: "Dave", last_name: "Warden", title: "Council Member", heal_city: "Belmont, CA", organization: "Belmont", email: "dwarden@belmont.gov" }
    contacts << { first_name: "Richard", last_name: "Warne", title: "City Manager", heal_city: "Twentynine Palms, CA", organization: "Twentynine Palms", email: "rwarne@29palms.org" }
    contacts << { first_name: "Freda", last_name: "Warren", title: "Human Resources Manager", heal_city: "Pleasant Hill, CA", organization: "Pleasant Hill", email: "fwarren@ci.pleasant-hill.ca.us" }
    contacts << { first_name: "Chuck", last_name: "Washington", title: "Council Member", heal_city: "Temecula, CA", organization: "Temecula", email: "chuck.washington@cityoftemecula.org" }
    contacts << { first_name: "Rich", last_name: "Waterman", title: "Vice Mayor", heal_city: "Campbell, CA", organization: "Campbell", email: "richw@cityofcampbell.com" }
    contacts << { first_name: "William", last_name: "Way", title: "City Manager", heal_city: "California City, CA", organization: "California City", email: "citymgr@ccis.com" }
    contacts << { first_name: "Willie", last_name: "Weatherford", title: "Mayor", heal_city: "Manteca, CA", organization: "Manteca", email: "wweatherford@ci.manteca.ca.us" }
    contacts << { first_name: "Dave", last_name: "Weaver", title: "Council Member", heal_city: "Glendale, CA", organization: "Glendale", email: "dweaver @ci.glendale.ca.us" }
    contacts << { first_name: "Elisa", last_name: "Weaver", title: "Community & Personnel Srvcs Dir.", heal_city: "Sierra Madre, CA", organization: "Sierra Madre", email: "eweaver@cityofsierramadre.com" }
    contacts << { first_name: "Denis", last_name: "Weber", title: "Mayor", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "dweber@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Larry", last_name: "Weber", title: "Council Member", heal_city: "Hidden Hills, CA", organization: "Hidden Hills", email: "council@hiddenhillscity.org" }
    contacts << { first_name: "Steven", last_name: "Weinberg", title: "Mayor", heal_city: "Dana Point, CA", organization: "Dana Point", email: "sweinberg@danapoint.org" }
    contacts << { first_name: "Ken", last_name: "Weir", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "city_council@bakersfieldcity.us" }
    contacts << { first_name: "Jack", last_name: "Weir", title: "Vice Mayor", heal_city: "Pleasant Hill, CA", organization: "Pleasant Hill", email: "jweir39@aol.com" }
    contacts << { first_name: "Peter", last_name: "Weiss", title: "City Manager", heal_city: "Oceanside, CA", organization: "Oceanside", email: "pweiss@ci.oceanside.ca.us" }
    contacts << { first_name: "Andrew", last_name: "Weissman", title: "Mayor", heal_city: "Culver City, CA", organization: "Culver City", email: "andrew.weissman@culvercity.org" }
    contacts << { first_name: "Ric", last_name: "Welch", title: "Council Member", heal_city: "Eastvale, CA", organization: "Eastvale", email: "rwelch@eastvaleca.gov" }
    contacts << { first_name: "Herb", last_name: "Wesson", title: "Council Member - District 10", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.wesson@lacity.org" }
    contacts << { first_name: "Jennifer", last_name: "West", title: "Council Member", heal_city: "Emeryville, CA", organization: "Emeryville", email: "emeryvillewest@gmail.com" }
    contacts << { first_name: "Patrick", last_name: "West", title: "City Manager", heal_city: "Long Beach, CA", organization: "Long Beach", email: "patrick.west@longbeach.gov" }
    contacts << { first_name: "Fred", last_name: "West", title: "Mayor", heal_city: "Wasco, CA", organization: "Wasco", email: "durodriguez@ci.wasco.ca.us" }
    contacts << { first_name: "Carl", last_name: "Westerhoff", title: "Council Member", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "carlwest@roadrunner.com" }
    contacts << { first_name: "Mark", last_name: "Wheetley", title: "Vice Mayor", heal_city: "Arcata, CA", organization: "Arcata", email: "mwheetley@cityofarcata.org" }
    contacts << { first_name: "Margaret", last_name: "Whelan", title: "Personnel Director", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "maggie.whelan@lacity.org" }
    contacts << { first_name: "Patty", last_name: "Whitney", title: "Personnel Director", heal_city: "Blythe, CA", organization: "Blythe", email: "pwhitney@cityofblythe.ca.gov" }
    contacts << { first_name: "Dennis", last_name: "Wilberg", title: "City Manager", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "dwilberg@cityofmissionviejo.org" }
    contacts << { first_name: "David", last_name: "Wilbrecht", title: "Town Manager", heal_city: "Mammoth Lakes, CA", organization: "Mammoth Lakes", email: "dwilbrecht@ci.mammoth-lakes.ca.us" }
    contacts << { first_name: "Doug", last_name: "Wilcox", title: "Mayor Pro Tem", heal_city: "Kerman, CA", organization: "Kerman", email: "mreyes@cityofkerman.org" }
    contacts << { first_name: "Joanne", last_name: "Wile", title: "Vice Mayor", heal_city: "Albany, CA", organization: "Albany", email: "cityhall@albanyca.org" }
    contacts << { first_name: "Richard", last_name: "Wilkinson", title: "City Manager", heal_city: "Lindsay, CA", organization: "Lindsay", email: "rwilkinson@lindsay.ca.us" }
    contacts << { first_name: "Elaine", last_name: "Winer", title: "Personnel Director", heal_city: "Torrance, CA", organization: "Torrance", email: "ewiner@torranceca.gov" }
    contacts << { first_name: "Chuck", last_name: "Winn", title: "Vice Mayor", heal_city: "Ripon, CA", organization: "Ripon", email: "jhall@cityofripon.org" }
    contacts << { first_name: "Ashlee", last_name: "Winslow", title: "Community Services Coordinator", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "awinslow@cityofkingsburg-ca.gov" }
    contacts << { first_name: "Rob", last_name: "Wishner", title: "City Manager", heal_city: "Walnut, CA", organization: "Walnut", email: "rwishner@ci.walnut.ca.us" }
    contacts << { first_name: "David", last_name: "Witt", title: "City Manager", heal_city: "La Mesa, CA", organization: "La Mesa", email: "dwitt@ci.la-mesa.ca.us" }
    contacts << { first_name: "Gilbert", last_name: "Wong", title: "Vice Mayor", heal_city: "Cupertino, CA", organization: "Cupertino", email: "gwong@cupertino.org;gilbertswong@gmail.com" }
    contacts << { first_name: "Anthony", last_name: "Wong", title: "Council Member", heal_city: "Monterey Park, CA", organization: "Monterey Park", email: "awong@montereypark.ca.gov;anthonywong8@aol.com" }
    contacts << { first_name: "Jim", last_name: "Wood", title: "Vice Mayor", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "jwood@ci.healdsburg.ca.us" }
    contacts << { first_name: "Roderick", last_name: "Wood", title: "Interim City Manager", heal_city: "Indian Wells, CA", organization: "Indian Wells", email: "rwood@indianwells.com" }
    contacts << { first_name: "Rick", last_name: "Wood", title: "Mayor Pro Tem", heal_city: "Mammoth Lakes, CA", organization: "Mammoth Lakes", email: "jgray@ci.mammoth-lakes.ca.us" }
    contacts << { first_name: "David", last_name: "Woods", title: "Vice Mayor", heal_city: "East Palo Alto, CA", organization: "East Palo Alto", email: "davidwoods01@yahoo.com" }
    contacts << { first_name: "Robert", last_name: "Woolley", title: "City Manager", heal_city: "Clovis, CA", organization: "Clovis", email: "robw@cityofclovis.com" }
    contacts << { first_name: "William", last_name: "Workman", title: "City Manager", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "bill.workman@redondo.org" }
    contacts << { first_name: "Kelsey", last_name: "Worthy", title: "Assistant City Manager", heal_city: "San Pablo, CA", organization: "San Pablo", email: "kelseyw@sanpabloca.gov" }
    contacts << { first_name: "Christine", last_name: "Wozniak", title: "Mayor", heal_city: "Belmont, CA", organization: "Belmont", email: "cwozniak@belmont.gov" }
    contacts << { first_name: "Gordon", last_name: "Wozniak", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "gwozniak@cityofberkeley.info" }
    contacts << { first_name: "Philip", last_name: "Wright", title: "Administrative Services Director", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "hr@cityofwestsacramento.org" }
    contacts << { first_name: "Stephen", last_name: "Wright", title: "City Manager", heal_city: "Wheatland, CA", organization: "Wheatland", email: "swright@wheatland.ca.gov" }
    contacts << { first_name: "Jermaine", last_name: "Wright Sr.", title: "Council Member", heal_city: "Adelanto, CA", organization: "Adelanto", email: "jwright@ci.adelanto.ca.us" }
    contacts << { first_name: "John", last_name: "Wuo", title: "Council Member", heal_city: "Arcadia, CA", organization: "Arcadia", email: "mbuttice@ci.arcadia.ca.us" }
    contacts << { first_name: "Gary", last_name: "Wysocky", title: "Council Member", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "gwysocky@srcity.org" }
    contacts << { first_name: "Blong", last_name: "Xiong", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "blong.xiong@fresno.gov" }
    contacts << { first_name: "Gary", last_name: "Yamauchi", title: "Council Member", heal_city: "Alhambra, CA", organization: "Alhambra", email: "luwan@cityofalhambra.org" }
    contacts << { first_name: "Raul Mark", last_name: "Yarbrough", title: "Council Member", heal_city: "Perris, CA", organization: "Perris", email: "myarbrough@cityofperris.org" }
    contacts << { first_name: "Anthony", last_name: "Ybarra", title: "City Manager", heal_city: "South El Monte, CA", organization: "South El Monte", email: "tybarra@soelmonte.org" }
    contacts << { first_name: "Michael", last_name: "Ybarra", title: "Council Member", heal_city: "Vernon, CA", organization: "Vernon", email: "kenomoto@ci.vernon.ca.us" }
    contacts << { first_name: "Nona", last_name: "Young", title: "Deputy Director/Human Resources", heal_city: "Simi Valley, CA", organization: "Simi Valley", email: "nyoung@simivalley.org" }
    contacts << { first_name: "Doug", last_name: "Yount", title: "Interim City Mgr./Dev. Services Dir.", heal_city: "Marina, CA", organization: "Marina", email: "dyount@ci.marina.ca.us" }
    contacts << { first_name: "Robert", last_name: "Youssef", title: "Mayor", heal_city: "Hemet, CA", organization: "Hemet", email: "ryoussef@cityofhemet.org" }
    contacts << { first_name: "Irma", last_name: "Youssefieh", title: "Personnel Director", heal_city: "Downey, CA", organization: "Downey", email: "iyoussefieh@downeyca.org" }
    contacts << { first_name: "Tami", last_name: "Yuki", title: "Personnel Manager", heal_city: "San Bruno, CA", organization: "San Bruno", email: "tyuki@sanbruno.ca.gov" }
    contacts << { first_name: "Vincent", last_name: "Yzaguirre", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "vyzaguirre@ci.colton.ca.us" }
    contacts << { first_name: "Sarah", last_name: "Zamora", title: "Mayor", heal_city: "Colton, CA", organization: "Colton", email: "szamora@ci.colton.ca.us" }
    contacts << { first_name: "Chris", last_name: "Zapata", title: "City Manager", heal_city: "San Leandro, CA", organization: "San Leandro", email: "czapata@sanleandro.org" }
    contacts << { first_name: "Joe", last_name: "Zavala", title: "Council Member", heal_city: "Huron, CA", organization: "Huron", email: "admasst@cityofhuron.com" }
    contacts << { first_name: "Frank", last_name: "Zerunyan", title: "Mayor", heal_city: "Rolling Hills Estates, CA", organization: "Rolling Hills Estates", email: "frankz@ci.rolling-hills-estates.ca.us" }
    contacts << { first_name: "Nicole", last_name: "Zieba", title: "City Manager", heal_city: "Reedley, CA", organization: "Reedley", email: "nicole.zieba@reedley.ca.gov" }
    contacts << { first_name: "Dennis", last_name: "Zine", title: "Council Member - District 3", heal_city: "Los Angeles, CA", organization: "Los Angeles", email: "councilmember.zine@lacity.org" }
    contacts << { first_name: "Steve", last_name: "Zuckerman", title: "Council Member", heal_city: "Rolling Hills Estates, CA", organization: "Rolling Hills Estates", email: "stevez@ci.rolling-hills-estates.ca.us" }

    set_to_inactive(contacts)

  end

  desc "upload new contacts"
  task :upload_new_contacts, [:ignore_existing] => :environment do |t, args|
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    contacts = []

    contacts << { first_name: "Lance", last_name: "Walker", title: "Council Member", heal_city: "Greenfield, CA", organization: "Greenfield", email: "6strngwlkr@sbcglobal.net" }
    contacts << { first_name: "Alicia", last_name: "Aguirre", title: "Mayor", heal_city: "Redwood City, CA", organization: "Redwood City", email: "aaguirre@redwoodcity.org" }
    contacts << { first_name: "Amy", last_name: "Ahanotu", title: "Council Member", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "aahanotu@rpcity.org" }
    contacts << { first_name: "Anamarie", last_name: "Avila Farias", title: "Council Member", heal_city: "Martinez, CA", organization: "Martinez", email: "aavilafarias@cityofmartinez.org" }
    contacts << { first_name: "Amelia", last_name: "Ayala", title: "Human Resources Director", heal_city: "El Monte, CA", organization: "El Monte", email: "aayala@ci.el-monte.ca.us" }
    contacts << { first_name: "Art", last_name: "Bennett", title: "Council Member", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "abennett@chinohills.org" }
    contacts << { first_name: "Art", last_name: "Brown", title: "Council Member", heal_city: "Buena Park, CA", organization: "Buena Park", email: "abrown@buenapark.com" }
    contacts << { first_name: "Beth", last_name: "Swift", title: "Mayor", heal_city: "Buena Park, CA", organization: "Buena Park", email: "abrown@buenapark.com" }
    contacts << { first_name: "Rex", last_name: "Parris", title: "Mayor", heal_city: "Lancaster, CA", organization: "Lancaster", email: "adavis@cityoflancasterca.org" }
    contacts << { first_name: "Hilda", last_name: "Plasencia", title: "Mayor Pro Tem", heal_city: "Huron, CA", organization: "Huron", email: "admasst@cityofhuron.com" }
    contacts << { first_name: "Jaime", last_name: "Fontes", title: "City Manager", heal_city: "Santa Paula, CA", organization: "Santa Paula", email: "Adminis@ci.santa-paula.ca.us" }
    contacts << { first_name: "Angie", last_name: "Reyes English", title: "Mayor Pro Tem", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "aenglish@cityofhawthorne.org" }
    contacts << { first_name: "Annette", last_name: "Henckel", title: "HR & Risk Mgmt Director", heal_city: "Fontana, CA", organization: "Fontana", email: "ahenckel@fontana.org" }
    contacts << { first_name: "Ann", last_name: "Keighran", title: "Mayor", heal_city: "Burlingame, CA", organization: "Burlingame", email: "aKeighran@burlingame.org" }
    contacts << { first_name: "Al", last_name: "Mendall", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "al.mendall@hayward-ca.gov" }
    contacts << { first_name: "Alfred", last_name: "Clark", title: "Council Member", heal_city: "Carpinteria, CA", organization: "Carpinteria", email: "alfred.clark@aig.com" }
    contacts << { first_name: "Antonio", last_name: "Lopez", title: "Mayor", heal_city: "San Fernando, CA", organization: "San Fernando", email: "alopez@sfcity.org" }
    contacts << { first_name: "Ann", last_name: "Morrison", title: "Council Member", heal_city: "Larkspur, CA", organization: "Larkspur", email: "amorrison@cityoflarkspur.org" }
    contacts << { first_name: "Ana-Maria", last_name: "Quintana", title: "Council Member", heal_city: "Bell, CA", organization: "Bell", email: "amquintana@cityofbell.org" }
    contacts << { first_name: "Alan", last_name: "Nakanishi", title: "Mayor", heal_city: "Lodi, CA", organization: "Lodi", email: "anakanishi@lodi.gov" }
    contacts << { first_name: "Andrea", last_name: "Cutler", title: "Human Resources Manager", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "andreacutler@santafesprings.org" }
    contacts << { first_name: "Raymond", last_name: "Buenaventura", title: "Mayor", heal_city: "Daly City, CA", organization: "Daly City", email: "apadilla@dalycity.org" }
    contacts << { first_name: "Alice", last_name: "Patino", title: "Mayor", heal_city: "Santa Maria, CA", organization: "Santa Maria", email: "apatino@ci.santa-maria.ca.us" }
    contacts << { first_name: "Adam", last_name: "Politzer", title: "City Manager", heal_city: "Sausalito, CA", organization: "Sausalito", email: "apolitzer@ci.sausalito.ca.us" }
    contacts << { first_name: "Arlene", last_name: "Balmadrid", title: "Human Resources Director", heal_city: "Carpinteria, CA", organization: "Carpinteria", email: "arleneb@ci.carpinteria.ca.us" }
    contacts << { first_name: "Newell", last_name: "Arnerich", title: "Mayor", heal_city: "Danville, CA", organization: "Danville", email: "arnerich@danville.ca.gov" }
    contacts << { first_name: "Alvin", last_name: "Royse", title: "Council Member", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "aroyse@hillsborough.net" }
    contacts << { first_name: "Adam", last_name: "Rush", title: "Council Member", heal_city: "Eastvale, CA", organization: "Eastvale", email: "arush@eastvaleca.gov" }
    contacts << { first_name: "Ali", last_name: "Saleh", title: "Mayor", heal_city: "Bell, CA", organization: "Bell", email: "asaleh@cityofbell.org" }
    contacts << { first_name: "Ann", last_name: "Schwab", title: "Council Member", heal_city: "Chico, CA", organization: "Chico", email: "aschwab@ci.chico.ca.us" }
    contacts << { first_name: "Alan", last_name: "Schwartzman", title: "Council Member", heal_city: "Benicia, CA", organization: "Benicia", email: "aschwartzman@ci.benicia.ca.us" }
    contacts << { first_name: "Angelique", last_name: "Ashby", title: "Vice Mayor", heal_city: "Sacramento, CA", organization: "Sacramento", email: "ashby@cityofsacramento.org" }
    contacts << { first_name: "Alejandra", last_name: "Sotelo-Solis", title: "Council Member", heal_city: "National City, CA", organization: "National City", email: "asotelo-solis@nationalcityca.gov" }
    contacts << { first_name: "Jim", last_name: "Avalos", title: "Council Member", heal_city: "Selma, CA", organization: "Selma", email: "avalos.jim@gmail.com" }
    contacts << { first_name: "Alex", last_name: "Vargas", title: "Council Member", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "avargas@cityofhawthorne.org" }
    contacts << { first_name: "Melissa", last_name: "Whitten", title: "City Manager", heal_city: "Avenal, CA", organization: "Avenal", email: "avenalcm@cityofavenal.com" }
    contacts << { first_name: "Allen", last_name: "Warren", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "awarren@cityofsacramento.org" }
    contacts << { first_name: "Acquanetta", last_name: "Warren", title: "Mayor", heal_city: "Fontana, CA", organization: "Fontana", email: "awarren@fontana.org" }
    contacts << { first_name: "Art", last_name: "Welch", title: "Council Member", heal_city: "Banning, CA", organization: "Banning", email: "awelch@dc.rr.com;" }
    contacts << { first_name: "Ben", last_name: "Creighton", title: "Council Member", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "b.creighton@me.com" }
    contacts << { first_name: "Bill", last_name: "Aguirre", title: "Community Service Director", heal_city: "La Verne, CA", organization: "La Verne", email: "baguirre@ci.la-verne.ca.us" }
    contacts << { first_name: "Bob", last_name: "Baker", title: "Mayor", heal_city: "San Clemente, CA", organization: "San Clemente", email: "bakerb@san-clemente.org" }
    contacts << { first_name: "Brandt", last_name: "Andersson", title: "Council Member", heal_city: "Lafayette, CA", organization: "Lafayette", email: "BAndersson@lovelafayette.org; brandtand@aol.com" }
    contacts << { first_name: "Barbara", last_name: "Halliday", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "barbara.halliday@hayward-ca.gov" }
    contacts << { first_name: "Bradley", last_name: "Stein", title: "Mayor", heal_city: "Carpinteria, CA", organization: "Carpinteria", email: "bardestein@hotmail.com" }
    contacts << { first_name: "Belia", last_name: "Ramos Bennett", title: "Council Member", heal_city: "American Canyon, CA", organization: "American Canyon", email: "bbennett@cityofamericancanyon.org" }
    contacts << { first_name: "Bruce", last_name: "Blayney", title: "Mayor", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "bblayney@kingsburgins.com" }
    contacts << { first_name: "Barry", last_name: "Bruce", title: "Council Member", heal_city: "Hawaiian Gardens, CA", organization: "Hawaiian Gardens", email: "bbruce@hgcity.org" }
    contacts << { first_name: "Barry", last_name: "Chang", title: "Council Member", heal_city: "Cupertino, CA", organization: "Cupertino", email: "bchang@cupertino.org" }
    contacts << { first_name: "Bill", last_name: "Clarkson", title: "Mayor", heal_city: "San Ramon, CA", organization: "San Ramon", email: "bclarkson@sanramon.ca.gov" }
    contacts << { first_name: "Betina", last_name: "McCoy", title: "Personnel Manager", heal_city: "Ceres, CA", organization: "Ceres", email: "betina.mccoy@ci.ceres.ca.us" }
    contacts << { first_name: "Steve", last_name: "Hwangbo", title: "Mayor", heal_city: "La Palma, CA", organization: "La Palma", email: "betterlapalma@gmail.com" }
    contacts << { first_name: "Brian", last_name: "Fisk", title: "Community Services Dir.", heal_city: "Irvine, CA", organization: "Irvine", email: "bfisk@cityofirvine.org" }
    contacts << { first_name: "Berwin", last_name: "Hanna", title: "Mayor Pro Tem", heal_city: "Norco, CA", organization: "Norco", email: "bhanna@ci.norco.ca.us" }
    contacts << { first_name: "Bill", last_name: "Harrison", title: "Mayor", heal_city: "Fremont, CA", organization: "Fremont", email: "bharrison@fremont.gov" }
    contacts << { first_name: "Bill", last_name: "Holland", title: "Mayor", heal_city: "Hesperia, CA", organization: "Hesperia", email: "bholland@cityofhesperia.us" }
    contacts << { first_name: "Penny", last_name: "Lilburn", title: "Mayor Pro Tem", heal_city: "Highland, CA", organization: "Highland", email: "bhughes@cityofhighland.org" }
    contacts << { first_name: "John", last_name: "Timmer", title: "Council Member", heal_city: "Highland, CA", organization: "Highland", email: "bhughes@cityofhighland.org" }
    contacts << { first_name: "William", last_name: "Lindsay", title: "City Manager", heal_city: "Richmond, CA", organization: "Richmond", email: "bill_lindsay@ci.richmond.ca.us" }
    contacts << { first_name: "Bill", last_name: "Kristoff", title: "Mayor Pro Tem", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "billk@cityofwestsacramento.org" }
    contacts << { first_name: "Blair", last_name: "King", title: "City Manager", heal_city: "Coronado, CA", organization: "Coronado", email: "bking@lcoronado.ca.us" }
    contacts << { first_name: "Benny", last_name: "Lee", title: "Council Member", heal_city: "San Leandro, CA", organization: "San Leandro", email: "blee@sanleandro.org" }
    contacts << { first_name: "Bill", last_name: "Maertz", title: "Community Services Director", heal_city: "Santee, CA", organization: "Santee", email: "bmaertz@ci.santee.ca.us" }
    contacts << { first_name: "Robert", last_name: "McCaskill", title: "Council Member", heal_city: "Belvedere, CA", organization: "Belvedere", email: "bmccaskill@cityofbelvedere.org" }
    contacts << { first_name: "Bob", last_name: "Henderson", title: "Mayor Pro Tem", heal_city: "Whittier, CA", organization: "Whittier", email: "bob@hendersonsinsure.com" }
    contacts << { first_name: "Bob", last_name: "Lingl", title: "Council Member", heal_city: "Lompoc, CA", organization: "Lompoc", email: "boblingl@aol.com" }
    contacts << { first_name: "Bob", last_name: "Whalen", title: "Council Member", heal_city: "Clovis, CA", organization: "Clovis", email: "bobw@ci.clovis.ca.us" }
    contacts << { first_name: "Bob", last_name: "Orach", title: "Council Member", heal_city: "Santa Maria, CA", organization: "Santa Maria", email: "borach@ci.santa-maria.ca.us" }
    contacts << { first_name: "Barbara", last_name: "Payne", title: "Council Member", heal_city: "Galt, CA", organization: "Galt", email: "bpayne@ci.galt.ca.us" }
    contacts << { first_name: "Bret", last_name: "Plumlee", title: "City Manager", heal_city: "La Puente, CA", organization: "La Puente", email: "bplumlee@lapuente.org" }
    contacts << { first_name: "Bob", last_name: "Ravasio", title: "Council Member", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "bravasio@ci.corte-madera.ca.us" }
    contacts << { first_name: "Bret", last_name: "Durossette", title: "Council Member", heal_city: "Ceres, CA", organization: "Ceres", email: "bret.durossette@ci.ceres.ca.us" }
    contacts << { first_name: "Bob", last_name: "Rose", title: "Community Services Director", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "brose@diamondbarca.gov" }
    contacts << { first_name: "Tim", last_name: "Brown", title: "Mayor Pro Tem", heal_city: "San Clemente, CA", organization: "San Clemente", email: "brownt@san-clemente.org" }
    contacts << { first_name: "Bob", last_name: "Russi", title: "City Manager", heal_city: "La Verne, CA", organization: "La Verne", email: "brussi@ci.la-verne.ca.us" }
    contacts << { first_name: "Barbara", last_name: "Salvini", title: "Personnel Services Manager", heal_city: "Laguna Beach, CA", organization: "Laguna Beach", email: "bsalvini@lagunabeachcity.net" }
    contacts << { first_name: "Bob", last_name: "Sampayan", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "bsampayan@ci.vallejo.ca.us" }
    contacts << { first_name: "Becky", last_name: "Shevlin", title: "Council Member", heal_city: "Monrovia, CA", organization: "Monrovia", email: "bshevlin@ci.monrovia.ca.us" }
    contacts << { first_name: "Bill", last_name: "Smith", title: "Community Services Director", heal_city: "Colton, CA", organization: "Colton", email: "bsmith@ci.colton.ca.us" }
    contacts << { first_name: "Barbara", last_name: "Stanton", title: "Council Member", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "bstanton@applevalley.org; jheim@applevalley.org" }
    contacts << { first_name: "Brian", last_name: "Sturtevant", title: "Council Member", heal_city: "Atascadero, CA", organization: "Atascadero", email: "bsturtevant@atascadero.org" }
    contacts << { first_name: "Robert", last_name: "Taylor", title: "Mayor", heal_city: "Brentwood, CA", organization: "Brentwood", email: "btaylor@brentwoodca.gov" }
    contacts << { first_name: "Frank", last_name: "Hall", title: "Council Member", heal_city: "Gridley, CA", organization: "Gridley", email: "bulldogs_67@hotmail.com" }
    contacts << { first_name: "Bob", last_name: "Woerner", title: "Council Member", heal_city: "Livermore, CA", organization: "Livermore", email: "bwoerner@cityoflivermore.net" }
    contacts << { first_name: "Carlene", last_name: "McCart", title: "Community Services Director", heal_city: "San Rafael, CA", organization: "San Rafael", email: "carlene.mccart@cityofsanrafael.org" }
    contacts << { first_name: "Carol", last_name: "Atwood", title: "Interim Human Resources Director", heal_city: "Cupertino, CA", organization: "Cupertino", email: "carola@cupertino.org" }
    contacts << { first_name: "Carol", last_name: "Giovanatto", title: "City Manager", heal_city: "Sonoma, CA", organization: "Sonoma", email: "carolg@sonomacity.org" }
    contacts << { first_name: "Cat", last_name: "Tucker", title: "Council Member", heal_city: "Gilroy, CA", organization: "Gilroy", email: "cat.tucker@cityofgilroy.org" }
    contacts << { first_name: "Cathy", last_name: "Warner", title: "Council Member", heal_city: "Whittier, CA", organization: "Whittier", email: "cathywarner@earthlink.net" }
    contacts << { first_name: "Catherine", last_name: "Moy", title: "Council Member", heal_city: "Fairfield, CA", organization: "Fairfield", email: "catmoy@ymail.com" }
    contacts << { first_name: "Paul", last_name: "Cayler", title: "Interim City Manager", heal_city: "Cloverdale, CA", organization: "Cloverdale", email: "caylerp@willitscity.com" }
    contacts << { first_name: "Courtney", last_name: "Barrett", title: "Personnel Manager", heal_city: "Coronado, CA", organization: "Coronado", email: "cbarrett@coronado.ca.us" }
    contacts << { first_name: "Charles", last_name: "Bronitsky", title: "Vice Mayor", heal_city: "Foster City, CA", organization: "Foster City", email: "cbronitsky@fostercity.org" }
    contacts << { first_name: "Jim", last_name: "Gazeley", title: "Council Member", heal_city: "Lomita, CA", organization: "Lomita", email: "cc.gazeley@lomitacity.com" }
    contacts << { first_name: "Ben", last_name: "Traina", title: "Council Member", heal_city: "Lomita, CA", organization: "Lomita", email: "cc.traina@lomitacity.com" }
    contacts << { first_name: "Catherine", last_name: "Carlton", title: "Council Member", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "cc@catnbob.com" }
    contacts << { first_name: "Curt", last_name: "Campion", title: "Council Member", heal_city: "Galt, CA", organization: "Galt", email: "ccampion@ci.galt.ca.us" }
    contacts << { first_name: "Chris", last_name: "Canning", title: "Mayor", heal_city: "Calistoga, CA", organization: "Calistoga", email: "ccanning@ci.calistoga.ca.us" }
    contacts << { first_name: "Robert", last_name: "Joe", title: "Council Member", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "cco@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Marina", last_name: "Khubesrian", title: "Mayor Pro Tem", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "cco@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Clarke", last_name: "Conway", title: "Mayor Pro Tem", heal_city: "Brisbane, CA", organization: "Brisbane", email: "cconway@ci.brisbane.ca.us" }
    contacts << { first_name: "Christina", last_name: "Cota", title: "City Manager", heal_city: "La Mirada, CA", organization: "La Mirada", email: "ccota@cityoflamirada.org" }
    contacts << { first_name: "Chuck", last_name: "Dantuono", title: "Director of Administrative Services", heal_city: "Highland, CA", organization: "Highland", email: "cdantuono@cityofhighland.org" }
    contacts << { first_name: "Cora", last_name: "Dino", title: "HR Director", heal_city: "Belmont, CA", organization: "Belmont", email: "cdino@belmont.gov" }
    contacts << { first_name: "Cherise", last_name: "Brandell", title: "Community Services Director", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "cebrandell@menlopark.org" }
    contacts << { first_name: "Elizabeth", last_name: "Lewis", title: "Mayor", heal_city: "Atherton, CA", organization: "Atherton", email: "cemarsala@yahoo.com" }
    contacts << { first_name: "Charles", last_name: "Gee", title: "Mayor", heal_city: "Orland, CA", organization: "Orland", email: "cgee@cityoforland.com" }
    contacts << { first_name: "Cathy", last_name: "Hanson", title: "Director of Human Resources", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "chanson@citymb.info" }
    contacts << { first_name: "Cheryl", last_name: "Heitmann", title: "Deputy Mayor", heal_city: "Ventura, CA", organization: "Ventura", email: "cheitmann@cityofventura.net" }
    contacts << { first_name: "James", last_name: "Butts", title: "Mayor", heal_city: "Inglewood, CA", organization: "Inglewood", email: "cherbert@cityofinglewood.org" }
    contacts << { first_name: "Carol", last_name: "Herrera", title: "Council Member", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "cherrera@diamondbarca.gov" }
    contacts << { first_name: "Chet", last_name: "Reilly", title: "Council Member", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "chetreilly1@gmail.com" }
    contacts << { first_name: "Clay", last_name: "Holstine", title: "City Manager", heal_city: "Brisbane, CA", organization: "Brisbane", email: "cholstine@ci.brisbane.ca.us" }
    contacts << { first_name: "Chris", last_name: "Emeterio", title: "Community Services Director", heal_city: "Brea, CA", organization: "Brea", email: "chrise@cityofbrea.net" }
    contacts << { first_name: "Chris", last_name: "Ledesma", title: "Council Member", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "chrisl@cityofwestsacramento.org" }
    contacts << { first_name: "Curtis", last_name: "Hunt", title: "Council Member", heal_city: "Vacaville, CA", organization: "Vacaville", email: "chunt48@mac.com" }
    contacts << { first_name: "Carl", last_name: "Jacobson", title: "Mayor", heal_city: "El Segundo, CA", organization: "El Segundo", email: "cjacobson@elsegundo.org" }
    contacts << { first_name: "Chris", last_name: "Jeffers", title: "City Manager", heal_city: "Glendora, CA", organization: "Glendora", email: "cjeffers@ci.glendora.ca.us" }
    contacts << { first_name: "Cathy", last_name: "Lanning", title: "Human Resources Director", heal_city: "Sonoma, CA", organization: "Sonoma", email: "clanning@sonomacity.org" }
    contacts << { first_name: "Chris", last_name: "Mac Arthur", title: "Council Member", heal_city: "Riverside, CA", organization: "Riverside", email: "cmacarthur@riversideca.cov" }
    contacts << { first_name: "Cynthia", last_name: "Mathews", title: "Council Member", heal_city: "Santa Cruz, CA", organization: "Santa Cruz", email: "cmathews@ci.santa-cruz.ca.us" }
    contacts << { first_name: "Claire", last_name: "McAuliffe", title: "Council Member", heal_city: "Belvedere, CA", organization: "Belvedere", email: "cmcauliffe@cityofbelvedere.org" }
    contacts << { first_name: "Carl", last_name: "Morehouse", title: "Council Member", heal_city: "Ventura, CA", organization: "Ventura", email: "cmorehouse@ci.ventura.ca.us" }
    contacts << { first_name: "Susie", last_name: "Baugh", title: "Council Member", heal_city: "Anderson, CA", organization: "Anderson", email: "cmsuz@sbcglobal.net" }
    contacts << { first_name: "Cathy", last_name: "Murillo", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "cmurillo@santabarbaraca.gov" }
    contacts << { first_name: "Elaine", last_name: "Morris", title: "Mayor", heal_city: "Angels Camp, CA", organization: "Angels Camp", email: "coa@angelscamp.gov" }
    contacts << { first_name: "Karen", last_name: "Stepper", title: "Council Member", heal_city: "Danville, CA", organization: "Danville", email: "coachstepper@yahoo.com; kstepper@danville.ca.gov" }
    contacts << { first_name: "Carla", last_name: "Condon", title: "Council Member", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "condon94925@yahoo.com" }
    contacts << { first_name: "Clayton", last_name: "Phillips", title: "City Manager", heal_city: "Escondido, CA", organization: "Escondido", email: "cphillips@escondido.org" }
    contacts << { first_name: "Cathy", last_name: "Prout", title: "Council member", heal_city: "Shafter, CA", organization: "Shafter", email: "cprout@shafter.com" }
    contacts << { first_name: "Charles", last_name: "Rosales", title: "Council Member", heal_city: "La Verne, CA", organization: "La Verne", email: "crosales@ci.la-verne.ca.us" }
    contacts << { first_name: "Ellen", last_name: "Vollmert", title: "City Manager", heal_city: "La Palma, CA", organization: "La Palma", email: "crystalw@cityoflapalma.org" }
    contacts << { first_name: "Cathy", last_name: "Schlicht", title: "Council Member", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "cschlicht@cityofmissionviejo.org" }
    contacts << { first_name: "Christina", last_name: "Strawbridge", title: "Counci lMember", heal_city: "Benicia, CA", organization: "Benicia", email: "cstrawbridge@ci.benicia.ca.us" }
    contacts << { first_name: "Charleen", last_name: "Strock", title: "Town Clerk", heal_city: "Loomis, CA", organization: "Loomis", email: "cstrock@loomis.ca.gov" }
    contacts << { first_name: "Dave", last_name: "Wheeler", title: "Mayor Pro Tem", heal_city: "Loomis, CA", organization: "Loomis", email: "cstrock@loomis.ca.gov" }
    contacts << { first_name: "Casey", last_name: "Tanaka", title: "Mayor", heal_city: "Coronado, CA", organization: "Coronado", email: "ctanaka@coronado.ca.us" }
    contacts << { first_name: "Christi", last_name: "Tenter", title: "Human Resources Manager", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "ctenter@bakersfieldcity.us" }
    contacts << { first_name: "Chad", last_name: "Wanke", title: "Council Member", heal_city: "Placentia, CA", organization: "Placentia", email: "cwanke@placentia.org" }
    contacts << { first_name: "Christy", last_name: "Weir", title: "Council Member", heal_city: "Ventura, CA", organization: "Ventura", email: "cweir@ci.ventura.ca.us" }
    contacts << { first_name: "Cary", last_name: "Wiest", title: "Council Member", heal_city: "Atherton, CA", organization: "Atherton", email: "cwiest@ci.atherton.ca.us" }
    contacts << { first_name: "DeWayne", last_name: "Holmdahl", title: "Council Member", heal_city: "Lompoc, CA", organization: "Lompoc", email: "d_holmdahl@ci.lompoc.ca.us" }
    contacts << { first_name: "Dennis", last_name: "Alexander", title: "Council Member", heal_city: "Seaside, CA", organization: "Seaside", email: "dalexander@ci.seaside.ca.us" }
    contacts << { first_name: "Dan", last_name: "Holler", title: "City Administrator", heal_city: "Grass Valley, CA", organization: "Grass Valley", email: "danh@cityofgrassvalley.com" }
    contacts << { first_name: "Dan", last_name: "Martinez", title: "City Manager", heal_city: "Indio, CA", organization: "Indio", email: "danmartinez@indio.org" }
    contacts << { first_name: "Dan", last_name: "Romero", title: "Council Member", heal_city: "Hercules, CA", organization: "Hercules", email: "danromero@ci.hercules.ca.us" }
    contacts << { first_name: "Darrell", last_name: "Talbert", title: "Administrative Services Director", heal_city: "Corona, CA", organization: "Corona", email: "darrell.talbert@ci.corona.ca.us" }
    contacts << { first_name: "Denise", last_name: "Athas", title: "Council Member", heal_city: "Novato, CA", organization: "Novato", email: "dathas@ci.novato.ca.us" }
    contacts << { first_name: "Dave", last_name: "Atkinson", title: "Council Member", heal_city: "El Segundo, CA", organization: "El Segundo", email: "datkinson@elsegundo.org" }
    contacts << { first_name: "Dave", last_name: "Durflinger", title: "City Manager", heal_city: "Carpinteria, CA", organization: "Carpinteria", email: "daved@ci.carpinteria.ca.us" }
    contacts << { first_name: "David", last_name: "Glass", title: "Mayor", heal_city: "Petaluma, CA", organization: "Petaluma", email: "daveglass@comcast.net" }
    contacts << { first_name: "Dave", last_name: "Turner", title: "Mayor", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "davet@flobeds.com" }
    contacts << { first_name: "David", last_name: "Ready", title: "City Manager", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "david.ready@palmspringsca.gov" }
    contacts << { first_name: "David", last_name: "Zehnder", title: "Recreation & Comm Svcs Director", heal_city: "Newark, CA", organization: "Newark", email: "david.zehnder@newark.org" }
    contacts << { first_name: "David", last_name: "Cardenas", title: "Mayor", heal_city: "Fowler, CA", organization: "Fowler", email: "davidtcardenas@yahoo.com" }
    contacts << { first_name: "Daniel", last_name: "Bartelson", title: "Asst. to the City Manager/HR Director", heal_city: "Lawndale, CA", organization: "Lawndale", email: "dbartelson@lawndalecity.org" }
    contacts << { first_name: "Doug", last_name: "Tucker", title: "Council Member", heal_city: "Fillmore, CA", organization: "Fillmore", email: "dbeauduy@ci.fillmore.ca.us" }
    contacts << { first_name: "David", last_name: "Benavides", title: "Council Member", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "dbenavides@santa-ana.org" }
    contacts << { first_name: "David", last_name: "Biggs", title: "City Manager", heal_city: "Carson, CA", organization: "Carson", email: "dbiggs@carson.ca.us" }
    contacts << { first_name: "David", last_name: "Bracken", title: "Town Manager", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "dbracken@ci.corte-madera.ca.us" }
    contacts << { first_name: "Daryl", last_name: "Busch", title: "Mayor", heal_city: "Perris, CA", organization: "Perris", email: "dbusch@cityofperris.org" }
    contacts << { first_name: "Don", last_name: "Campbell", title: "Council Member", heal_city: "Brawley, CA", organization: "Brawley", email: "dcampbell@brawley-ca.gov" }
    contacts << { first_name: "Dan", last_name: "Carpenter", title: "Council Member", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "dcarpenter@slocity.org" }
    contacts << { first_name: "David", last_name: "Cogdill Jr.", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "dcogdill@modestogov.com" }
    contacts << { first_name: "Danette", last_name: "Demello", title: "Personnel Director", heal_city: "Arcata, CA", organization: "Arcata", email: "ddemello@cityofarcata.org" }
    contacts << { first_name: "Deirdre", last_name: "Dolan", title: "Human Resources Director", heal_city: "Burlingame, CA", organization: "Burlingame", email: "ddolan@burlingame.org" }
    contacts << { first_name: "Debbie", last_name: "Mills", title: "Human Resources Director", heal_city: "Long Beach, CA", organization: "Long Beach", email: "debbie.mills@longbeach.gov" }
    contacts << { first_name: "Deborah", last_name: "Franklin", title: "Mayor", heal_city: "Banning, CA", organization: "Banning", email: "debbiefranklin4u@hotmail.com" }
    contacts << { first_name: "Deborah", last_name: "Novelli", title: "Mayor Pro Tem", heal_city: "Patterson, CA", organization: "Patterson", email: "debnovelli@comcast.net" }
    contacts << { first_name: "David", last_name: "Bradshaw", title: "Council Member", heal_city: "Holtville, CA", organization: "Holtville", email: "DEBradshaw@IID.com" }
    contacts << { first_name: "Deirdre", last_name: "Bennett", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "deirdreonb@aol.com" }
    contacts << { first_name: "Diane", last_name: "Furst", title: "Mayor", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "delfurst@gmail.com" }
    contacts << { first_name: "Dominic", last_name: "Farinha", title: "Council Member", heal_city: "Patterson, CA", organization: "Patterson", email: "dfarinha@ci.patterson.ca.us" }
    contacts << { first_name: "Danny", last_name: "Fox", title: "Mayor", heal_city: "Escalon, CA", organization: "Escalon", email: "dfox@cityofescalon.org" }
    contacts << { first_name: "Dale", last_name: "Francisco", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "dfrancisco@santabarbaraca.gov" }
    contacts << { first_name: "Debora", last_name: "Fudge", title: "Vice Mayor", heal_city: "Windsor, CA", organization: "Windsor", email: "dfudge@townofwindsor.com" }
    contacts << { first_name: "Dennis", last_name: "Hoffman", title: "Vice Mayor", heal_city: "Orland, CA", organization: "Orland", email: "dghoffman@cityoforland.com" }
    contacts << { first_name: "Debbie", last_name: "Giordano", title: "Council Member", heal_city: "Milpitas, CA", organization: "Milpitas", email: "dgiordano@ci.milpitas.ca.gov" }
    contacts << { first_name: "Dave", last_name: "Grosch", title: "Council Member", heal_city: "Poway, CA", organization: "Poway", email: "dgrosch@poway.org" }
    contacts << { first_name: "Dennis", last_name: "Haworth", title: "Mayor", heal_city: "Chowchilla, CA", organization: "Chowchilla", email: "dhaworth@ci.chowchilla.ca.us" }
    contacts << { first_name: "Dan", last_name: "Hillmer", title: "Vice Mayor", heal_city: "Larkspur, CA", organization: "Larkspur", email: "dhillmer@aol.com" }
    contacts << { first_name: "Dave", last_name: "Hudson", title: "Mayor Pro Tem", heal_city: "San Ramon, CA", organization: "San Ramon", email: "dhudson@sanramon.ca.gov" }
    contacts << { first_name: "Diana", last_name: "Ruslin", title: "Mayor", heal_city: "Rocklin, CA", organization: "Rocklin", email: "diana.ruslin@rocklin.ca.us" }
    contacts << { first_name: "Dion ", last_name: "Bracco", title: "Council Member", heal_city: "Gilroy, CA", organization: "Gilroy", email: "dion.bracco@cityofgilroy.org" }
    contacts << { first_name: "Suja", last_name: "Lowenthal", title: "Council Member", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district2@longbeach.gov" }
    contacts << { first_name: "Al", last_name: "Austin", title: "Council Member", heal_city: "Long Beach, CA", organization: "Long Beach", email: "district8@longbeach.gov" }
    contacts << { first_name: "Danielle", last_name: "Jackson", title: "Mayor Pro Tem", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "djackson@ci.red-bluff.ca.us" }
    contacts << { first_name: "Don", last_name: "Kendrick", title: "Mayor", heal_city: "La Verne, CA", organization: "La Verne", email: "dkendrick@ci.la-verne.ca.us" }
    contacts << { first_name: "Dennis", last_name: "Kneier", title: "Council Member", heal_city: "San Marino, CA", organization: "San Marino", email: "dkneier@socal.rr.com" }
    contacts << { first_name: "Dan", last_name: "Koops", title: "Mayor", heal_city: "Bellflower, CA", organization: "Bellflower", email: "dkoops@bellflower.org" }
    contacts << { first_name: "Don", last_name: "Lane", title: "Council Member", heal_city: "Santa Cruz, CA", organization: "Santa Cruz", email: "dlane@ci.santa-cruz.ca.us" }
    contacts << { first_name: "Dominic", last_name: "Lazzaretto", title: "City Manager", heal_city: "Arcadia, CA", organization: "Arcadia", email: "dlazzaretto@ci.arcadia.ca.us" }
    contacts << { first_name: "David", last_name: "Lesser", title: "Mayor", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "dlesser@citymb.info" }
    contacts << { first_name: "David", last_name: "Lim", title: "Mayor", heal_city: "San Mateo, CA", organization: "San Mateo", email: "dlim@cityofsanmateo.org" }
    contacts << { first_name: "Donna", last_name: "Lind", title: "Council Member", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "dlindslind@earthlink.net" }
    contacts << { first_name: "Darren", last_name: "Madkin", title: "Deputy City Manager", heal_city: "Perris, CA", organization: "Perris", email: "dmadkin@cityofperris.org" }
    contacts << { first_name: "David", last_name: "Mickaelian", title: "Assistant City Manager", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "dmickaelian@ci.healdsburg.ca.us" }
    contacts << { first_name: "Darryl", last_name: "Moore", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "dmoore@cityofberkeley.info" }
    contacts << { first_name: "Debby", last_name: "Moorhead", title: "Council Member", heal_city: "Manteca, CA", organization: "Manteca", email: "dmoorhead@ci.manteca.ca.us" }
    contacts << { first_name: "Dennis", last_name: "Norton", title: "Council Member", heal_city: "Capitola, CA", organization: "Capitola", email: "dnortondesigns@msn.com" }
    contacts << { first_name: "Donald", last_name: "Biddle", title: "Vice Mayor", heal_city: "Dublin, CA", organization: "Dublin", email: "don.biddle@dublin.ca.gov" }
    contacts << { first_name: "Don", last_name: "Gage", title: "Mayor", heal_city: "Gilroy, CA", organization: "Gilroy", email: "don.gage@cityofgilroy.org" }
    contacts << { first_name: "Lori", last_name: "Donchak", title: "Council Member", heal_city: "San Clemente, CA", organization: "San Clemente", email: "donchakl@san-clemente.org" }
    contacts << { first_name: "Donna", last_name: "Peter", title: "Director of Personnel", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "donna.peter@santa-monica.org" }
    contacts << { first_name: "Tony", last_name: "Dossetti", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "dossettit@cityofmerced.org" }
    contacts << { first_name: "Denise", last_name: "Phoenix", title: "Human Resources Manager", heal_city: "Danville, CA", organization: "Danville", email: "dphoenix@danville.ca.gov" }
    contacts << { first_name: "Douglas", last_name: "Alessio", title: "Administrative Services Dir.", heal_city: "Livermore, CA", organization: "Livermore", email: "dralessio@cityoflivermore.net" }
    contacts << { first_name: "David", last_name: "Braunstein", title: "Council Member", heal_city: "Belmont, CA", organization: "Belmont", email: "draunstein@belmont.gov" }
    contacts << { first_name: "Donna", last_name: "Redman", title: "Council Member", heal_city: "La Verne, CA", organization: "La Verne", email: "dredman@ci.la-verne.ca.us" }
    contacts << { first_name: "David", last_name: "Reynolds", title: "Deputy City Manager/Community Srvcs Dir.", heal_city: "Laguna Hills, CA", organization: "Laguna Hills", email: "dreynolds@ci.laguna-hills.ca.us" }
    contacts << { first_name: "Danny", last_name: "Salinas", title: "Mayor Pro Tem", heal_city: "Lindsay, CA", organization: "Lindsay", email: "dsalinas@lindsay.ca.us" }
    contacts << { first_name: "Daniel", last_name: "Schwarz", title: "City Manager", heal_city: "Larkspur, CA", organization: "Larkspur", email: "dschwarz@cityoflarkspur.org" }
    contacts << { first_name: "David", last_name: "Shapiro", title: "Council Member", heal_city: "Calabasas, CA", organization: "Calabasas", email: "dshapiro012512@gmail.com" }
    contacts << { first_name: "Dan", last_name: "Singer", title: "City Manager", heal_city: "Goleta, CA", organization: "Goleta", email: "dsinger@cityofgoleta.org" }
    contacts << { first_name: "Donald", last_name: "Tatzin", title: "Coucil Member", heal_city: "Lafayette, CA", organization: "Lafayette", email: "dtatzin@lovelafayette.org" }
    contacts << { first_name: "Danielle", last_name: "Tellez", title: "Human Resources Div. Mgr.", heal_city: "Monrovia, CA", organization: "Monrovia", email: "dtellez@ci.monrovia.ca.us" }
    contacts << { first_name: "Donald", last_name: "Terry", title: "Council Member", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "dterry@cityofranchocordova.org" }
    contacts << { first_name: "David", last_name: "Tooley", title: "City Administrator", heal_city: "Madera, CA", organization: "Madera", email: "dtooley@cityofmadera.com" }
    contacts << { first_name: "David", last_name: "Toro", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "dtoro@ci.colton.ca.us" }
    contacts << { first_name: "Jerry", last_name: "Cano", title: "Council Member", heal_city: "National City, CA", organization: "National City", email: "dtrejo@nationalcityca.gov" }
    contacts << { first_name: "Dan", last_name: "Weakley", title: "Deputy Director/Human Resources", heal_city: "Novato, CA", organization: "Novato", email: "dweakley@novato.org" }
    contacts << { first_name: "Donnie", last_name: "Wharton", title: "Council Member", heal_city: "Brawley, CA", organization: "Brawley", email: "dwharton@brawley-ca.gov" }
    contacts << { first_name: "Donald", last_name: "White", title: "Assistant City Manager", heal_city: "Laguna Hills, CA", organization: "Laguna Hills", email: "dwhite@ci.laguna-hills.ca.us" }
    contacts << { first_name: "Dale", last_name: "Whitmore", title: "Council Member", heal_city: "Marysville, CA", organization: "Marysville", email: "dwhitmore@marysville.ca.us" }
    contacts << { first_name: "David", last_name: "Whittum", title: "Council Member", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "dwhittum@ci.sunnyvale.ca.us" }
    contacts << { first_name: "Dan", last_name: "Wolk", title: "Mayor Pro Tem", heal_city: "Davis, CA", organization: "Davis", email: "dwolk@cityofdavis.org" }
    contacts << { first_name: "Ed", last_name: "Alves", title: "Mayor Pro Tem", heal_city: "Escalon, CA", organization: "Escalon", email: "ealves@cityofescalon.org" }
    contacts << { first_name: "Laura", last_name: "Smith", title: "Mayor", heal_city: "Bishop, CA", organization: "Bishop", email: "eastsmith5@aol.com" }
    contacts << { first_name: "Elena", last_name: "Brokaw", title: "Parks, Rec., & Community Partnerships Dir.", heal_city: "Ventura, CA", organization: "Ventura", email: "ebrokaw@ci.ventura.ca.us" }
    contacts << { first_name: "Edgar", last_name: "Camargo", title: "Council Member", heal_city: "Adelanto, CA", organization: "Adelanto", email: "ecamargo@ci.adelanto.ca.us" }
    contacts << { first_name: "Erin", last_name: "Carlstrom", title: "Vice Mayor", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "ecarlstrom@srcity.org" }
    contacts << { first_name: "Edward", last_name: "Selich", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "edselich@adelphia.net" }
    contacts << { first_name: "Edward J.", last_name: "Spriggs", title: "Council Member", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "edspriggs4citycouncil.com" }
    contacts << { first_name: "Ed", last_name: "Gallo", title: "Council Member", heal_city: "Escondido, CA", organization: "Escondido", email: "egallo@ci.escondido.ca.us" }
    contacts << { first_name: "Ed", last_name: "Graham", title: "Mayor Pro Tem", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "egraham@chinohills.org" }
    contacts << { first_name: "Elbert", last_name: "Holman", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "elbert.holman@ci.stockton.ca.us" }
    contacts << { first_name: "Ella", last_name: "Zanowic", title: "Council Member", heal_city: "Calimesa, CA", organization: "Calimesa", email: "ellaz@aol.com" }
    contacts << { first_name: "Elliott", last_name: "Rothman", title: "Mayor", heal_city: "Pomona, CA", organization: "Pomona", email: "elliott_rothman@ci.pomona.ca.us" }
    contacts << { first_name: "Eric", last_name: "Lucan", title: "Mayor Pro Tem", heal_city: "Novato, CA", organization: "Novato", email: "elucan@novato.org" }
    contacts << { first_name: "Eddie", last_name: "Manfro", title: "City Manager", heal_city: "Westminster, CA", organization: "Westminster", email: "emanfro@ci.westminster.ca.us" }
    contacts << { first_name: "Ernesto", last_name: "Marquez", title: "City Administrator", heal_city: "Hawaiian Gardens, CA", organization: "Hawaiian Gardens", email: "emarquez@hgcity.org" }
    contacts << { first_name: "Ernesto", last_name: "Olivares", title: "Council Member", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "eolivares@ci.santa-rosa.ca.us" }
    contacts << { first_name: "Eli", last_name: "Ontiveros", title: "Mayor Pro Tem", heal_city: "Sanger, CA", organization: "Sanger", email: "eontiveros@ci.sanger.ca.us" }
    contacts << { first_name: "Eugene", last_name: "Palazzo", title: "City Manager", heal_city: "Crescent City, CA", organization: "Crescent City", email: "epalazzo@crescentcity.org" }
    contacts << { first_name: "Edward Palmer", last_name: "Palmer", title: "Council Member", heal_city: "Rialto, CA", organization: "Rialto", email: "epalmer@rialtoca.gov" }
    contacts << { first_name: "Eva", last_name: "Phelps", title: "Administrative Services Director", heal_city: "San Ramon, CA", organization: "San Ramon", email: "ephelps@sanramon.ca.gov" }
    contacts << { first_name: "Elito", last_name: "Santarina", title: "Council Member", heal_city: "Carson, CA", organization: "Carson", email: "esantarina@carson.ca.us" }
    contacts << { first_name: "Efrain", last_name: "Silva", title: "Council Member", heal_city: "El Centro, CA", organization: "El Centro", email: "esilva@ci.el-centro.ca.us" }
    contacts << { first_name: "Erick", last_name: "Stonebarger", title: "Council Member", heal_city: "Brentwood, CA", organization: "Brentwood", email: "estonebarger@brentwoodca.gov" }
    contacts << { first_name: "Esther", last_name: "Strong", title: "Administrative Analyst", heal_city: "Avenal, CA", organization: "Avenal", email: "estrong@cityofavenal.com" }
    contacts << { first_name: "Eugene", last_name: "Sun", title: "Council Member", heal_city: "San Marino, CA", organization: "San Marino", email: "esun@earthlink.net" }
    contacts << { first_name: "Eugene", last_name: "Montanez", title: "Council Member", heal_city: "Corona, CA", organization: "Corona", email: "eugene.montanez@ci.corona.ca.us" }
    contacts << { first_name: "Fernando", last_name: "Dutra", title: "Council Member", heal_city: "Whittier, CA", organization: "Whittier", email: "fdutrawcc@gmail.com" }
    contacts << { first_name: "Felipe", last_name: "Hernandez", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "felipe.hernandez@cityofwatsonville.org" }
    contacts << { first_name: "Fran", last_name: "Elm", title: "Human Resources Director", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "felm@srcity.org" }
    contacts << { first_name: "Fran", last_name: "Florez", title: "Council Member", heal_city: "Shafter, CA", organization: "Shafter", email: "fflorez@shafter.com" }
    contacts << { first_name: "Fred", last_name: "Gaines", title: "Mayor Pro Tem", heal_city: "Calabasas, CA", organization: "Calabasas", email: "fgaines@gaineslaw.com" }
    contacts << { first_name: "Margaret", last_name: "Finlay", title: "Mayor", heal_city: "Duarte, CA", organization: "Duarte", email: "finlaym@accessduarte.com" }
    contacts << { first_name: "Bill", last_name: "Kirby", title: "Council Member", heal_city: "Auburn, CA", organization: "Auburn", email: "flyingsurgeon1210@yahoo.com" }
    contacts << { first_name: "Frank", last_name: "Pietro", title: "Acting City Manager/Police Chief", heal_city: "Atwater, CA", organization: "Atwater", email: "fpietro@atwater.org" }
    contacts << { first_name: "Fred", last_name: "Ramirez", title: "City Planner", heal_city: "San Fernando, CA", organization: "San Fernando", email: "framirez@sfcity.org" }
    contacts << { first_name: "Francisco", last_name: "Zermeno", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "Francisco.Zermeno@hayward-ca.gov" }
    contacts << { first_name: "Fred", last_name: "Wilson", title: "City Manager", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "fred.wilson@surfcity-hb.org" }
    contacts << { first_name: "Francie", last_name: "Sullivan", title: "Council Member", heal_city: "Redding, CA", organization: "Redding", email: "fsullivan@ci.redding.ca.us" }
    contacts << { first_name: "Frank", last_name: "Ury", title: "Council Member", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "fury@cityofmissionviejo.org" }
    contacts << { first_name: "Gilbert", last_name: "Alvarado", title: "Mayor Pro Tem", heal_city: "Shafter, CA", organization: "Shafter", email: "galvarado@shafter.com" }
    contacts << { first_name: "Gary", last_name: "Plass", title: "Council Member", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "gary@fowlerassociates.com;gplass@ci.healdsburg.ca.us;" }
    contacts << { first_name: "Karen", last_name: "Bright", title: "Council Member", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "gbadmin@grover.org" }
    contacts << { first_name: "Gary", last_name: "Baland", title: "Council Member", heal_city: "Live Oak, CA", organization: "Live Oak", email: "gbaland@liveoakcity.org" }
    contacts << { first_name: "Gina", last_name: "Belforte", title: "Council Member", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "gbelforte@rpcity.org" }
    contacts << { first_name: "Gary", last_name: "Bird", title: "Personnel Director", heal_city: "Eureka, CA", organization: "Eureka", email: "gbird@ci.eureka.ca.gov" }
    contacts << { first_name: "Greg", last_name: "Carpenter", title: "City Manager", heal_city: "El Segundo, CA", organization: "El Segundo", email: "gcarpenter@elsegundo.org" }
    contacts << { first_name: "George", last_name: "Carr", title: "Council Member", heal_city: "Hughson, CA", organization: "Hughson", email: "gcarr@hughson.org" }
    contacts << { first_name: "Gary", last_name: "Davis", title: "Mayor", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "gdavis@elkgrovecity.org" }
    contacts << { first_name: "George", last_name: "Gastil", title: "Council Member", heal_city: "Lemon Grove, CA", organization: "Lemon Grove", email: "georgegastil@gmail.com" }
    contacts << { first_name: "Greg", last_name: "Greeson", title: "City Manager", heal_city: "Gustine, CA", organization: "Gustine", email: "ggreeson@cityofgustine.com" }
    contacts << { first_name: "Geri", last_name: "Hamby", title: "Personnel Director", heal_city: "Sacramento, CA", organization: "Sacramento", email: "ghamby@cityofsacramento.org" }
    contacts << { first_name: "Gary", last_name: "Haskin", title: "Council Member", heal_city: "Escalon, CA", organization: "Escalon", email: "ghaskin@cityofescalon.org" }
    contacts << { first_name: "Harold", last_name: "Duffey", title: "City Manager", heal_city: "Compton, CA", organization: "Compton", email: "ghduffey@comptoncity.org" }
    contacts << { first_name: "Gabriel", last_name: "Hydrick", title: "Council Member", heal_city: "Lincoln, CA", organization: "Lincoln", email: "ghydrick@ci.lincoln.ca.us" }
    contacts << { first_name: "Ginger", last_name: "Ward", title: "Council Member", heal_city: "Holtville, CA", organization: "Holtville", email: "gingerward1950@att.net" }
    contacts << { first_name: "Ginna", last_name: "Escobar", title: "Council Member - District 5", heal_city: "Pomona, CA", organization: "Pomona", email: "ginna_escobar@ci.pomona.ca.us" }
    contacts << { first_name: "Ginny", last_name: "Foat", title: "Council Member", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "ginny.foat@palmspringsca.gov" }
    contacts << { first_name: "Gary", last_name: "Kraus", title: "Council Member", heal_city: "Calistoga, CA", organization: "Calistoga", email: "gkraus@ci.calistoga.ca.us" }
    contacts << { first_name: "Gleam", last_name: "Davis", title: "Mayor Pro Tem", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "gleam.davis@smgov.net" }
    contacts << { first_name: "Gilbert", last_name: "Livas", title: "City Manager", heal_city: "Downey, CA", organization: "Downey", email: "glivas@downeyca.org" }
    contacts << { first_name: "Greg", last_name: "Lyman", title: "Mayor", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "glyman@ci.el-cerrito.ca.us" }
    contacts << { first_name: "Gene", last_name: "Masuda", title: "Council Member - District 4", heal_city: "Pasadena, CA", organization: "Pasadena", email: "gmasuda@cityofpasadena.net" }
    contacts << { first_name: "Gina", last_name: "Donnelly", title: "Human Resources Director", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "gmdonnelly@menlopark.org" }
    contacts << { first_name: "Ginny", last_name: "Feth-Michel", title: "Assistant to City Manager", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "gmichel@fortbragg.com" }
    contacts << { first_name: "Glenn", last_name: "Miller", title: "Council Member", heal_city: "Indio, CA", organization: "Indio", email: "gmiller@indio.org; msommons@indio.org" }
    contacts << { first_name: "Gary", last_name: "Napper", title: "City Manager", heal_city: "Clayton, CA", organization: "Clayton", email: "gnapper@ci.clayton.ca.us" }
    contacts << { first_name: "George", last_name: "Nava", title: "Council Member", heal_city: "Brawley, CA", organization: "Brawley", email: "gnava@brawley-ca.gov" }
    contacts << { first_name: "Garth", last_name: "Nelson", title: "Community Services Director", heal_city: "Fontana, CA", organization: "Fontana", email: "gnelson@fontana.org" }
    contacts << { first_name: "Greg", last_name: "Nyhoff", title: "City Manager", heal_city: "Modesto, CA", organization: "Modesto", email: "gnyhoff@modestogov.com" }
    contacts << { first_name: "Greg", last_name: "Jones", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "greg.jones@hayward-ca.gov" }
    contacts << { first_name: "Greg", last_name: "Schmid", title: "Council Member", heal_city: "Palo Alto, CA", organization: "Palo Alto", email: "greg.schmid@cityofpaloalto.org" }
    contacts << { first_name: "Gregg", last_name: "Carty", title: "Vice Mayor", heal_city: "Carpinteria, CA", organization: "Carpinteria", email: "greggcarty@ci.carpinteria.ca.us" }
    contacts << { first_name: "Gregory", last_name: "Pitts", title: "Council Member", heal_city: "St. Helena, CA", organization: "St. Helena", email: "gregpitts@sbcglobal.net" }
    contacts << { first_name: "Gretchen", last_name: "Beatty", title: "Director of Human Resources", heal_city: "Fullerton, CA", organization: "Fullerton", email: "gretchenb@ci.fullerton.ca.us" }
    contacts << { first_name: "James", last_name: "Griffith", title: "Vice Mayor", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "griffith@dweeb.org" }
    contacts << { first_name: "George", last_name: "Rodericks", title: "City Manager", heal_city: "Atherton, CA", organization: "Atherton", email: "grodericks@ci.atherton.ca.us" }
    contacts << { first_name: "Greg", last_name: "Rogers", title: "City Manager", heal_city: "San Ramon, CA", organization: "San Ramon", email: "grogers@sanramon.ca.gov" }
    contacts << { first_name: "Greg", last_name: "Scoles", title: "City Manager", heal_city: "Belmont, CA", organization: "Belmont", email: "gscoles@belmont.gov" }
    contacts << { first_name: "Mike", last_name: "Goodsell", title: "Mayor", heal_city: "Holtville, CA", organization: "Holtville", email: "gsnyder@holtville.ca.gov" }
    contacts << { first_name: "Richard", last_name: "Layton", title: "Mayor Pro Tem", heal_city: "Holtville, CA", organization: "Holtville", email: "gsnyder@holtville.ca.gov" }
    contacts << { first_name: "Garrett", last_name: "Toy", title: "Town Manager", heal_city: "Fairfax, CA", organization: "Fairfax", email: "gtoy@townoffairfax.org" }
    contacts << { first_name: "Gurpal", last_name: "Samra", title: "Mayor Pro Tem", heal_city: "Livingston, CA", organization: "Livingston", email: "gurpal@gurpal.com" }
    contacts << { first_name: "Grace", last_name: "Vallejo", title: "Council Member", heal_city: "Delano, CA", organization: "Delano", email: "gvallejo@cityofdelano.org" }
    contacts << { first_name: "Gabriella", last_name: "Yap", title: "Personnel Director", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "gyap@lhhcity.org" }
    contacts << { first_name: "Hal", last_name: "Cole", title: "Council Member", heal_city: "South Lake Tahoe, CA", organization: "South Lake Tahoe", email: "halcole@charter.net" }
    contacts << { first_name: "Gloria", last_name: "Garcia", title: "Council Member", heal_city: "Victorville, CA", organization: "Victorville", email: "hgrounds@ci.victorville.ca.us" }
    contacts << { first_name: "Herb", last_name: "Higgins", title: "Council Member", heal_city: "Norco, CA", organization: "Norco", email: "hhiggins@ci.norco.ca.us" }
    contacts << { first_name: "Harold", last_name: "Hill", title: "Council Member", heal_city: "Hughson, CA", organization: "Hughson", email: "hhill@hughson.org" }
    contacts << { first_name: "Heather", last_name: "Moreno", title: "Council Member", heal_city: "Atascadero, CA", organization: "Atascadero", email: "hmoreno@atascadero.org" }
    contacts << { first_name: "Herb", last_name: "Perez", title: "Council Member", heal_city: "Foster City, CA", organization: "Foster City", email: "hperez@fostercity.org" }
    contacts << { first_name: "Henry", last_name: "Rodriguez", title: "Council Member", heal_city: "Reedley, CA", organization: "Reedley", email: "hrodriguez@reedley.ca.gov" }
    contacts << { first_name: "Ian", last_name: "Bain", title: "Council Member", heal_city: "Redwood City, CA", organization: "Redwood City", email: "ibain@redwoodcity.org" }
    contacts << { first_name: "Ike", last_name: "Bootsma", title: "Council Member", heal_city: "Eastvale, CA", organization: "Eastvale", email: "ibootsma@eastvaleca.gov" }
    contacts << { first_name: "Illece", last_name: "Buckley Weber", title: "Council Member", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "ibuckleyweber@ci.agoura-hills.ca.us" }
    contacts << { first_name: "Ignacio", last_name: "Velazquez", title: "Mayor", heal_city: "Hollister, CA", organization: "Hollister", email: "ignaciovelazquez@hotmail.com" }
    contacts << { first_name: "Roberta", last_name: "Davis", title: "Council Member", heal_city: "Newman, CA", organization: "Newman", email: "info@cityofnewman.com" }
    contacts << { first_name: "Robert", last_name: "Martina", title: "Mayor Pro Tem", heal_city: "Newman, CA", organization: "Newman", email: "info@cityofnewman.com" }
    contacts << { first_name: "Ian", last_name: "Oglesby", title: "Council Member", heal_city: "Seaside, CA", organization: "Seaside", email: "ioglesby@ci.seaside.ca.us" }
    contacts << { first_name: "Jeffrey", last_name: "Lalloway", title: "Mayor Pro Tem", heal_city: "Irvine, CA", organization: "Irvine", email: "irvinecitycouncil@cityofirvine.org" }
    contacts << { first_name: "Christina", last_name: "Shea", title: "Council Member", heal_city: "Irvine, CA", organization: "Irvine", email: "irvinecitycouncil@cityofirvine.org" }
    contacts << { first_name: "Jac", last_name: "Asher", title: "Vice Mayor", heal_city: "Emeryville, CA", organization: "Emeryville", email: "jacasher@emeryville.org" }
    contacts << { first_name: "Jose", last_name: "Aldaco", title: "Council Member", heal_city: "Waterford, CA", organization: "Waterford", email: "jaldaco@waterford.k12.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Amador", title: "Mayor Pro Tem", heal_city: "Mendota, CA", organization: "Mendota", email: "jamador@ci.mendota.ca.us" }
    contacts << { first_name: "James", last_name: "Keene", title: "City Manager", heal_city: "Palo Alto, CA", organization: "Palo Alto", email: "james.keene@cityofpaloalto.org" }
    contacts << { first_name: "Jan", last_name: "Bridges", title: "Council Member", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "janbridges@aol.com" }
    contacts << { first_name: "Jan", last_name: "Howell Marx", title: "Mayor", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "janmarx@stanfordalumni.org" }
    contacts << { first_name: "James", last_name: "App", title: "City Manager", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "japp@prcity.com" }
    contacts << { first_name: "Jesse", last_name: "Arreguin", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "jarreguin@cityofberkeley.info" }
    contacts << { first_name: "John", last_name: "Ashbaugh", title: "Council Member", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "jashbaug@slocity.org" }
    contacts << { first_name: "Jason", last_name: "Scott", title: "Mayor", heal_city: "Corona, CA", organization: "Corona", email: "jason.scott@ci.corona.ca.us" }
    contacts << { first_name: "Jason", last_name: "Baker", title: "Council Member", heal_city: "Campbell, CA", organization: "Campbell", email: "jasonb@cityofcampbell.com" }
    contacts << { first_name: "Joe", last_name: "Baca Jr.", title: "Council Member", heal_city: "Rialto, CA", organization: "Rialto", email: "jbaca@ci.rialtoca.gov" }
    contacts << { first_name: "James", last_name: "Barnes", title: "Council Member", heal_city: "Calistoga, CA", organization: "Calistoga", email: "jbarnes@ci.calistoga.ca.us" }
    contacts << { first_name: "Jack", last_name: "Batchelor", title: "Mayor", heal_city: "Dixon, CA", organization: "Dixon", email: "jbatch.dxncouncil@sbcglobal.net" }
    contacts << { first_name: "Jason", last_name: "Behrmann", title: "City Manager", heal_city: "Galt, CA", organization: "Galt", email: "jbehrmann@ci.galt.ca.us" }
    contacts << { first_name: "Jim", last_name: "Bowman", title: "Mayor Pro Tem", heal_city: "Ontario, CA", organization: "Ontario", email: "jbowman@ci.ontario.ca.us" }
    contacts << { first_name: "Jack", last_name: "Boysen", title: "Council Member", heal_city: "Santa Maria, CA", organization: "Santa Maria", email: "jboysen@ci.santa-maria.ca.us" }
    contacts << { first_name: "Jeannie", last_name: "Bruins", title: "Council Member", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "jbruins@citrusheights.net" }
    contacts << { first_name: "Joel", last_name: "Bryant", title: "Vice Mayor", heal_city: "Brentwood, CA", organization: "Brentwood", email: "jbryant@brentwoodca.gov" }
    contacts << { first_name: "Joseph", last_name: "Callinan", title: "Vice Mayor", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "jcallinan@rpcity.org" }
    contacts << { first_name: "Julie", last_name: "Combs", title: "Council Member", heal_city: "Santa Rosa, CA", organization: "Santa Rosa", email: "jcombs@srcity.org" }
    contacts << { first_name: "Jim", last_name: "Cunningham", title: "Council Member", heal_city: "Poway, CA", organization: "Poway", email: "jcunningham@poway.org" }
    contacts << { first_name: "Jack", last_name: "Dale", title: "Council Member", heal_city: "Santee, CA", organization: "Santee", email: "jdale@ci.santee.ca.us" }
    contacts << { first_name: "Jim", last_name: "Davis", title: "Council Member", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "jdavis@sunnyvale.ca.gov" }
    contacts << { first_name: "Jane", last_name: "Day", title: "Council Member", heal_city: "Suisun City, CA", organization: "Suisun City", email: "jday@suisun.com" }
    contacts << { first_name: "Joey", last_name: "DeConinck", title: "Council Member", heal_city: "Blythe, CA", organization: "Blythe", email: "jdeconinck@cityofblythe.ca.gov" }
    contacts << { first_name: "Jeanna", last_name: "Del Real", title: "City Clerk/Administrative Manager", heal_city: "Atwater, CA", organization: "Atwater", email: "jdelreal@atwater.org" }
    contacts << { first_name: "John", last_name: "Denver", title: "Council Member", heal_city: "Menifee, CA", organization: "Menifee", email: "jdenver@cityofmenifee.us" }
    contacts << { first_name: "James", last_name: "De Stefano", title: "City Manager", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "jdestefano@diamondbarca.gov" }
    contacts << { first_name: "Bill", last_name: "Widmer", title: "Council Member", heal_city: "Atherton, CA", organization: "Atherton", email: "jdobbie@ci.atherton.ca.us" }
    contacts << { first_name: "Jeff", last_name: "Draper", title: "Mayor", heal_city: "Gridley, CA", organization: "Gridley", email: "jdraper@gridley.ca.us" }
    contacts << { first_name: "Jordan", last_name: "Ehrenkranz", title: "Council Member", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "jehrendranz@cityofcanyonlake.com" }
    contacts << { first_name: "Jerry", last_name: "Blackwelder", title: "Council Member", heal_city: "Sand City, CA", organization: "Sand City", email: "jerry@sandcity.org" }
    contacts << { first_name: "Jason", last_name: "Fouyer", title: "Vice Mayor", heal_city: "Grass Valley, CA", organization: "Grass Valley", email: "jfouyer@cityofgrassvalley.com" }
    contacts << { first_name: "Julio", last_name: "Fuentes", title: "City Manager", heal_city: "Santa Clara, CA", organization: "Santa Clara", email: "jfuentes@cityofalhambra.org" }
    contacts << { first_name: "Jeffrey", last_name: "Gee", title: "Vice Mayor", heal_city: "Redwood City, CA", organization: "Redwood City", email: "jgee@redwoodcity.org" }
    contacts << { first_name: "Jamie", last_name: "Goldstein", title: "Personnel Director", heal_city: "Capitola, CA", organization: "Capitola", email: "jgoldstein@ci.capitola.ca.us" }
    contacts << { first_name: "John", last_name: "Gunderson", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "jgunderson@modestogov.com" }
    contacts << { first_name: "Jim", last_name: "Guthrie", title: "Council Member", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "jguthrie@arroyogrande.org" }
    contacts << { first_name: "John", last_name: "Hamon", title: "Council Member", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "jhamon@prcity.com" }
    contacts << { first_name: "John ", last_name: "Heilman", title: "Council Member", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "jheilman@weho.org; fsolomon@weho.org" }
    contacts << { first_name: "Julia", last_name: "Hernandez", title: "Mayor Pro Tem", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "jhernandez@proteusinc.org" }
    contacts << { first_name: "James", last_name: "Osborne", title: "Council Member", heal_city: "Lawndale, CA", organization: "Lawndale", email: "jholawndale@aol.com" }
    contacts << { first_name: "John", last_name: "Huerta", title: "Mayor", heal_city: "Greenfield, CA", organization: "Greenfield", email: "jhuerta@ci.greenfield.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Hughes", title: "City Manager", heal_city: "Highland, CA", organization: "Highland", email: "jhughes@cityofhighland.org" }
    contacts << { first_name: "Jill", last_name: "Hardy", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "jill.hardy@surfcity-hb.org" }
    contacts << { first_name: "Jim", last_name: "Clarke", title: "Council Member", heal_city: "Culver City, CA", organization: "Culver City", email: "jim.clark@culvercity.org; jimbclarke@gmail.com" }
    contacts << { first_name: "James", last_name: "Monahan", title: "Council Member", heal_city: "Ventura, CA", organization: "Ventura", email: "jim.monahan@att.net" }
    contacts << { first_name: "Jim", last_name: "Ellis", title: "Mayor Pro Tem", heal_city: "Bishop, CA", organization: "Bishop", email: "jimbpd2005@yahoo.com" }
    contacts << { first_name: "Jim", last_name: "Reed", title: "Vice Mayor", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "jimreed@cruzio.com" }
    contacts << { first_name: "Jill", last_name: "Ingram", title: "City Manager", heal_city: "Seal Beach, CA", organization: "Seal Beach", email: "jingram@sealbeachca.gov" }
    contacts << { first_name: "Jason", last_name: "Jackson", title: "Council Member", heal_city: "El Centro, CA", organization: "El Centro", email: "jjackson@cityofelcentro.org" }
    contacts << { first_name: "Jerry", last_name: "Jones", title: "Council Member", heal_city: "Lemon Grove, CA", organization: "Lemon Grove", email: "jjones@ci.lemon-grove.ca.us" }
    contacts << { first_name: "Jim", last_name: "Kennedy", title: "Council Member", heal_city: "Victorville, CA", organization: "Victorville", email: "jkennedy@ci.victorville.ca.us" }
    contacts << { first_name: "Jim", last_name: "Kitchen", title: "Vice Mayor", heal_city: "Marysville, CA", organization: "Marysville", email: "jkitchen@marysville.ca.us" }
    contacts << { first_name: "Joe", last_name: "Kriskovich", title: "Admin. Services Director", heal_city: "Manteca, CA", organization: "Manteca", email: "jkriskovich@ci.manteca.ca.us" }
    contacts << { first_name: "Janeen", last_name: "Laudenback", title: "Community Services Director", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "jlaudenback@surfcity-hb.org" }
    contacts << { first_name: "Jeff", last_name: "Laugero", title: "Council Member", heal_city: "Escalon, CA", organization: "Escalon", email: "jlaugero@cityofescalon.org" }
    contacts << { first_name: "John", last_name: "Lenart", title: "Council Member", heal_city: "Loma Linda, CA", organization: "Loma Linda", email: "jlenart@lomalinda-ca.gov" }
    contacts << { first_name: "Jim", last_name: "Lindley", title: "City Manager", heal_city: "Dixon, CA", organization: "Dixon", email: "jlindley@ci.dixon.ca.us" }
    contacts << { first_name: "Jill", last_name: "Lopez", title: "Human Resources Manager", heal_city: "Campbell, CA", organization: "Campbell", email: "jlopez@ci.campbell.ca.us" }
    contacts << { first_name: "Jose", last_name: "Lopez", title: "Council Member", heal_city: "Gonzales, CA", organization: "Gonzales", email: "jlopez@ci.gonzales.ca.us" }
    contacts << { first_name: "Joseph", last_name: "Lyons", title: "Council Member", heal_city: "Claremont, CA", organization: "Claremont", email: "jlyons@ci.claremont.ca.us" }
    contacts << { first_name: "James", last_name: "Makshanoff", title: "City Manager", heal_city: "Azusa, CA", organization: "Azusa", email: "jmakshanoff@ci.azusa.ca.us" }
    contacts << { first_name: "Jeff", last_name: "Mathieu", title: "City Manager/City Clerk", heal_city: "Big Bear Lake, CA", organization: "Big Bear Lake", email: "jmathieu@citybigbearlake.com" }
    contacts << { first_name: "Jack", last_name: "Matthews", title: "Council Member", heal_city: "San Mateo, CA", organization: "San Mateo", email: "jmatthews@cityofsanmateo.org" }
    contacts << { first_name: "Jerry", last_name: "McCloskey", title: "Council Member", heal_city: "Laguna Niguel, CA", organization: "Laguna Niguel", email: "jmccloskey@cityoflagunaniguel.org" }
    contacts << { first_name: "Julie", last_name: "Hackbarth-McIntyre", title: "Mayor Pro Tem", heal_city: "Barstow, CA", organization: "Barstow", email: "jmcintyre@barstowca.org" }
    contacts << { first_name: "John", last_name: "Minto", title: "Vice Mayor", heal_city: "Santee, CA", organization: "Santee", email: "jminto@ci.santee.ca.us" }
    contacts << { first_name: "John", last_name: "Mirisch", title: "Vice Mayor", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "jmirisch@beverlyhills.org" }
    contacts << { first_name: "John", last_name: "Moreno", title: "Council Member", heal_city: "Calexico, CA", organization: "Calexico", email: "jmoreno@calexico.ca.gov" }
    contacts << { first_name: "John", last_name: "Moreno", title: "Assistant City Manager", heal_city: "Paramount, CA", organization: "Paramount", email: "jmoreno@paramountcity.com" }
    contacts << { first_name: "John", last_name: "Muller", title: "Vice Mayor", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "jmuller@hmbcity.com" }
    contacts << { first_name: "John", last_name: "Mullin", title: "Deputy Mayor", heal_city: "Poway, CA", organization: "Poway", email: "jmullin@poway.org" }
    contacts << { first_name: "Joe", last_name: "Felz", title: "City Manager", heal_city: "Fullerton, CA", organization: "Fullerton", email: "joef@ci.fullerton.ca.us" }
    contacts << { first_name: "Joel", last_name: "Glick", title: "Director of Community Services", heal_city: "Reedley, CA", organization: "Reedley", email: "joel.glick@reedley.com" }
    contacts << { first_name: "Joe", last_name: "Rivero", title: "Mayor Pro Tem", heal_city: "Atwater, CA", organization: "Atwater", email: "joerivero@atwater.org" }
    contacts << { first_name: "John", last_name: "Becker", title: "City Manager", heal_city: "Newark, CA", organization: "Newark", email: "john.becker@newark.org" }
    contacts << { first_name: "John", last_name: "Gillison", title: "City Manager", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "john.gillison@cityofrc.us" }
    contacts << { first_name: "John", last_name: "Nachbar", title: "City Manager", heal_city: "Culver City, CA", organization: "Culver City", email: "john.nachbar@culvercity.org" }
    contacts << { first_name: "John", last_name: "Busch", title: "Council Member", heal_city: "Biggs, CA", organization: "Biggs", email: "johnb@biggs-ca.gov" }
    contacts << { first_name: "John", last_name: "Chavez", title: "Council Member", heal_city: "Chowchilla, CA", organization: "Chowchilla", email: "johnchavez@ci.chowchilla.ca.us" }
    contacts << { first_name: "Bob", last_name: "Johnson", title: "Council Member", heal_city: "Lodi, CA", organization: "Lodi", email: "johnson@lodi.gov" }
    contacts << { first_name: "Joe", last_name: "Oliveira", title: "Mayor Pro Tem", heal_city: "Gustine, CA", organization: "Gustine", email: "joliveira@cityofgustine.com" }
    contacts << { first_name: "Bo", last_name: "Sheppard", title: "Vice Mayor", heal_city: "Biggs, CA", organization: "Biggs", email: "jonc@biggs-ca.gov" }
    contacts << { first_name: "Steve", last_name: "Jones", title: "Council Member", heal_city: "Garden Grove, CA", organization: "Garden Grove", email: "jones4gg@gmail.com" }
    contacts << { first_name: "Jorge", last_name: "Rifa", title: "City Administrator", heal_city: "Commerce, CA", organization: "Commerce", email: "jorger@ci.commerce.ca.us" }
    contacts << { first_name: "Jose", last_name: "Gurrola", title: "Council Member", heal_city: "Arvin, CA", organization: "Arvin", email: "josegurrola.arvingcitycouncil@gmail.com" }
    contacts << { first_name: "Joshua", last_name: "Mitchell", title: "Mayor", heal_city: "Sanger, CA", organization: "Sanger", email: "joshua@westernlandscapedev.com" }
    contacts << { first_name: "Jovanka", last_name: "Beckles", title: "Council Member", heal_city: "Richmond, CA", organization: "Richmond", email: "jovanka_beckles@ci.richmond.ca.us" }
    contacts << { first_name: "Joe", last_name: "Palla", title: "Mayor", heal_city: "Cloverdale, CA", organization: "Cloverdale", email: "jpalla119@comcast.net" }
    contacts << { first_name: "Janice", last_name: "Parvin", title: "Mayor", heal_city: "Moorpark, CA", organization: "Moorpark", email: "jparvin@ci.moorpark.ca.us" }
    contacts << { first_name: "James", last_name: "Paschall, Sr.", title: "Council Member", heal_city: "Orland, CA", organization: "Orland", email: "jpaschall@cityoforland.com" }
    contacts << { first_name: "John", last_name: "Pietig", title: "City Manager", heal_city: "Laguna Beach, CA", organization: "Laguna Beach", email: "jpietig@lagunabeachcity.net" }
    contacts << { first_name: "John", last_name: "Marchand", title: "Mayor", heal_city: "Livermore, CA", organization: "Livermore", email: "jpmarchand@cityoflivermore.net" }
    contacts << { first_name: "Jim", last_name: "Prola", title: "Council Member", heal_city: "San Leandro, CA", organization: "San Leandro", email: "jprola@ci.san-leandro.ca.us" }
    contacts << { first_name: "Ron", last_name: "Anderson", title: "Assistant to City Manager", heal_city: "Suisun City, CA", organization: "Suisun City", email: "jranderson@suisun.com" }
    contacts << { first_name: "John", last_name: "Reed", title: "Mayor", heal_city: "Fairfax, CA", organization: "Fairfax", email: "jreed@townoffairfax.org" }
    contacts << { first_name: "Joseph", last_name: "Riofrio", title: "Council Member", heal_city: "Mendota, CA", organization: "Mendota", email: "jriofrio@ci.mendota.ca.us" }
    contacts << { first_name: "John", last_name: "Roberts", title: "Mayor Pro Tem", heal_city: "Fontana, CA", organization: "Fontana", email: "jroberts@fontana.org" }
    contacts << { first_name: "John", last_name: "Schaefer", title: "City Manager", heal_city: "San Marino, CA", organization: "San Marino", email: "jschaefer@smpd.us" }
    contacts << { first_name: "Jay", last_name: "Schenirer", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "jschenirer@cityofsacramento.org" }
    contacts << { first_name: "Jody", last_name: "Scott", title: "Council Member", heal_city: "Highland, CA", organization: "Highland", email: "jscott@cityofhighland.org" }
    contacts << { first_name: "John", last_name: "Seybert", title: "Council Member", heal_city: "Redwood City, CA", organization: "Redwood City", email: "jseybert@redwoodcity.org" }
    contacts << { first_name: "Jill", last_name: "Silva", title: "Council Member", heal_city: "Hughson, CA", organization: "Hughson", email: "jsilva@hughson.org" }
    contacts << { first_name: "Jeff", last_name: "Slowey", title: "Council Member", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "jslowey@citrusheights.net" }
    contacts << { first_name: "Jeff", last_name: "Stewart", title: "City Manager", heal_city: "Bellflower, CA", organization: "Bellflower", email: "jstewart@bellflower.org" }
    contacts << { first_name: "Jack", last_name: "Tanaka", title: "Mayor", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "jtanaka@diamondbarca.gov" }
    contacts << { first_name: "T. Jarb", last_name: "Thaipejr", title: "City Manager", heal_city: "Loma Linda, CA", organization: "Loma Linda", email: "jthaipejr@lomalinda-ca.gov" }
    contacts << { first_name: "Jeanine", last_name: "Tucker", title: "Council Member", heal_city: "Riverbank, CA", organization: "Riverbank", email: "jtucker@riverbank.org" }
    contacts << { first_name: "Juanita", last_name: "Trujillo", title: "Council Member", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "juanitatrujillo@santafesprings.org" }
    contacts << { first_name: "Julie", last_name: "Carter", title: "Human Resources Director", heal_city: "Dublin, CA", organization: "Dublin", email: "julie.carter@ci.dublin.ca.us" }
    contacts << { first_name: "Julie", last_name: "Pierce", title: "Mayor", heal_city: "Clayton, CA", organization: "Clayton", email: "julie_pierce@comcast.net" }
    contacts << { first_name: "Jim", last_name: "Vanderpool", title: "City Manager", heal_city: "Buena Park, CA", organization: "Buena Park", email: "jvanderpool@buenapark.com" }
    contacts << { first_name: "Jennifer", last_name: "Vasquez", title: "Assistant City Manager", heal_city: "South El Monte, CA", organization: "South El Monte", email: "jvasquez@soelmonte.org" }
    contacts << { first_name: "Priscilla", last_name: "Flores", title: "Council Member", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "jvicuna@bellgardens.org" }
    contacts << { first_name: "Jane", last_name: "Williams", title: "Council Member", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "jwilliams@lhj90631.com" }
    contacts << { first_name: "Jeramy", last_name: "Young", title: "Mayor Pro Tem", heal_city: "Hughson, CA", organization: "Hughson", email: "jyoung@hughson.org" }
    contacts << { first_name: "Janna", last_name: "Zurita", title: "Council Member", heal_city: "Compton, CA", organization: "Compton", email: "jzurita@comptoncity.org" }
    contacts << { first_name: "Kristine", last_name: "Alessio", title: "Council Member", heal_city: "La Mesa, CA", organization: "La Mesa", email: "kalessio@ci.la-mesa.ca.us" }
    contacts << { first_name: "Karen", last_name: "Ginsberg", title: "Community Services Director", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "karen.ginsberg@smgov.net" }
    contacts << { first_name: "Karen", last_name: "Spiegel", title: "Mayor Pro Tem", heal_city: "Corona, CA", organization: "Corona", email: "karen.spiegel@ci.corona.ca.us" }
    contacts << { first_name: "Kathy", last_name: "Azevedo", title: "Mayor", heal_city: "Norco, CA", organization: "Norco", email: "kazevedo@ci.norco.ca.us" }
    contacts << { first_name: "Kelley", last_name: "Bacon", title: "Director of Human Resources", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "kbacon@ci.chula.vista.ca.us" }
    contacts << { first_name: "Kevin", last_name: "Bash", title: "Council Member", heal_city: "Norco, CA", organization: "Norco", email: "kbash@ci.norco.ca.us" }
    contacts << { first_name: "Kelly", last_name: "Boyd", title: "Mayor", heal_city: "Laguna Beach, CA", organization: "Laguna Beach", email: "kboyd@lagunabeachcity.net" }
    contacts << { first_name: "Kevin", last_name: "Chun", title: "Administrative Services Director", heal_city: "La Canada Flintridge, CA", organization: "La Canada Flintridge", email: "kchun@lcf.ca.gov" }
    contacts << { first_name: "Karen", last_name: "Crocker", title: "Community Services Director", heal_city: "Aliso Viejo, CA", organization: "Aliso Viejo", email: "kcrocker@cityofalisoviejo.com" }
    contacts << { first_name: "Kevin", last_name: "Evans", title: "Parks and Recreation Director", heal_city: "Dana Point, CA", organization: "Dana Point", email: "kevans@danapoint.org" }
    contacts << { first_name: "Kevin", last_name: "Hart", title: "Council Member", heal_city: "Dublin, CA", organization: "Dublin", email: "kevin.hart@dublin.ca.gov" }
    contacts << { first_name: "Kristy", last_name: "Franklin", title: "Council Member", heal_city: "La Quinta, CA", organization: "La Quinta", email: "kfranklin@la-quinta.org" }
    contacts << { first_name: "Kristin", last_name: "Gaspar", title: "Council Member", heal_city: "Encinitas, CA", organization: "Encinitas", email: "kgaspar@encinitasca.gov" }
    contacts << { first_name: "Kirsten", last_name: "Keith", title: "Council Member", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "kkeith@menlopark.org" }
    contacts << { first_name: "Kenneth", last_name: "Krause", title: "Council Member", heal_city: "Waterford, CA", organization: "Waterford", email: "kkrause1231@aol.com" }
    contacts << { first_name: "Ken", last_name: "Lane", title: "Vice Mayor", heal_city: "Ceres, CA", organization: "Ceres", email: "klane@ci.ceres.ca.us" }
    contacts << { first_name: "Katharine", last_name: "Leroux", title: "Assistant City Manager", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "kleroux@hillsborough.net" }
    contacts << { first_name: "Ken", last_name: "Mann", title: "Council Member", heal_city: "Lancaster, CA", organization: "Lancaster", email: "kmann@cityoflancasterca.org" }
    contacts << { first_name: "Karen", last_name: "McLaughlin", title: "City Manager", heal_city: "Manteca, CA", organization: "Manteca", email: "kmclaughlin@ci.manteca.ca.us" }
    contacts << { first_name: "Karen", last_name: "McNamara", title: "Interim Parks & Community Srvcs Dir.", heal_city: "San Ramon, CA", organization: "San Ramon", email: "kmcnamara@sanramon.ca.gov" }
    contacts << { first_name: "Keith", last_name: "Millhouse", title: "Council Member", heal_city: "Moorpark, CA", organization: "Moorpark", email: "kmillhouse@ci.moorpark.ca.us" }
    contacts << { first_name: "Kathy", last_name: "Pickrell", title: "Human resources Coordinator", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "kpickrell@cityofkingsburg-ca.gov" }
    contacts << { first_name: "Kristi", last_name: "Recchia", title: "Human Resources Director", heal_city: "Pasadena, CA", organization: "Pasadena", email: "krecchia@cityofpasadena.net" }
    contacts << { first_name: "Karen", last_name: "Sisko", title: "Human Resources Manager", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "ksisko@arroyogrande.org" }
    contacts << { first_name: "Kerry", last_name: "Walker", title: "Community Services Director", heal_city: "Vacaville, CA", organization: "Vacaville", email: "kwalker@cityofvacaville.com" }
    contacts << { first_name: "Kriss", last_name: "Worthington", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "kworthington@cityofberkeley.info" }
    contacts << { first_name: "Lucille", last_name: "Breese", title: "Planning Manager", heal_city: "Lompoc, CA", organization: "Lompoc", email: "l_breese@ci.lompoc.ca.us" }
    contacts << { first_name: "Louie", last_name: "Aguinaga", title: "Mayor", heal_city: "South El Monte, CA", organization: "South El Monte", email: "laguinaga@soelmonte.org" }
    contacts << { first_name: "Laurie", last_name: "Gallian", title: "Council Member", heal_city: "Sonoma, CA", organization: "Sonoma", email: "lauriegallian@comcast.net" }
    contacts << { first_name: "Laurie", last_name: "Murray", title: "Administrative Services Manager", heal_city: "La Palma, CA", organization: "La Palma", email: "lauriem@cityoflapalma.org" }
    contacts << { first_name: "Laurie", last_name: "Rios", title: "Council Member", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "laurierios@santafesprings.org" }
    contacts << { first_name: "Scott", last_name: "Harness", title: "Council Member", heal_city: "Dinuba, CA", organization: "Dinuba", email: "lbarkley@dinuba.ca.gov" }
    contacts << { first_name: "Emilio ", last_name: "Morales", title: "Vice Mayor", heal_city: "Dinuba, CA", organization: "Dinuba", email: "lbarkley@dinuba.ca.gov" }
    contacts << { first_name: "Mike", last_name: "Smith", title: "Council Member", heal_city: "Dinuba, CA", organization: "Dinuba", email: "lbarkley@dinuba.ca.gov" }
    contacts << { first_name: "Latanya", last_name: "Bellow", title: "Human Resources Manager", heal_city: "San Leandro, CA", organization: "San Leandro", email: "lbellow@sanleandro.org" }
    contacts << { first_name: "Larry", last_name: "Bergman", title: "Council Member", heal_city: "Atwater, CA", organization: "Atwater", email: "lbergman@atwater.org" }
    contacts << { first_name: "Laurie", last_name: "Capitelli", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "lcapitelli@cityofberkeley.info" }
    contacts << { first_name: "Isabel", last_name: "Carlos", title: "Administrative Services Manager", heal_city: "Perris, CA", organization: "Perris", email: "lcarlos@cityofperris.org" }
    contacts << { first_name: "Lewis", last_name: "Chilton", title: "Vice Mayor", heal_city: "Yountville, CA", organization: "Yountville", email: "lchilton@yville.com" }
    contacts << { first_name: "Laurie", last_name: "Davies", title: "Council Member", heal_city: "Laguna Niguel, CA", organization: "Laguna Niguel", email: "ldavies@cityoflagunaniguel.org" }
    contacts << { first_name: "Leslie", last_name: "Deese", title: "City Manager", heal_city: "National City, CA", organization: "National City", email: "ldeese@ci.nationalcityca.gov" }
    contacts << { first_name: "Lara", last_name: "DeLaney", title: "Council Member", heal_city: "Martinez, CA", organization: "Martinez", email: "ldelaney@cityofmartinez.org" }
    contacts << { first_name: "Lee", last_name: "Brand", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "lee.brand@fresno.gov" }
    contacts << { first_name: "LeeAnn", last_name: "McPhillips", title: "Human Resources Director", heal_city: "Gilroy, CA", organization: "Gilroy", email: "leeann.mcphillips@cityofgilroy.org" }
    contacts << { first_name: "Laureen", last_name: "Turner", title: "Council Member", heal_city: "Livermore, CA", organization: "Livermore", email: "leturner@cityoflivermore.net" }
    contacts << { first_name: "Linda", last_name: "Evans", title: "Council Member", heal_city: "La Quinta, CA", organization: "La Quinta", email: "levans@la-quinta.org" }
    contacts << { first_name: "Lucy", last_name: "Garcia", title: "Assistant City Manager", heal_city: "San Marino, CA", organization: "San Marino", email: "lgarcia@cityofsanmarino.org" }
    contacts << { first_name: "Laura", last_name: "Gill", title: "City Manager", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "lgill@elkgrovecity.org" }
    contacts << { first_name: "Leonard", last_name: "Hammer", title: "Council Member", heal_city: "Fowler, CA", organization: "Fowler", email: "lhammer@ci.fowler.ca.us" }
    contacts << { first_name: "Keith", last_name: "Curry", title: "Mayor", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "lharkless@city.newport-beach.ca.us" }
    contacts << { first_name: "Lesa", last_name: "Heebner", title: "Council Member", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "lheebner@cosb.org" }
    contacts << { first_name: "Tim", last_name: "Herman", title: "Council Member", heal_city: "Roseville, CA", organization: "Roseville", email: "lheple@roseville.ca.us" }
    contacts << { first_name: "Gene", last_name: "Daniels", title: "Vice Mayor", heal_city: "Paramount, CA", organization: "Paramount", email: "lhodnett@paramountcity.com" }
    contacts << { first_name: "Tom", last_name: "Hansen", title: "Council Member", heal_city: "Paramount, CA", organization: "Paramount", email: "lhodnett@paramountcity.com" }
    contacts << { first_name: "Diane", last_name: "Martinez", title: "Council Member", heal_city: "Paramount, CA", organization: "Paramount", email: "lhodnett@paramountcity.com" }
    contacts << { first_name: "Lula", last_name: "Davis-Holmes", title: "Council Member", heal_city: "Carson, CA", organization: "Carson", email: "lholmes@carson.ca.us" }
    contacts << { first_name: "Lilia", last_name: "Leon", title: "Mayor", heal_city: "Commerce, CA", organization: "Commerce", email: "lilial@ci.commerce.ca.us" }
    contacts << { first_name: "Liz", last_name: "Silva", title: "Council Member", heal_city: "Gonzales, CA", organization: "Gonzales", email: "liz.silva@sbcglobal.net" }
    contacts << { first_name: "Luis", last_name: "Castro", title: "Council Member", heal_city: "Calexico, CA", organization: "Calexico", email: "ljcastro@calexico.ca.gov" }
    contacts << { first_name: "Linda", last_name: "Krupa", title: "Council Member", heal_city: "Hemet, CA", organization: "Hemet", email: "lkrupa@cityofhemet.org" }
    contacts << { first_name: "Laura", last_name: "Kuhn", title: "City Manager", heal_city: "Vacaville, CA", organization: "Vacaville", email: "lkuhn@ci.vacaville.ca.us" }
    contacts << { first_name: "Leslie", last_name: "Loomis", title: "Human Resources Director", heal_city: "Foster City, CA", organization: "Foster City", email: "lloomis@fostercity.org" }
    contacts << { first_name: "Linda", last_name: "Maio", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "lmaio@cityofberkeley.info" }
    contacts << { first_name: "Linda", last_name: "Matthews", title: "Human Resources Director", heal_city: "Ontario, CA", organization: "Ontario", email: "lmatthews@ci.ontario.ca.us" }
    contacts << { first_name: "Larry", last_name: "McCallon", title: "Mayor", heal_city: "Highland, CA", organization: "Highland", email: "lmccallon@cityofhighland.org" }
    contacts << { first_name: "Liz", last_name: "Morris", title: "Council Member", heal_city: "Delano, CA", organization: "Delano", email: "lmorris@cityofdelano.org" }
    contacts << { first_name: "Lori", last_name: "Shively", title: "Personnel Director", heal_city: "Clovis, CA", organization: "Clovis", email: "loris@cityofclovis.com" }
    contacts << { first_name: "Noah", last_name: "Lor", title: "Mayor Pro Tem", heal_city: "Merced, CA", organization: "Merced", email: "lorn@cityofmerced.org" }
    contacts << { first_name: "Lee", last_name: "Osbourne", title: "Council Member", heal_city: "La Quinta, CA", organization: "La Quinta", email: "losborne@la-quinta.org" }
    contacts << { first_name: "Lowell", last_name: "Hurst", title: "Mayor", heal_city: "Watsonville, CA", organization: "Watsonville", email: "lowell.hurst@cityofwatsonville.org" }
    contacts << { first_name: "Lupe", last_name: "Ramos Watson", title: "Council Member", heal_city: "Indio, CA", organization: "Indio", email: "lramoswatson@indio.org" }
    contacts << { first_name: "Lisa", last_name: "Rosenblum", title: "Library & Community Srvcs Dir.", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "lrosenblum@ci.sunnyvale.ca.us" }
    contacts << { first_name: "La Shawn", last_name: "Butler", title: "Community Services Director", heal_city: "Glendora, CA", organization: "Glendora", email: "lsbutler@ci.glendora.ca.us" }
    contacts << { first_name: "Larry", last_name: "Schroeder", title: "Mayor", heal_city: "Claremont, CA", organization: "Claremont", email: "lschroeder@ci.claremont.ca.us" }
    contacts << { first_name: "Linda", last_name: "Spady", title: "Human Resources Director", heal_city: "San Mateo, CA", organization: "San Mateo", email: "lspady@cityofsanmateo.org" }
    contacts << { first_name: "Larry", last_name: "Spicer", title: "Council Member", heal_city: "Monrovia, CA", organization: "Monrovia", email: "lspicer@ci.monrovia.ca.us" }
    contacts << { first_name: "Lisa", last_name: "Swarthout", title: "Council Member", heal_city: "Grass Valley, CA", organization: "Grass Valley", email: "lswarthout@cityofgrassvalley.com" }
    contacts << { first_name: "Lucas", last_name: "Frerichs", title: "Council Member", heal_city: "Davis, CA", organization: "Davis", email: "LucasFrerichs@yahoo.com" }
    contacts << { first_name: "Lucy", last_name: "Mallonee", title: "City Clerk/Admin Services Dir.", heal_city: "Los Banos, CA", organization: "Los Banos", email: "lucy.mallonee@losbanos.org" }
    contacts << { first_name: "Lucy", last_name: "Martin", title: "Council Member", heal_city: "Calabasas, CA", organization: "Calabasas", email: "lucymartin216@gmail.com" }
    contacts << { first_name: "Lupe", last_name: "Estrada", title: "City Treasurer", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "lupeestrada@cityofsanjoaquin.com" }
    contacts << { first_name: "Laurene", last_name: "Weste", title: "Mayor Pro Tem", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "Lweste@santa-clarita.com" }
    contacts << { first_name: "Lynne", last_name: "Ashbeck", title: "Mayor Pro Tem", heal_city: "Clovis, CA", organization: "Clovis", email: "lynnea@ci.clovis.ca.us" }
    contacts << { first_name: "Mark", last_name: "Alexander", title: "City Manager", heal_city: "La Canada Flintridge, CA", organization: "La Canada Flintridge", email: "malexander@lcf.ca.gov" }
    contacts << { first_name: "Maxwell", last_name: "Anderson", title: "Counci Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "manderson@cityofberkeley.info" }
    contacts << { first_name: "Mike", last_name: "Anderson", title: "Mayor", heal_city: "Lafayette, CA", organization: "Lafayette", email: "manderson@lovelafayette.org" }
    contacts << { first_name: "Mark", last_name: "Arapostathis", title: "Vice Mayor", heal_city: "La Mesa, CA", organization: "La Mesa", email: "marapostathis@ci.la-mesa.ca.us" }
    contacts << { first_name: "Marge", last_name: "Colapietro", title: "Council Member", heal_city: "Millbrae, CA", organization: "Millbrae", email: "marge4millbrae@att.net" }
    contacts << { first_name: "Marina", last_name: "Fraser", title: "Council Member", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "marinaf@hmbcity.com" }
    contacts << { first_name: "Mark", last_name: "Addiego", title: "Council Member", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "mark.addiego@ssf.net" }
    contacts << { first_name: "Mark", last_name: "Sorensen", title: "City Administrator/Finance Dir.", heal_city: "Biggs, CA", organization: "Biggs", email: "mark@biggs-ca.gov" }
    contacts << { first_name: "Mark", last_name: "Johannessen", title: "Council Member", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "markj@cityofwestsacramento.org" }
    contacts << { first_name: "Marvin", last_name: "Peixoto", title: "Mayor Pro Tem", heal_city: "Hayward, CA", organization: "Hayward", email: "marvin.peixoto@hayward-ca.gov" }
    contacts << { first_name: "Mary Ann", last_name: "Kline-Carbone", title: "Vice Mayor", heal_city: "Sand City, CA", organization: "Sand City", email: "maryann@sandcity.org" }
    contacts << { first_name: "Mary Ann", last_name: "Brigham", title: "Council Member", heal_city: "Cloverdale, CA", organization: "Cloverdale", email: "maryannbrigham@comcast.net" }
    contacts << { first_name: "Daniel", last_name: "Helix", title: "Mayor", heal_city: "Concord, CA", organization: "Concord", email: "maryrae@ci.concord.ca.us" }
    contacts << { first_name: "Karyl", last_name: "Matsumoto", title: "Mayor Pro Tem", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "matsumoto@ssf.net" }
    contacts << { first_name: "Mary Sue", last_name: "Maurer", title: "Mayor", heal_city: "Calabasas, CA", organization: "Calabasas", email: "maureredge@gmail.com" }
    contacts << { first_name: "Harvey", last_name: "Hall", title: "Mayor", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "mayor@bakersfieldcity.us" }
    contacts << { first_name: "Thomas", last_name: "Bates", title: "Mayor", heal_city: "Berkeley, CA", organization: "Berkeley", email: "mayor@cityofberkeley.info" }
    contacts << { first_name: "Victor", last_name: "Lopez", title: "Mayor Pro Tem", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "mayor@cityoforangecove.com" }
    contacts << { first_name: "Garrad", last_name: "Marsh", title: "Mayor", heal_city: "Modesto, CA", organization: "Modesto", email: "mayor@modestogov.com" }
    contacts << { first_name: "Julian", last_name: "Gold", title: "Council Member", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "mayorandcitycouncil@beverlyhills.org" }
    contacts << { first_name: "Pat", last_name: "Kolstad", title: "Council Member", heal_city: "Santa Clara, CA", organization: "Santa Clara", email: "mayorandcouncil@ci.santa-clara.ca.us" }
    contacts << { first_name: "Lisa", last_name: "Gillmor", title: "Council Member", heal_city: "Santa Clara, CA", organization: "Santa Clara", email: "mayorandcouncil@santaclaraca.gov" }
    contacts << { first_name: "Jamie", last_name: "Matthews", title: "Mayor", heal_city: "Santa Clara, CA", organization: "Santa Clara", email: "mayorandcouncil@santaclaraca.gov" }
    contacts << { first_name: "Michael", last_name: "Bennett", title: "Council Member", heal_city: "Goleta, CA", organization: "Goleta", email: "mbennett@cityofgoleta.org" }
    contacts << { first_name: "Martin", last_name: "Bernal", title: "City Manager", heal_city: "Santa Cruz, CA", organization: "Santa Cruz", email: "mbernal@cityofsantacruz.com" }
    contacts << { first_name: "Marlene", last_name: "Best", title: "City Manager", heal_city: "Imperial, CA", organization: "Imperial", email: "mbest@cityofimperial.org" }
    contacts << { first_name: "Manuel", last_name: "Carrillo, Jr.", title: "Dir of Rec & Community Services", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "mcarrillo@baldwinpark.com" }
    contacts << { first_name: "Melissa", last_name: "Chaney", title: "Human Resources Manager", heal_city: "Davis, CA", organization: "Davis", email: "mchaney@ci.davis.ca.us" }
    contacts << { first_name: "Melinda", last_name: "Ciarabellini", title: "Council Member", heal_city: "Eureka, CA", organization: "Eureka", email: "mciarabellini@ci.eureka.ca.gov" }
    contacts << { first_name: "Mark", last_name: "Crews", title: "Council Member", heal_city: "Galt, CA", organization: "Galt", email: "mcrews@ci.galt.ca.us" }
    contacts << { first_name: "Marvin", last_name: "Crist", title: "Council Member", heal_city: "Lancaster, CA", organization: "Lancaster", email: "mcrist@cityoflancasterca.org" }
    contacts << { first_name: "Myrna", last_name: "de Vera", title: "Vice Mayor", heal_city: "Hercules, CA", organization: "Hercules", email: "mdevera@ci.hercules.ca.us" }
    contacts << { first_name: "Marita", last_name: "Dorenbecher", title: "Council Member", heal_city: "Yountville, CA", organization: "Yountville", email: "mdorenbecher@yville.com" }
    contacts << { first_name: "Michael", last_name: "Dunsford", title: "Council Member", heal_city: "Calistoga, CA", organization: "Calistoga", email: "mdunsford@ci.calistoga.ca.us" }
    contacts << { first_name: "Kenneth", last_name: "Grey", title: "Mayor", heal_city: "Selma, CA", organization: "Selma", email: "melaniec@cityofselma.com" }
    contacts << { first_name: "Melissa", last_name: "Hunt", title: "Council Member", heal_city: "Anderson, CA", organization: "Anderson", email: "melissainanderson@yahoo.com" }
    contacts << { first_name: "Mike", last_name: "Evans", title: "Council Member", heal_city: "Blythe, CA", organization: "Blythe", email: "mevans@cityofblythe.ca.gov" }
    contacts << { first_name: "Marilyn", last_name: "Ezzy Ashcraft", title: "Council Member", heal_city: "Alameda, CA", organization: "Alameda", email: "mezzyashcraft@ci.alameda.ca.us" }
    contacts << { first_name: "Marie", last_name: "Fellhauer", title: "Council Member", heal_city: "El Segundo, CA", organization: "El Segundo", email: "mfellhauer@elsegundo.org" }
    contacts << { first_name: "Maureen", last_name: "Freschet", title: "Council Member", heal_city: "San Mateo, CA", organization: "San Mateo", email: "mfreschet@cityofsanmateo.org" }
    contacts << { first_name: "Mike", last_name: "Gardner", title: "Council Member", heal_city: "Riverside, CA", organization: "Riverside", email: "mgardner@riversideca.gov" }
    contacts << { first_name: "Monique", last_name: "Goetz", title: "Personnel Manager", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "mgoetz@cityofmissionviejo.org" }
    contacts << { first_name: "Michael", last_name: "Guingona", title: "Council Member", heal_city: "Daly City, CA", organization: "Daly City", email: "mguingona@dalycity.org" }
    contacts << { first_name: "Mitch", last_name: "Mashburn", title: "Council Member", heal_city: "Vacaville, CA", organization: "Vacaville", email: "mhmashburn@gmail.com" }
    contacts << { first_name: "Michael", last_name: "Holland", title: "City Manager", heal_city: "Newman, CA", organization: "Newman", email: "mholland@cityofnewman.com" }
    contacts << { first_name: "Mark", last_name: "Hughes", title: "Council Member", heal_city: "Benicia, CA", organization: "Benicia", email: "mhughes@ci.benicia.ca.us" }
    contacts << { first_name: "Maritza", last_name: "Hurtado", title: "Mayor", heal_city: "Calexico, CA", organization: "Calexico", email: "mhurtado@calexico.ca.gov" }
    contacts << { first_name: "Michael", last_name: "Lappert", title: "Council Member", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "michael@lapperts.com" }
    contacts << { first_name: "Mike", last_name: "Termini", title: "Council Member", heal_city: "Capitola, CA", organization: "Capitola", email: "michael@triadelectric.com" }
    contacts << { first_name: "Michael", last_name: "McHatten", title: "City Administrator", heal_city: "Angels Camp, CA", organization: "Angels Camp", email: "michaelmchatten@angelscamp.gov" }
    contacts << { first_name: "Michele", last_name: "Warren", title: "Human Resources Director", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "michele.warren@surfcity-hb.org" }
    contacts << { first_name: "Mikal", last_name: "Kirchner", title: "Recreation/Comm Svcs Dir", heal_city: "Selma, CA", organization: "Selma", email: "mikalK@cityofselma.com" }
    contacts << { first_name: "Michael", last_name: "Derr", title: "Council Member", heal_city: "Selma, CA", organization: "Selma", email: "mike.derr.b864@statefarm.com; mikederr1@yahoo.com" }
    contacts << { first_name: "Mike", last_name: "Kline", title: "Council Member", heal_city: "Ceres, CA", organization: "Ceres", email: "Mike.Kline@ci.ceres.ca.us" }
    contacts << { first_name: "Mike", last_name: "Tracy", title: "Mayor", heal_city: "Ventura, CA", organization: "Ventura", email: "mike.tracy@ci.ventura.ca.us" }
    contacts << { first_name: "Mike", last_name: "Villalta", title: "Mayor", heal_city: "Los Banos, CA", organization: "Los Banos", email: "mike.villalta@losbanos.org" }
    contacts << { first_name: "Mike", last_name: "Belknap", title: "Recreation & Comm Srvcs. Director", heal_city: "La Palma, CA", organization: "La Palma", email: "mikeb@cityoflapalma.org" }
    contacts << { first_name: "Gary", last_name: "Miller", title: "Mayor Pro Tem", heal_city: "Seal Beach, CA", organization: "Seal Beach", email: "miller.sb.district4@eartlink.net" }
    contacts << { first_name: "Mark", last_name: "Joseph", title: "Council Member", heal_city: "American Canyon, CA", organization: "American Canyon", email: "mjoseph@cityofamericancanyon.org" }
    contacts << { first_name: "Mark", last_name: "Landman", title: "Mayor", heal_city: "Cotati, CA", organization: "Cotati", email: "mlandman@ci.cotati.ca.us" }
    contacts << { first_name: "Mike", last_name: "Leonard", title: "Council Member", heal_city: "Hesperia, CA", organization: "Hesperia", email: "mleonard@cityofhesperia.us" }
    contacts << { first_name: "Manuel", last_name: "Lozano", title: "Mayor", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "mlozano@baldwinpark.com" }
    contacts << { first_name: "John", last_name: "King", title: "Council Member", heal_city: "Covina, CA", organization: "Covina", email: "mlwalcza@covinaca.gov" }
    contacts << { first_name: "Missy", last_name: "McArthur", title: "Council Member", heal_city: "Redding, CA", organization: "Redding", email: "mmcarthur@ci.redding.ca.us;robsmom@shasta.com" }
    contacts << { first_name: "Marjorie", last_name: "Mohler", title: "Council Member", heal_city: "Yountville, CA", organization: "Yountville", email: "mmohler@yville.com" }
    contacts << { first_name: "Monica", last_name: "Irons", title: "Human Resources Director", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "mmoloney@slocity.org" }
    contacts << { first_name: "Michael", last_name: "Morasco", title: "Council Member", heal_city: "Escondido, CA", organization: "Escondido", email: "mmorasco@econdido.org" }
    contacts << { first_name: "Mark", last_name: "Muir", title: "Council Member", heal_city: "Encinitas, CA", organization: "Encinitas", email: "mmuir@@encinitasca.gov" }
    contacts << { first_name: "Mike", last_name: "Nichols", title: "Mayor", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "mnichols@cosb.org" }
    contacts << { first_name: "Michael", last_name: "Okafor", title: "Personnel Manager", heal_city: "San Fernando, CA", organization: "San Fernando", email: "mokafor@ci.san-fernando.ca.us" }
    contacts << { first_name: "Mona", last_name: "Rios", title: "Council Member", heal_city: "National City, CA", organization: "National City", email: "monarios@nationalcityca.gov" }
    contacts << { first_name: "James", last_name: "Yarbrough", title: "Mayor", heal_city: "Anderson, CA", organization: "Anderson", email: "moneytilpayday@sbcglobal.net" }
    contacts << { first_name: "Monica", last_name: "Garcia", title: "Mayor Pro Tem", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "monica_garcia@baldwinpark.com" }
    contacts << { first_name: "Mary Lou", last_name: "Powers", title: "Mayor", heal_city: "Galt, CA", organization: "Galt", email: "mpowers@ci.galt.ca.us" }
    contacts << { first_name: "Michael", last_name: "Powers", title: "City Manager", heal_city: "King City, CA", organization: "King City", email: "mpowers@kingcity.com" }
    contacts << { first_name: "Miguel", last_name: "Pulido", title: "Mayor", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "mpulido@santa-ana.org" }
    contacts << { first_name: "Michelle", last_name: "Roman", title: "Council Member", heal_city: "Kingsburg, CA", organization: "Kingsburg", email: "mr4kingsburg@gmail.com" }
    contacts << { first_name: "Marcia", last_name: "Raines", title: "City Manager", heal_city: "Millbrae, CA", organization: "Millbrae", email: "mraines@ci.millbrae.ca.us" }
    contacts << { first_name: "Gary", last_name: "Yep", title: "Mayor", heal_city: "Kerman, CA", organization: "Kerman", email: "mreyes@cityofkerman.org" }
    contacts << { first_name: "Maribel", last_name: "Reyna", title: "City Manager", heal_city: "Delano, CA", organization: "Delano", email: "mreyna@cityofdelano.org" }
    contacts << { first_name: "Margie", last_name: "Rice", title: "Council Member", heal_city: "Westminster, CA", organization: "Westminster", email: "mrice@ci.westminster.ca.us" }
    contacts << { first_name: "Madeline", last_name: "Kellner", title: "Council Member", heal_city: "Novato, CA", organization: "Novato", email: "mrkellner@earthlink.net; mkellner@novato.org" }
    contacts << { first_name: "Mary", last_name: "Rocha", title: "Mayor Pro Tem", heal_city: "Antioch, CA", organization: "Antioch", email: "mrocha@brighter-beginnings.org" }
    contacts << { first_name: "Mark", last_name: "Ross", title: "Council Member", heal_city: "Martinez, CA", organization: "Martinez", email: "mross@cityofmartinez.org" }
    contacts << { first_name: "Martha", last_name: "Salcedo", title: "Council Member", heal_city: "Lathrop, CA", organization: "Lathrop", email: "msalcedo@ci.lathrop.ca.us" }
    contacts << { first_name: "Marlaine", last_name: "Sanders", title: "Human Resources Manager", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "msanders@prcity.com" }
    contacts << { first_name: "Mary Teresa", last_name: "Sessom", title: "Mayor", heal_city: "Lemon Grove, CA", organization: "Lemon Grove", email: "msessom@ci.lemon-grove.ca.us" }
    contacts << { first_name: "Michael", last_name: "Story", title: "City Manager", heal_city: "Rialto, CA", organization: "Rialto", email: "mstory@rialtoca.gov" }
    contacts << { first_name: "Mike", last_name: "Healy", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "mthealy@sbcglobal.net" }
    contacts << { first_name: "Mel", last_name: "Turner", title: "Council Member", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "mturner@citrusheights.net" }
    contacts << { first_name: "Mike", last_name: "Murphy", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "murphym@cityofmerced.org" }
    contacts << { first_name: "Mark", last_name: "Van Dam", title: "Council Member", heal_city: "Moorpark, CA", organization: "Moorpark", email: "mvandam@ci.moorpark.ca.us" }
    contacts << { first_name: "Monica", last_name: "Wilson", title: "Council Member", heal_city: "Antioch, CA", organization: "Antioch", email: "mwilson@ci.antioch.ca.us" }
    contacts << { first_name: "Michael", last_name: "Winkler", title: "Council Member", heal_city: "Arcata, CA", organization: "Arcata", email: "mwinkler@cityofarcata.org" }
    contacts << { first_name: "Michael", last_name: "Woiwode", title: "Mayor Pro Tem", heal_city: "Coronado, CA", organization: "Coronado", email: "mwoiwode@coronado.ca.us" }
    contacts << { first_name: "Marilyn", last_name: "Seward", title: "Council Member", heal_city: "Etna, CA", organization: "Etna", email: "mwseward@sisqtel.net" }
    contacts << { first_name: "Jess", last_name: "Benton", title: "Mayor", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "myokoyama@hillsborough.net" }
    contacts << { first_name: "Marie", last_name: "Chuang", title: "Council Member", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "myokoyama@hillsborough.net" }
    contacts << { first_name: "Lawrence", last_name: "May", title: "Vice Mayor", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "myokoyama@hillsborough.net" }
    contacts << { first_name: "Nanci", last_name: "Mills", title: "Admin Svcs Dir./Recreation/City Clerk", heal_city: "Winters, CA", organization: "Winters", email: "nanci.mills@cityofwinters.org" }
    contacts << { first_name: "Nancy", last_name: "Bilicich", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "nancy.bilicich@cityofwatsonville.org" }
    contacts << { first_name: "Neal", last_name: "Andrews", title: "Council Member", heal_city: "Ventura, CA", organization: "Ventura", email: "nandrews@cityofventura.net" }
    contacts << { first_name: "Nathaniel", last_name: "Bates", title: "Council Member", heal_city: "Richmond, CA", organization: "Richmond", email: "natbates@pacbell.net" }
    contacts << { first_name: "Nathan", last_name: "Magsig", title: "Council Member", heal_city: "Clovis, CA", organization: "Clovis", email: "nathanmagsig@sbcglobal.net" }
    contacts << { first_name: "Nick", last_name: "Candea", title: "Council Member", heal_city: "Newman, CA", organization: "Newman", email: "ncandea@logisticsinc.com" }
    contacts << { first_name: "N. Enrique", last_name: "Martinez", title: "City Manager", heal_city: "Redlands, CA", organization: "Redlands", email: "nemartinez@cityofredlands.org" }
    contacts << { first_name: "Owen", last_name: "Newcomer", title: "Mayor", heal_city: "Whittier, CA", organization: "Whittier", email: "newcomer_cityhall@charter.net" }
    contacts << { first_name: "Nathan", last_name: "Fox", title: "Council Member", heal_city: "Kerman, CA", organization: "Kerman", email: "nfox@cityofkerman.org" }
    contacts << { first_name: "Nathalie", last_name: "Manning", title: "Assistant to City Manager", heal_city: "Watsonville, CA", organization: "Watsonville", email: "nmanning@ci.watsonville.ca.us" }
    contacts << { first_name: "Nilo", last_name: "Michelin", title: "Council Member", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "nmichelin@cityofhawthorne.org" }
    contacts << { first_name: "Nora", last_name: "Davis", title: "Council Member", heal_city: "Emeryville, CA", organization: "Emeryville", email: "noradavis652@sbcglobal.net" }
    contacts << { first_name: "Nikki", last_name: "Salas", title: "Human Resources Dir./Risk Manager", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "nsalas@applevalley.org" }
    contacts << { first_name: "Nestor", last_name: "Valencia", title: "Council Member", heal_city: "Bell, CA", organization: "Bell", email: "nvalencia@cityofbell.org" }
    contacts << { first_name: "Noemi", last_name: "Zamudio", title: "Human Resources Director", heal_city: "Delano, CA", organization: "Delano", email: "nzamudio@cityofdelano.org" }
    contacts << { first_name: "Oscar", last_name: "Galvan", title: "Mayor", heal_city: "Blythe, CA", organization: "Blythe", email: "ogalvan@cityofblythe.ca.gov" }
    contacts << { first_name: "Oliver", last_name: "Baines", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "oliver.baines@fresno.gov" }
    contacts << { first_name: "Opanyi", last_name: "Nasiali", title: "Mayor Pro Tem", heal_city: "Claremont, CA", organization: "Claremont", email: "onasiali@ci.claremont.ca.us" }
    contacts << { first_name: "Omar", last_name: "Ornelas", title: "Council Member", heal_city: "Lathrop, CA", organization: "Lathrop", email: "oornelas@ci.lathrop.ca.us" }
    contacts << { first_name: "Ovidiu", last_name: "Popescu", title: "Mayor Pro Tem", heal_city: "Loma Linda, CA", organization: "Loma Linda", email: "opopescu@lomalinda-ca.gov" }
    contacts << { first_name: "Maria", last_name: "Orozco", title: "Mayor", heal_city: "Gonzales, CA", organization: "Gonzales", email: "oromaria56@yahoo.com" }
    contacts << { first_name: "Owen", last_name: "Stiles", title: "Council Member", heal_city: "Gridley, CA", organization: "Gridley", email: "ostiles@gridley.ca.us" }
    contacts << { first_name: "Olivia", last_name: "Valentine", title: "Council Member", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "ovalentine@cityofhawthorne.org; ojvalentine@aol.com" }
    contacts << { first_name: "Dave", last_name: "Pacheco", title: "Council Member", heal_city: "Seaside, CA", organization: "Seaside", email: "pachecodave@comcast.net" }
    contacts << { first_name: "Patricia", last_name: "Aguilar", title: "Council Member", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "paguilar@ci.chula-vista.ca.us" }
    contacts << { first_name: "Pamela", last_name: "Kimball", title: "Council Member", heal_city: "Lindsay, CA", organization: "Lindsay", email: "pamkimball@hotmail.com" }
    contacts << { first_name: "Tzeitel", last_name: "Paras-Caracci", title: "Council Member", heal_city: "Duarte, CA", organization: "Duarte", email: "parast@accessduarte.com" }
    contacts << { first_name: "Patrick", last_name: "Aust", title: "Council Member - District 3", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "pat.aust@redondo.org" }
    contacts << { first_name: "Pat", last_name: "Meyering", title: "Council Member", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "pat.meyering@gmail.com" }
    contacts << { first_name: "Patrick", last_name: "Burt", title: "Council Member", heal_city: "Palo Alto, CA", organization: "Palo Alto", email: "patrick.burt@cityofpaloalto.org" }
    contacts << { first_name: "Robert", last_name: "Patton", title: "Council Member", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "patton4ib@yahoo.com" }
    contacts << { first_name: "Paul", last_name: "Caprioglio", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "paul.caprioglio@fresno.gov" }
    contacts << { first_name: "Paul", last_name: "Navazio", title: "City Manager", heal_city: "Woodland, CA", organization: "Woodland", email: "paul.navazio@cityofwoodland.org" }
    contacts << { first_name: "Pamela", last_name: "Bensoussan", title: "Council member", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "pbensoussan@chulavistaca.gov" }
    contacts << { first_name: "Pam", last_name: "Bertani", title: "Council Member", heal_city: "Fairfield, CA", organization: "Fairfield", email: "pbertani@fairfield.ca.gov" }
    contacts << { first_name: "Brian", last_name: "Bilbray", title: "Council Member", heal_city: "Imperial Beach, CA", organization: "Imperial Beach", email: "pbilbray@gmail.com" }
    contacts << { first_name: "Pauline", last_name: "Russo Cutter", title: "Council Member", heal_city: "San Leandro, CA", organization: "San Leandro", email: "pcutter@sanleandro.org" }
    contacts << { first_name: "Phillip", last_name: "Dupper", title: "Council Member", heal_city: "Loma Linda, CA", organization: "Loma Linda", email: "pdupper@lomalinda-ca.gov" }
    contacts << { first_name: "Joshua", last_name: "Pedrozo", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "pedrozoj@cityofmerced.org; jpedrozo1@hotmail.com" }
    contacts << { first_name: "Sam", last_name: "Penrod", title: "Human Resources Manager", heal_city: "San Clemente, CA", organization: "San Clemente", email: "penrods@san-clemente.org" }
    contacts << { first_name: "Perry", last_name: "Madison", title: "Human Resources Director", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "perry.madison@palmspringsca.gov" }
    contacts << { first_name: "Perry", last_name: "Woodward", title: "Mayor Pro Tem", heal_city: "Gilroy, CA", organization: "Gilroy", email: "perry.woodward@ci.gilroy.ca.us" }
    contacts << { first_name: "Peter", last_name: "Leroe-Munoz", title: "Council Member", heal_city: "Gilroy, CA", organization: "Gilroy", email: "peter.leroe-munoz@cityofgilroy.org" }
    contacts << { first_name: "Kristen", last_name: "Petersen", title: "Assistant City Manager", heal_city: "Duarte, CA", organization: "Duarte", email: "petersenk@accessduarte.com" }
    contacts << { first_name: "Philip", last_name: "Gallegos", title: "Community Services Director", heal_city: "Kerman, CA", organization: "Kerman", email: "pgallegos@cityofkerman.org" }
    contacts << { first_name: "Peter", last_name: "Gilbert", title: "Council Member", heal_city: "Lincoln, CA", organization: "Lincoln", email: "pgilbert@ci.lincoln.ca.us" }
    contacts << { first_name: "Patrick", last_name: "Hume", title: "Vice Mayor", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "phume@elkgrovecity.org" }
    contacts << { first_name: "Paula", last_name: "Islas", title: "Human Resources Administrator", heal_city: "Galt, CA", organization: "Galt", email: "pislas@ci.galt.ca.us" }
    contacts << { first_name: "Paul", last_name: "Joiner", title: "Council Member", heal_city: "Lincoln, CA", organization: "Lincoln", email: "pjoiner@ci.lincoln.ca.us" }
    contacts << { first_name: "Pat", last_name: "Kearney", title: "Council Member", heal_city: "Lawndale, CA", organization: "Lawndale", email: "pklawndale@aol.com" }
    contacts << { first_name: "Ryan", last_name: "McEachron", title: "Mayor Pro Tem", heal_city: "Victorville, CA", organization: "Victorville", email: "planning@ci.victorville.ca.us" }
    contacts << { first_name: "Paul", last_name: "Leon", title: "Mayor", heal_city: "Ontario, CA", organization: "Ontario", email: "pleon@ci.ontario.ca.us" }
    contacts << { first_name: "Paul", last_name: "Lewin", title: "Council Member", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "plewin2003@earthlink.net" }
    contacts << { first_name: "Patricia E.", last_name: "Martel", title: "City Manager", heal_city: "Daly City, CA", organization: "Daly City", email: "pmartel@dalycity.org" }
    contacts << { first_name: "P.J.", last_name: "Mellana", title: "Parks & Recreation Director", heal_city: "Bellflower, CA", organization: "Bellflower", email: "pmellana@bellflower.org" }
    contacts << { first_name: "Phil", last_name: "Mosley", title: "Community Services Director", heal_city: "Big Bear Lake, CA", organization: "Big Bear Lake", email: "pmosley@citybigbearlake.com" }
    contacts << { first_name: "Pat", last_name: "Nagy", title: "Council Member", heal_city: "Gustine, CA", organization: "Gustine", email: "pnagy@cityofgustine.com" }
    contacts << { first_name: "Philip", last_name: "O'Loane", title: "Council Member", heal_city: "San Ramon, CA", organization: "San Ramon", email: "poloane@sanramon.ca.gov" }
    contacts << { first_name: "Pauline", last_name: "Roccucci", title: "Council Member", heal_city: "Roseville, CA", organization: "Roseville", email: "proccucci@roseville.ca.us" }
    contacts << { first_name: "Deneen", last_name: "Proctor", title: "Support Services Director", heal_city: "Merced, CA", organization: "Merced", email: "proctord@cityofmerced.org" }
    contacts << { first_name: "Peter", last_name: "Rogers", title: "Mayor", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "progers@chinohills.org" }
    contacts << { first_name: "Patrick", last_name: "Slayter", title: "Council Member", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "ps.sebcc@gmail.com" }
    contacts << { first_name: "Phil", last_name: "Wagner", title: "City Manager", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "pwagner@bellgardens.org" }
    contacts << { first_name: "Romualdo", last_name: "Medina", title: "City Manager", heal_city: "Calipatria, CA", organization: "Calipatria", email: "r_medina@calipatria.com" }
    contacts << { first_name: "Roger", last_name: "Aceves", title: "Mayor", heal_city: "Goleta, CA", organization: "Goleta", email: "raceves@cityofgoleta.org" }
    contacts << { first_name: "Richard", last_name: "Cline", title: "Council Member", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "racline@menlopark.org" }
    contacts << { first_name: "Randall", last_name: "Stone", title: "Council Member", heal_city: "Chico, CA", organization: "Chico", email: "randall@randallstone.net" }
    contacts << { first_name: "Rick", last_name: "Angelocci", title: "Town Manager", heal_city: "Loomis, CA", organization: "Loomis", email: "rangelocci@loomis.ca.gov" }
    contacts << { first_name: "Randall", last_name: "Anstine", title: "City Manager", heal_city: "Calimesa, CA", organization: "Calimesa", email: "rastine@cityofcalimesa.net" }
    contacts << { first_name: "Ruth", last_name: "Atkin", title: "Council Member", heal_city: "Emeryville, CA", organization: "Emeryville", email: "ratkin1@aol.com" }
    contacts << { first_name: "Rusty", last_name: "Bailey", title: "Mayor", heal_city: "Riverside, CA", organization: "Riverside", email: "rbailey@riversideca.gov" }
    contacts << { first_name: "Robert", last_name: "Beck", title: "Mayor", heal_city: "Reedley, CA", organization: "Reedley", email: "rBeck@reedley.ca.gov" }
    contacts << { first_name: "Richard", last_name: "Belmudez", title: "City Manager", heal_city: "Perris, CA", organization: "Perris", email: "rbelmudez@cityofperris.org" }
    contacts << { first_name: "Robin", last_name: "Bettin", title: "Community Services Director", heal_city: "Poway, CA", organization: "Poway", email: "rbettin@poway.org" }
    contacts << { first_name: "Russell", last_name: "Blewett", title: "Council Member", heal_city: "Hesperia, CA", organization: "Hesperia", email: "rblewett@cityofhesperia.us" }
    contacts << { first_name: "Rosanna", last_name: "Bayon Moore", title: "City Manager", heal_city: "Brawley, CA", organization: "Brawley", email: "rbmoore@brawley-ca.gov" }
    contacts << { first_name: "Robert", last_name: "Bonincontri", title: "Council Member", heal_city: "Gonzales, CA", organization: "Gonzales", email: "rbonincontri@ci.gonzales.ca.us" }
    contacts << { first_name: "Roger", last_name: "Brossmer", title: "Council Member", heal_city: "Downey, CA", organization: "Downey", email: "rbrossmer@downeyca.org" }
    contacts << { first_name: "Robin", last_name: "Carder", title: "Council Member", heal_city: "La Verne, CA", organization: "La Verne", email: "rcarder@ci.la-verne.ca.us" }
    contacts << { first_name: "Rita", last_name: "Chapparosa", title: "Human Resource Analyst", heal_city: "Banning, CA", organization: "Banning", email: "rchapparosa@ci.banning.ca.us" }
    contacts << { first_name: "Ricardo", last_name: "Chavez", title: "Council Member", heal_city: "Delano, CA", organization: "Delano", email: "rchavez@cityofdelano.org" }
    contacts << { first_name: "Robert", last_name: "Cullen", title: "Mayor", heal_city: "King City, CA", organization: "King City", email: "rcullen@farmersagent.com" }
    contacts << { first_name: "Ronald", last_name: "Dailey", title: "Council Member", heal_city: "Loma Linda, CA", organization: "Loma Linda", email: "rdailey@llu.edu" }
    contacts << { first_name: "Ronald", last_name: "Smith", title: "Vice Mayor", heal_city: "Lancaster, CA", organization: "Lancaster", email: "rdsmith@cityoflancasterca.org" }
    contacts << { first_name: "Raymond", last_name: "Dunton", title: "Mayor Pro Tem", heal_city: "Bellflower, CA", organization: "Bellflower", email: "rdunton@bellflower.org" }
    contacts << { first_name: "Liz", last_name: "Reilly", title: "Mayor Pro Tem", heal_city: "Duarte, CA", organization: "Duarte", email: "reillyl@accessduarte.com" }
    contacts << { first_name: "Richard ", last_name: "Enea", title: "Mayor", heal_city: "Crescent City, CA", organization: "Crescent City", email: "renea@cc.crescentcity.org" }
    contacts << { first_name: "Roberta", last_name: "Fonzi", title: "Council Member", heal_city: "Atascadero, CA", organization: "Atascadero", email: "rfonzi@atascadero.org" }
    contacts << { first_name: "Rosanne", last_name: "Foust", title: "Council Member", heal_city: "Redwood City, CA", organization: "Redwood City", email: "rfoust@redwoodcity.org" }
    contacts << { first_name: "Ron", last_name: "Gastineau", title: "Council Member", heal_city: "Crescent City, CA", organization: "Crescent City", email: "rgastineau@cc.crescentcity.org" }
    contacts << { first_name: "Robert", last_name: "Gottschalk", title: "Council Member", heal_city: "Millbrae, CA", organization: "Millbrae", email: "rgottschalk@ci.millbrae.ca.us" }
    contacts << { first_name: "Randy", last_name: "Groom", title: "City Administrator/City Clerk", heal_city: "Exeter, CA", organization: "Exeter", email: "rgroom@exetercityhall.com" }
    contacts << { first_name: "Richard", last_name: "Hall", title: "Council Member", heal_city: "Yountville, CA", organization: "Yountville", email: "rhall@yville.com" }
    contacts << { first_name: "Richard", last_name: "Haydon", title: "City Manager", heal_city: "Santa Maria, CA", organization: "Santa Maria", email: "rhaydon@ci.santa-maria.ca.us" }
    contacts << { first_name: "Rod", last_name: "Hill", title: "City Controller/Director of Human Resources", heal_city: "Whittier, CA", organization: "Whittier", email: "rhill@cityofwhittier.org" }
    contacts << { first_name: "Rick", last_name: "Holley", title: "Mayor Pro Tem", heal_city: "Crescent City, CA", organization: "Crescent City", email: "rholley@cc.crescentcity.org" }
    contacts << { first_name: "Richard", last_name: "Garbarino", title: "Council Member", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "rich.garbarino@ssf.net; donna.ochoa@ssf.net" }
    contacts << { first_name: "Richard", last_name: "Moore", title: "Mayor Pro Tem", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "richardjmoore@santafesprings.org" }
    contacts << { first_name: "Richard", last_name: "Sun", title: "Mayor", heal_city: "San Marino, CA", organization: "San Marino", email: "richardsun88@gmail.com" }
    contacts << { first_name: "Rick", last_name: "Hutcheson", title: "Council Member", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "rick.hutcheson@palmspringsca.gov" }
    contacts << { first_name: "Rick", last_name: "Kowalczyk", title: "Mayor", heal_city: "Half Moon Bay, CA", organization: "Half Moon Bay", email: "rickk@hmbcity.com" }
    contacts << { first_name: "Emily", last_name: "Duncan", title: "Vice Mayor", heal_city: "Union City, CA", organization: "Union City", email: "rickl@unioncity.org" }
    contacts << { first_name: "Lorrin", last_name: "Ellis", title: "Council Member", heal_city: "Union City, CA", organization: "Union City", email: "rickl@unioncity.org" }
    contacts << { first_name: "Pat", last_name: "Gacoscos", title: "Council Member", heal_city: "Union City, CA", organization: "Union City", email: "rickl@unioncity.org" }
    contacts << { first_name: "Ricky", last_name: "Horst", title: "City Manager", heal_city: "Rocklin, CA", organization: "Rocklin", email: "ricky.horst@rocklin.ca.us" }
    contacts << { first_name: "Randy", last_name: "Johnson", title: "Mayor", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "rj12@comcast.net" }
    contacts << { first_name: "Richard", last_name: "Hernandez", title: "Council Member", heal_city: "Avalon, CA", organization: "Avalon", email: "rjhernadez229@yahoo.com" }
    contacts << { first_name: "Robert", last_name: "Poythress", title: "Mayor", heal_city: "Madera, CA", organization: "Madera", email: "rlpoythress@cbbank.com" }
    contacts << { first_name: "Robert", last_name: "McConnell", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "rmcconnell@ci.vallejo.ca.us" }
    contacts << { first_name: "Rene", last_name: "Mendez", title: "City Manager", heal_city: "Gonzales, CA", organization: "Gonzales", email: "rmendez@ci.gonzales.ca.us" }
    contacts << { first_name: "Ray", last_name: "Friend", title: "Council Member", heal_city: "Hollister, CA", organization: "Hollister", email: "rmfriend3@yahoo.com" }
    contacts << { first_name: "Roseann", last_name: "Mikos", title: "Council Member", heal_city: "Moorpark, CA", organization: "Moorpark", email: "rmikos@ci.moorpark.ca.us" }
    contacts << { first_name: "Renee", last_name: "Morgan", title: "Council Member", heal_city: "Danville, CA", organization: "Danville", email: "rmorgan@danville.ca.gov" }
    contacts << { first_name: "Ronald", last_name: "Morrison", title: "Mayor", heal_city: "National City, CA", organization: "National City", email: "rmorrison@nationalcityca.gov" }
    contacts << { first_name: "Robert", last_name: "Neiuber", title: "Interim HR Director", heal_city: "Azusa, CA", organization: "Azusa", email: "rneiuber@ci.azusa.ca.us" }
    contacts << { first_name: "Robert", last_name: "Gonzales", title: "Council Member", heal_city: "Azusa, CA", organization: "Azusa", email: "robertgonzales@ci.azusa.ca.us" }
    contacts << { first_name: "Richard", last_name: "O'Brien", title: "Mayor", heal_city: "Riverbank, CA", organization: "Riverbank", email: "robrien@riverbank.org; obrienriverbank@aol.com" }
    contacts << { first_name: "Roger", last_name: "Frith", title: "Mayor", heal_city: "Biggs, CA", organization: "Biggs", email: "rogerf@biggs-ca.gov" }
    contacts << { first_name: "Ronald", last_name: "Stearn", title: "Council Member", heal_city: "Sonora, CA", organization: "Sonora", email: "ronstearn@mlode.com" }
    contacts << { first_name: "Roy", last_name: "Francis", title: "Mayor Pro Tem", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "royfrancis73@yahoo.com" }
    contacts << { first_name: "Ramona", last_name: "Villarreal-Padilla", title: "Mayor", heal_city: "Lindsay, CA", organization: "Lindsay", email: "rpadilla@lindsay.ca.us" }
    contacts << { first_name: "Rhodes", last_name: "Rigsby", title: "Mayor", heal_city: "Loma Linda, CA", organization: "Loma Linda", email: "rrigsby@ahs.llumc.edu" }
    contacts << { first_name: "Ronda", last_name: "Rivera", title: "Human Resources Manager", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "rrivera@citrusheights.net" }
    contacts << { first_name: "Reynaldo", last_name: "Rodriguez", title: "Council Member", heal_city: "Hawaiian Gardens, CA", organization: "Hawaiian Gardens", email: "rrodriguez@hgcity.org" }
    contacts << { first_name: "Rita", last_name: "Rogers", title: "Council Member", heal_city: "Perris, CA", organization: "Perris", email: "rrogers@cityofperris.org" }
    contacts << { first_name: "Ron", last_name: "Rowlett", title: "Council Member", heal_city: "Vacaville, CA", organization: "Vacaville", email: "rrowlett@gmail.com" }
    contacts << { first_name: "Randy", last_name: "Rowse", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "RRowse@SantaBarbaraCA.gov" }
    contacts << { first_name: "Ricky", last_name: "Samayoa", title: "Mayor", heal_city: "Marysville, CA", organization: "Marysville", email: "rsamayoa@marysville.ca.us" }
    contacts << { first_name: "Rob", last_name: "Schmid", title: "Council Member", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "rschmid@ci.red-bluff.ca.us" }
    contacts << { first_name: "Rob", last_name: "Schroder", title: "Mayor", heal_city: "Martinez, CA", organization: "Martinez", email: "rschroder@cityofmartinez.org" }
    contacts << { first_name: "Randy", last_name: "Schwartz", title: "City Manager", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "rschwartz@hillsborough.net" }
    contacts << { first_name: "Deborah", last_name: "Lewis", title: "Council Member", heal_city: "Los Banos, CA", organization: "Los Banos", email: "rsolano@data.co.merced.ca.us" }
    contacts << { first_name: "Richard", last_name: "Spitler", title: "City Manager/Acting City Clerk", heal_city: "Calistoga, CA", organization: "Calistoga", email: "rspitler@ci.calistoga.ca.us" }
    contacts << { first_name: "Rochelle", last_name: "Swanson", title: "Council Member", heal_city: "Davis, CA", organization: "Davis", email: "rswanson@cityofdavis.org" }
    contacts << { first_name: "Robert", last_name: "Swift", title: "Council Member", heal_city: "Escalon, CA", organization: "Escalon", email: "rswift@cityofescalon.org" }
    contacts << { first_name: "Rick", last_name: "Vaccaro", title: "Vice Mayor", heal_city: "Fairfield, CA", organization: "Fairfield", email: "rvaccaro@fairfield.ca.gov" }
    contacts << { first_name: "Randy", last_name: "Voepel", title: "Mayor", heal_city: "Santee, CA", organization: "Santee", email: "rvoepel@ci.santee.ca.us" }
    contacts << { first_name: "Roy", last_name: "Wasden", title: "City Manager", heal_city: "Turlock, CA", organization: "Turlock", email: "rwasden@turlock.ca.us" }
    contacts << { first_name: "Sam", last_name: "Abed", title: "Mayor", heal_city: "Escondido, CA", organization: "Escondido", email: "sabed@ci.escondido.ca.us" }
    contacts << { first_name: "Sal", last_name: "Quintero", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "sal.quintero@fresno.gov" }
    contacts << { first_name: "Salvador", last_name: "Alatorre", title: "Mayor Pro Tem", heal_city: "Lynwood, CA", organization: "Lynwood", email: "salatorre@lynwood.ca.us" }
    contacts << { first_name: "Samuel", last_name: "Escobar", title: "City Manager", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "samescobar@cityoforangecove.com" }
    contacts << { first_name: "David", last_name: "Pendergrass", title: "Mayor", heal_city: "Sand City, CA", organization: "Sand City", email: "sandcitymyr@aol.com" }
    contacts << { first_name: "Sarah Glade", last_name: "Gurney", title: "Council Member", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "sarahcouncil@yahoo.com" }
    contacts << { first_name: "Sylvia", last_name: "Ballin", title: "Council Member", heal_city: "San Fernando, CA", organization: "San Fernando", email: "sballin@sfcity.org" }
    contacts << { first_name: "Steve", last_name: "Barr", title: "Council Member", heal_city: "Brentwood, CA", organization: "Brentwood", email: "sbarr@brentwoodca.gov" }
    contacts << { first_name: "Steve", last_name: "Berry", title: "Council Member", heal_city: "Buena Park, CA", organization: "Buena Park", email: "sberry@buenapark.com" }
    contacts << { first_name: "Suzanne", last_name: "Chan", title: "Council Member", heal_city: "Fremont, CA", organization: "Fremont", email: "schan@fremont.gov" }
    contacts << { first_name: "Steven", last_name: "Choi", title: "Mayor", heal_city: "Irvine, CA", organization: "Irvine", email: "schoi@cityofirvine.org" }
    contacts << { first_name: "Shawn", last_name: "Christianson", title: "Council Member", heal_city: "Hillsborough, CA", organization: "Hillsborough", email: "schristianson@hillsborough.net" }
    contacts << { first_name: "Shauna", last_name: "Clark", title: "City Manager", heal_city: "La Habra Heights, CA", organization: "La Habra Heights", email: "sclark@lhhcity.org" }
    contacts << { first_name: "Scott", last_name: "Silveira", title: "Council Member", heal_city: "Los Banos, CA", organization: "Los Banos", email: "scott.silveira@losbanos.org" }
    contacts << { first_name: "Scott", last_name: "Yuill", title: "Vice Mayor", heal_city: "Rocklin, CA", organization: "Rocklin", email: "scott.yuill@rocklin.ca.us" }
    contacts << { first_name: "Sam", last_name: "Couchman", title: "Mayor", heal_city: "Brawley, CA", organization: "Brawley", email: "scouchman@brawley-ca.gov" }
    contacts << { first_name: "Susan", last_name: "Crumly", title: "Human Resources/Risk Manager", heal_city: "Bellflower, CA", organization: "Bellflower", email: "scrumly@bellflower.org" }
    contacts << { first_name: "Scott", last_name: "Deitz", title: "Council Member", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "sdeitz@scottdeitz.com" }
    contacts << { first_name: "Sheri", last_name: "DeMaagd", title: "Personnel Director", heal_city: "Redding, CA", organization: "Redding", email: "sdemaagd@ci.redding.ca.us" }
    contacts << { first_name: "Steven", last_name: "Detrick", title: "Council Member", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "sdetrick@elkgrovecity.org" }
    contacts << { first_name: "Sonny", last_name: "Dhaliwal", title: "Mayor", heal_city: "Lathrop, CA", organization: "Lathrop", email: "sdhaliwal@ci.lathrop.ca.us" }
    contacts << { first_name: "Sandra", last_name: "Donnell", title: "Mayor", heal_city: "Belvedere, CA", organization: "Belvedere", email: "sdonnell@cityofbelvedere.org" }
    contacts << { first_name: "Stephen", last_name: "Dresser", title: "Council Member", heal_city: "Lathrop, CA", organization: "Lathrop", email: "sdresser@ci.larthrop.ca.us" }
    contacts << { first_name: "Sarah", last_name: "Eddy", title: "Human Resources Analyst", heal_city: "Turlock, CA", organization: "Turlock", email: "seddy@turlock.ca.us" }
    contacts << { first_name: "Serena", last_name: "Wright", title: "Human Resources Director", heal_city: "Culver City, CA", organization: "Culver City", email: "serena.wright@culvercity.org" }
    contacts << { first_name: "Sergio", last_name: "Contreras", title: "Council Member", heal_city: "Westminster, CA", organization: "Westminster", email: "sergio@sergiocontreras.com" }
    contacts << { first_name: "Suzanne", last_name: "Fuentes", title: "Mayor Pro Tem", heal_city: "El Segundo, CA", organization: "El Segundo", email: "sfuentes@elsegundo.org" }
    contacts << { first_name: "Scott", last_name: "Fund", title: "Mayor Pro Tem", heal_city: "Gonzales, CA", organization: "Gonzales", email: "sfund2368@yahoo.com" }
    contacts << { first_name: "Sergio", last_name: "Gonzalez", title: "City Manager", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "sgonzalez@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Teresa", last_name: "Boyce", title: "Council Member", heal_city: "Exeter, CA", organization: "Exeter", email: "sguillen@exetercityhall.com" }
    contacts << { first_name: "Robyn", last_name: "Stearns", title: "Mayor", heal_city: "Exeter, CA", organization: "Exeter", email: "sguillen@exetercityhall.com" }
    contacts << { first_name: "Steve", last_name: "Hansen", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "shansen@cityofsacramento.org" }
    contacts << { first_name: "Susan", last_name: "Harvey", title: "Council Member", heal_city: "Cotati, CA", organization: "Cotati", email: "sharvey@ci.cotati.ca.us" }
    contacts << { first_name: "Stephanie", last_name: "Harlan", title: "Mayor", heal_city: "Capitola, CA", organization: "Capitola", email: "shcapitola@aol.com" }
    contacts << { first_name: "Steven", last_name: "Hernandez", title: "Council Member", heal_city: "Coachella, CA", organization: "Coachella", email: "shernandez@coachella.org" }
    contacts << { first_name: "Sherry", last_name: "McCoy", title: "Council Member", heal_city: "Hercules, CA", organization: "Hercules", email: "sherrymccoy@diaovainc.com" }
    contacts << { first_name: "Shonna", last_name: "Haltermann", title: "Community Services Supervisor", heal_city: "Clovis, CA", organization: "Clovis", email: "shonnah@ci.clovis.ca.us" }
    contacts << { first_name: "David", last_name: "Shuey", title: "Council Member", heal_city: "Clayton, CA", organization: "Clayton", email: "shuey@rankinlaw.com" }
    contacts << { first_name: "Steve", last_name: "Janice", title: "Personnel Director", heal_city: "Fairfield, CA", organization: "Fairfield", email: "sjanice@fairfield.ca.gov" }
    contacts << { first_name: "Sandra", last_name: "Johnson", title: "Council Member", heal_city: "Lancaster, CA", organization: "Lancaster", email: "sjohnson@cityoflancasterca.org" }
    contacts << { first_name: "Scott", last_name: "Larsen", title: "Council Member", heal_city: "Bellflower, CA", organization: "Bellflower", email: "slarsen@bellflower.org" }
    contacts << { first_name: "David", last_name: "Sloan", title: "Council Member", heal_city: "Seal Beach, CA", organization: "Seal Beach", email: "sloandistrict@dslextreme.com" }
    contacts << { first_name: "Shawnna", last_name: "Maltbie", title: "Director of Human Resources", heal_city: "Daly City, CA", organization: "Daly City", email: "smaltbie@dalycity.org" }
    contacts << { first_name: "Scott", last_name: "Mann", title: "Mayor", heal_city: "Menifee, CA", organization: "Menifee", email: "smann@cityofmenifee.us" }
    contacts << { first_name: "Steven", last_name: "Martin", title: "Council Member", heal_city: "Paso Robles, CA", organization: "Paso Robles", email: "smartin@prcity.com" }
    contacts << { first_name: "Steve", last_name: "Miller", title: "Mayor", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "smiller@citrusheights.net" }
    contacts << { first_name: "Fred", last_name: "Smith", title: "Council Member", heal_city: "Buena Park, CA", organization: "Buena Park", email: "smithandson@sbcglobal.netfsmith@buenapark.com" }
    contacts << { first_name: "Scott W.", last_name: "Nelson", title: "Mayor", heal_city: "Placentia, CA", organization: "Placentia", email: "snelson977@yahoo.com;mperez@placentia.org" }
    contacts << { first_name: "Scott", last_name: "Ochoa", title: "City Manager", heal_city: "Glendale, CA", organization: "Glendale", email: "sochoa@ci.glendale.ca.us" }
    contacts << { first_name: "Shawn", last_name: "O'Connell", title: "Council Member", heal_city: "Rialto, CA", organization: "Rialto", email: "soconnell@rialtoca.gov" }
    contacts << { first_name: "Steve", last_name: "Okamoto", title: "Council Member", heal_city: "Foster City, CA", organization: "Foster City", email: "sokamoto@fostercity.org" }
    contacts << { first_name: "Sheryl", last_name: "Patton", title: "Community Services Officer", heal_city: "Mill Valley, CA", organization: "Mill Valley", email: "spatton@cityofmillvalley.org" }
    contacts << { first_name: "Shelia", last_name: "Pautsch", title: "Community Services Director", heal_city: "South Pasadena, CA", organization: "South Pasadena", email: "spautsch@ci.south-pasadena.ca.us" }
    contacts << { first_name: "Sam", last_name: "Pedroza", title: "Council Member", heal_city: "Claremont, CA", organization: "Claremont", email: "spedroza@ci.claremont.ca.us" }
    contacts << { first_name: "Bob", last_name: "Archuleta", title: "Council Member", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "spena@pico-rivera.org" }
    contacts << { first_name: "Gustavo", last_name: "Camacho", title: "Mayor", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "spena@pico-rivera.org" }
    contacts << { first_name: "Brent", last_name: "Tercero", title: "Council Member", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "spena@pico-rivera.org" }
    contacts << { first_name: "Scott", last_name: "Perkins", title: "Council Member", heal_city: "San Ramon, CA", organization: "San Ramon", email: "sperkins@sanramon.ca.gov" }
    contacts << { first_name: "Stacey", last_name: "Peterson", title: "Human Resources Manager", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "speterson@cityofranchocordova.org" }
    contacts << { first_name: "Stephen", last_name: "Pischel", title: "Director of Administrative Services", heal_city: "Placentia, CA", organization: "Placentia", email: "spischel@placentia.org" }
    contacts << { first_name: "Susan", last_name: "Rubio", title: "Council Member", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "srubio@baldwinpark.com" }
    contacts << { first_name: "Stephen", last_name: "Salvatore", title: "City Manager", heal_city: "Lathrop, CA", organization: "Lathrop", email: "ssalvatore@ci.lathrop.ca.us" }
    contacts << { first_name: "Sonny", last_name: "Santa Ines", title: "Council Member", heal_city: "Bellflower, CA", organization: "Bellflower", email: "ssantaines@bellflower.org" }
    contacts << { first_name: "Scott", last_name: "Schoeffel", title: "Council Member", heal_city: "Dana Point, CA", organization: "Dana Point", email: "sschoeffel@danapoint.org" }
    contacts << { first_name: "Spencer", last_name: "Short", title: "Council Member", heal_city: "Lincoln, CA", organization: "Lincoln", email: "sshort@ci.lincoln.ca.us" }
    contacts << { first_name: "Sara", last_name: "Somogyi", title: "Director of Recreation & Community Services", heal_city: "Arcadia, CA", organization: "Arcadia", email: "ssomogyi@ci.arcadia.ca.us" }
    contacts << { first_name: "Stacey", last_name: "Stevenson", title: "Director of Human Resources", heal_city: "National City, CA", organization: "National City", email: "sstevenson@nationalcityca.gov" }
    contacts << { first_name: "Dirk", last_name: "Starbuck", title: "Mayor Pro Tem", heal_city: "Lompoc, CA", organization: "Lompoc", email: "starbuck.dl@hotmail.com" }
    contacts << { first_name: "Steve", last_name: "Aspel", title: "Council Member - District 1", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "steve.aspel@redondo.org" }
    contacts << { first_name: "Steve", last_name: "Brandau", title: "Council Member", heal_city: "Fresno, CA", organization: "Fresno", email: "steve.brandau@fresno.gov" }
    contacts << { first_name: "Stephen", last_name: "Pougnet", title: "Mayor", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "steve.pougnet@palmspringsca.gov" }
    contacts << { first_name: "Steven", last_name: "Nascimento", title: "Council Member", heal_city: "Turlock, CA", organization: "Turlock", email: "steven.nasc@gmail.com" }
    contacts << { first_name: "Steve", last_name: "Shanahan", title: "Mayor Pro Tem", heal_city: "La Palma, CA", organization: "La Palma", email: "steves@cityoflapalma.org" }
    contacts << { first_name: "Sal", last_name: "Tinajero", title: "Mayor Pro Tem", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "stinajero@santa-ana.org" }
    contacts << { first_name: "Robert", last_name: "Storer", title: "Council Member", heal_city: "Danville, CA", organization: "Danville", email: "storer@ci.danville.ca.us" }
    contacts << { first_name: "Sal", last_name: "Torres", title: "Council Member", heal_city: "Daly City, CA", organization: "Daly City", email: "storres@dalycity.org" }
    contacts << { first_name: "Steve", last_name: "Tye", title: "Council Member", heal_city: "Diamond Bar, CA", organization: "Diamond Bar", email: "stye@diamondbarca.gov" }
    contacts << { first_name: "Sucy", last_name: "Collazo", title: "Council Member", heal_city: "Newark, CA", organization: "Newark", email: "Sucy.Collazo@newark.org" }
    contacts << { first_name: "Dave", last_name: "Sullivan", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "sullivand@surfcity-hb.org" }
    contacts << { first_name: "Steve", last_name: "Vaus", title: "Council Member", heal_city: "Poway, CA", organization: "Poway", email: "svaus@poway.org" }
    contacts << { first_name: "Susan", last_name: "Wengraf", title: "Council Member", heal_city: "Berkeley, CA", organization: "Berkeley", email: "swengraf@cityofberkeley.info" }
    contacts << { first_name: "Stewart", last_name: "Gary", title: "Vice Mayor", heal_city: "Livermore, CA", organization: "Livermore", email: "swgary@cityoflivermore.net" }
    contacts << { first_name: "Steve", last_name: "Zoet", title: "Director of Community Services", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "szoet@beverlyhills.org" }
    contacts << { first_name: "Thomas", last_name: "Adams", title: "Council Member", heal_city: "Monrovia, CA", organization: "Monrovia", email: "tadams@ci.monrovia.ca.us" }
    contacts << { first_name: "Tara", last_name: "Martin-Milius", title: "Council Member", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "taraforcouncil@gmail.com; taramilius@gmail.com" }
    contacts << { first_name: "TimBen", last_name: "Boydston", title: "Council Member", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "tboydston@santa-clarita.com" }
    contacts << { first_name: "Terri", last_name: "Brownlee", title: "HR & IT Director/Risk Manager", heal_city: "El Centro, CA", organization: "El Centro", email: "tbrownlee@cityofelcentro.org" }
    contacts << { first_name: "Tom", last_name: "Campbell", title: "Vice Mayor", heal_city: "Benicia, CA", organization: "Benicia", email: "tcampbell@ci.benicia.ca.us" }
    contacts << { first_name: "Terri", last_name: "Cassidy", title: "Human Resources Director", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "tcassidy@newportbeach.ca.gov" }
    contacts << { first_name: "Tom", last_name: "Chambers", title: "Council Member", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "tchambers@ci.healdsburg.ca.us" }
    contacts << { first_name: "Tom", last_name: "Davis", title: "Mayor", heal_city: "South Lake Tahoe, CA", organization: "South Lake Tahoe", email: "tdavis@cityofslt.us" }
    contacts << { first_name: "Tony", last_name: "Daysog", title: "Council Member", heal_city: "Alameda, CA", organization: "Alameda", email: "tdaysog@alamedaca.gov" }
    contacts << { first_name: "Theresa", last_name: "DellaSanta", title: "Deputy City Clerk", heal_city: "Atherton, CA", organization: "Atherton", email: "tdellasanta@ci.atherton.ca.us" }
    contacts << { first_name: "Tom", last_name: "Dunlop", title: "Council Member", heal_city: "Oakdale, CA", organization: "Oakdale", email: "tdunlop@ci.oakdale.ca.us" }
    contacts << { first_name: "Teresa", last_name: "Barrett", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "teresa4petaluma@comcast.net" }
    contacts << { first_name: "Terri", last_name: "Aulman", title: "Council Member", heal_city: "Gilroy, CA", organization: "Gilroy", email: "terri.aulman@cityofgilroy.org" }
    contacts << { first_name: "Terrie", last_name: "Stevens", title: "Personnel Manager", heal_city: "Brea, CA", organization: "Brea", email: "terries@cityofbrea.net" }
    contacts << { first_name: "Terry", last_name: "O'Day", title: "Council Member", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "terry.oday@smgov.net" }
    contacts << { first_name: "Terry", last_name: "O'Connell", title: "Council Member", heal_city: "Brisbane, CA", organization: "Brisbane", email: "terryoconnell@ci.brisbane.ca.us" }
    contacts << { first_name: "Thaddeus", last_name: "McCormack", title: "City Manager", heal_city: "Santa Fe Springs, CA", organization: "Santa Fe Springs", email: "ThaddeusMcCormack@SantaFeSprings.org" }
    contacts << { first_name: "Stan", last_name: "Thurston", title: "Mayor", heal_city: "Merced, CA", organization: "Merced", email: "thurstons@cityofmerced.org" }
    contacts << { first_name: "Tim", last_name: "Grayson", title: "Vice Mayor", heal_city: "Concord, CA", organization: "Concord", email: "timgrayson2010@hotmail.com" }
    contacts << { first_name: "Timothy", last_name: "Flynn", title: "Mayor", heal_city: "Oxnard, CA", organization: "Oxnard", email: "timothy.flynn@ci.oxnard.ca.us" }
    contacts << { first_name: "Toni", last_name: "Iseman", title: "Council Member", heal_city: "Laguna Beach, CA", organization: "Laguna Beach", email: "tiseman2@aol.com" }
    contacts << { first_name: "Wade", last_name: "Harper", title: "Mayor", heal_city: "Antioch, CA", organization: "Antioch", email: "tleach@ci.antioch.ca.us" }
    contacts << { first_name: "Norma", last_name: "Macias", title: "Council Member", heal_city: "El Monte, CA", organization: "El Monte", email: "tmendez@elmonteca.gov" }
    contacts << { first_name: "Ted", last_name: "Mertens", title: "Council Member", heal_city: "Indian Wells, CA", organization: "Indian Wells", email: "tmertens@indianwells.com" }
    contacts << { first_name: "Todd", last_name: "Kruper", title: "Council Member", heal_city: "Sand City, CA", organization: "Sand City", email: "todd@sandcity.org" }
    contacts << { first_name: "Tom", last_name: "Faria", title: "Council Member", heal_city: "Los Banos, CA", organization: "Los Banos", email: "tom.faria@losbanos.org" }
    contacts << { first_name: "Tom", last_name: "Haglund", title: "City Administrator", heal_city: "Gilroy, CA", organization: "Gilroy", email: "tom.haglund@ci.gilroy.ca.us" }
    contacts << { first_name: "Tom", last_name: "O'Malley", title: "Mayor", heal_city: "Atascadero, CA", organization: "Atascadero", email: "tomalley@atascadero.org" }
    contacts << { first_name: "Merl", last_name: "Abel", title: "Mayor", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "townclerk@yucca-valley.org" }
    contacts << { first_name: "Ty", last_name: "Peabody", title: "Council Member", heal_city: "Indian Wells, CA", organization: "Indian Wells", email: "tpeabody@indianwells.com" }
    contacts << { first_name: "Trina", last_name: "Coffman-Gomez", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "trina.coffman@cityofwatsonville.org" }
    contacts << { first_name: "Tracy", last_name: "Robinson", title: "Administrative Services Director", heal_city: "Lafayette, CA", organization: "Lafayette", email: "trobinson@lovelafayette.org" }
    contacts << { first_name: "Teri", last_name: "Silva", title: "Human Resources Director", heal_city: "Sunnyvale, CA", organization: "Sunnyvale", email: "tsilva@ci.sunnyvale.ca.us" }
    contacts << { first_name: "Tri", last_name: "Ta", title: "Mayor", heal_city: "Westminster, CA", organization: "Westminster", email: "tta@ci.westminster.ca.us" }
    contacts << { first_name: "Tony", last_name: "Tiscareno", title: "Council Member", heal_city: "Antioch, CA", organization: "Antioch", email: "ttiscareno@ci.antioch.ca.us" }
    contacts << { first_name: "Terry", last_name: "Tornek", title: "Council Member - District 7", heal_city: "Pasadena, CA", organization: "Pasadena", email: "ttornek@cityofpasadena.net" }
    contacts << { first_name: "Tom", last_name: "Williams", title: "Executive Director", heal_city: "Milpitas, CA", organization: "Milpitas", email: "twilliams@ci.milpitas.ca.gov" }
    contacts << { first_name: "Terri", last_name: "Zuniga", title: "Council Member", heal_city: "Santa Maria, CA", organization: "Santa Maria", email: "tzuniga@ci.santa-maria.ca.us" }
    contacts << { first_name: "Jim", last_name: "Navarro", title: "Council Member", heal_city: "Union City, CA", organization: "Union City", email: "uccouncil@jimnavarro.com" }
    contacts << { first_name: "Herb", last_name: "Weiner", title: "Mayor", heal_city: "Sausalito, CA", organization: "Sausalito", email: "up4days@aol.com" }
    contacts << { first_name: "Ursula", last_name: "Reed", title: "Council Member", heal_city: "San Leandro, CA", organization: "San Leandro", email: "ureed@ci.san-leandro.ca.us" }
    contacts << { first_name: "Valerie", last_name: "Barone", title: "Interim City Manager", heal_city: "Concord, CA", organization: "Concord", email: "valerie.barone@ci.concord.ca.us" }
    contacts << { first_name: "Victor", last_name: "Farfan", title: "Mayor", heal_city: "Hawaiian Gardens, CA", organization: "Hawaiian Gardens", email: "vfarfan@hawaiiangardenscity.org" }
    contacts << { first_name: "Maria", last_name: "Davila", title: "Council Member", heal_city: "South Gate, CA", organization: "South Gate", email: "vgalves@sogate.org" }
    contacts << { first_name: "W.H.", last_name: "De Witt", title: "Mayor", heal_city: "South Gate, CA", organization: "South Gate", email: "vgalvez@sogate.org" }
    contacts << { first_name: "Victor", last_name: "Gomez", title: "Council Member", heal_city: "Hollister, CA", organization: "Hollister", email: "vghollister@sbcglobal.net" }
    contacts << { first_name: "Vincent", last_name: "Hernandez II", title: "Council Member", heal_city: "Manteca, CA", organization: "Manteca", email: "vhernandez@ci.manteca.ca.us" }
    contacts << { first_name: "Vincent", last_name: "Sarmiento", title: "Council Member", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "vvsarmiento@santa-ana.org" }
    contacts << { first_name: "Wade", last_name: "Cowan", title: "Council Member", heal_city: "Winters, CA", organization: "Winters", email: "wade.cowan@cityofwinters.org" }
    contacts << { first_name: "Walter", last_name: "Allen, III", title: "Mayor Pro Tem", heal_city: "Covina, CA", organization: "Covina", email: "waltallen@aol.com" }
    contacts << { first_name: "William", last_name: "Brien", title: "Mayor", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "wbrien@beverlyhills.org" }
    contacts << { first_name: "Jack", last_name: "Colvard", title: "Council Member", heal_city: "Shafter, CA", organization: "Shafter", email: "wcolvard@shafter.com" }
    contacts << { first_name: "Wayne", last_name: "Cusick", title: "Council Member", heal_city: "Blythe, CA", organization: "Blythe", email: "wcusick@cityofblythe.ca.gov" }
    contacts << { first_name: "David", last_name: "Weinsoff", title: "Vice Mayor", heal_city: "Fairfax, CA", organization: "Fairfax", email: "weinsoff@ix.netcom.com" }
    contacts << { first_name: "W.F.", last_name: "Olsen", title: "Council Member", heal_city: "Avalon, CA", organization: "Avalon", email: "wfolsen@hotmail.com" }
    contacts << { first_name: "Willhans", last_name: "Ili", title: "Council Member", heal_city: "South El Monte, CA", organization: "South El Monte", email: "wili@soelmonte.org" }
    contacts << { first_name: "Michael", last_name: "Wilson", title: "Mayor Pro Tem", heal_city: "Indio, CA", organization: "Indio", email: "wilson4indio2010@aol.com" }
    contacts << { first_name: "Will", last_name: "Kaholokula", title: "Finance Director", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "wkaholokula@bellgardens.org" }
    contacts << { first_name: "Wayne", last_name: "Lee", title: "Council Member", heal_city: "Millbrae, CA", organization: "Millbrae", email: "wlee@ci.millbrae.ca.us" }
    contacts << { first_name: "Warren", last_name: "Lieberman", title: "Vice Mayor", heal_city: "Belmont, CA", organization: "Belmont", email: "wlieberman@belmont.gov" }
    contacts << { first_name: "Walter", last_name: "Munchheimer", title: "City Manager", heal_city: "Marysville, CA", organization: "Marysville", email: "wmunchheimer@marysville.ca.us" }
    contacts << { first_name: "Jennifer", last_name: "Wood", title: "Council Member", heal_city: "California City, CA", organization: "California City", email: "woodjennifer55@gmail.com" }
    contacts << { first_name: "Woody", last_name: "Fridae", title: "Mayor Pro Tem", heal_city: "Winters, CA", organization: "Winters", email: "woody.fridae@cityofwinters.org" }
    contacts << { first_name: "William", last_name: "Phillips", title: "Mayor Pro Tem", heal_city: "Aliso Viejo, CA", organization: "Aliso Viejo", email: "wphillips@cityofalisoviejo.com" }
    contacts << { first_name: "Wendy", last_name: "Silva", title: "Human Resources Director", heal_city: "Madera, CA", organization: "Madera", email: "wsilva@cityofmadera.com" }
    contacts << { first_name: "Bill", last_name: "DeHart", title: "Council Member", heal_city: "Turlock, CA", organization: "Turlock", email: "wwdehart@gmail.com" }
    contacts << { first_name: "Mary", last_name: "Swink", title: "Interim City Manager", heal_city: "Alhambra, CA", organization: "Alhambra", email: "ybarrios@cityofalhambra.org" }
    contacts << { first_name: "Nathan", last_name: "Coapstick", title: "PW Project Coordinator", heal_city: "Adelanto, CA", organization: "Adelanto", email: "" }
    contacts << { first_name: "Charley", last_name: "Glasper", title: "Council Member", heal_city: "Adelanto, CA", organization: "Adelanto", email: "" }
    contacts << { first_name: "Cindy", last_name: "Herrera", title: "City Clerk/Interim City Manager", heal_city: "Adelanto, CA", organization: "Adelanto", email: "" }
    contacts << { first_name: "Rich", last_name: "Kerr", title: "Mayor", heal_city: "Adelanto, CA", organization: "Adelanto", email: "" }
    contacts << { first_name: "Lillian", last_name: "Salcido", title: "Interim Personnel Director", heal_city: "Adelanto, CA", organization: "Adelanto", email: "" }
    contacts << { first_name: "John", last_name: "Woodard", title: "Council Member", heal_city: "Adelanto, CA", organization: "Adelanto", email: "" }
    contacts << { first_name: "Mike", last_name: "Kamino", title: "Plan & Comm. Dev. Director", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "" }
    contacts << { first_name: "Kimberly", last_name: "Rodrigues", title: "City Clerk", heal_city: "Agoura Hills, CA", organization: "Agoura Hills", email: "" }
    contacts << { first_name: "Lauren", last_name: "Myles", title: "City Clerk", heal_city: "Alhambra, CA", organization: "Alhambra", email: "" }
    contacts << { first_name: "Martin", last_name: "Ray", title: "Director of Community Services", heal_city: "Alhambra, CA", organization: "Alhambra", email: "" }
    contacts << { first_name: "Tara", last_name: "Schultz", title: "Asst. City Mgr./Director of Development Services", heal_city: "Alhambra, CA", organization: "Alhambra", email: "" }
    contacts << { first_name: "Juanita", last_name: "Barnett", title: "City Clerk", heal_city: "Anderson, CA", organization: "Anderson", email: "" }
    contacts << { first_name: "Baron", last_name: "Browning", title: "Council Member", heal_city: "Anderson, CA", organization: "Anderson", email: "" }
    contacts << { first_name: "Norma", last_name: "Comnick", title: "Council Member", heal_city: "Anderson, CA", organization: "Anderson", email: "" }
    contacts << { first_name: "Kristen", last_name: "Maze", title: "Planning Director", heal_city: "Anderson, CA", organization: "Anderson", email: "" }
    contacts << { first_name: "Steve", last_name: "Duran", title: "City Manager", heal_city: "Antioch, CA", organization: "Antioch", email: "" }
    contacts << { first_name: "Forrest", last_name: "Ebbs", title: "Community Development Director", heal_city: "Antioch, CA", organization: "Antioch", email: "" }
    contacts << { first_name: "Michelle", last_name: "Fitzer", title: "Human Resource Director", heal_city: "Antioch, CA", organization: "Antioch", email: "" }
    contacts << { first_name: "Nancy", last_name: "Kaiser", title: "Park & Recreation Director", heal_city: "Antioch, CA", organization: "Antioch", email: "" }
    contacts << { first_name: "Lori", last_name: "Ogorchock", title: "Mayor Pro Tem", heal_city: "Antioch, CA", organization: "Antioch", email: "" }
    contacts << { first_name: "Arne", last_name: "Simonsen", title: "City Clerk", heal_city: "Antioch, CA", organization: "Antioch", email: "" }
    contacts << { first_name: "Art", last_name: "Bishop", title: "Council Member", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "" }
    contacts << { first_name: "Larry", last_name: "Cusack", title: "Mayor", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "" }
    contacts << { first_name: "Curt", last_name: "Emick", title: "Council Member", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "" }
    contacts << { first_name: "Lori", last_name: "Lamson", title: "Asst Town Manager, Community & Develop. Services", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "" }
    contacts << { first_name: "La Vonda", last_name: "Pearson", title: "Town Clerk", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "" }
    contacts << { first_name: "Ralph", last_name: "Wright", title: "Parks & Recreation Manager", heal_city: "Apple Valley, CA", organization: "Apple Valley", email: "" }
    contacts << { first_name: "Robert", last_name: "Brown", title: "Planning Consultant/Town Planner", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "Karen", last_name: "Diemer", title: "City Manager", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "Bridget", last_name: "Dory", title: "City Clerk", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "Larry", last_name: "Oetker", title: "Community Dev & Planning Director", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "Sofia", last_name: "Pereira", title: "Council Member", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "Paul", last_name: "Pitino", title: "Vice Mayor", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "George", last_name: "Williamson", title: "Planning Director", heal_city: "Arcata, CA", organization: "Arcata", email: "" }
    contacts << { first_name: "Kristen", last_name: "Barneich", title: "Council Member", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Tim", last_name: "Brown", title: "Council Member", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Barbara", last_name: "Harmon", title: "Council Member", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Jim", last_name: "Hill", title: "Mayor", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Teresa", last_name: "McClish", title: "Community Development Director", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "John", last_name: "Rogers", title: "Recreation Director", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Dianne", last_name: "Thompson", title: "City Manager", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Kelly", last_name: "Wetmore", title: "City Clerk", heal_city: "Arroyo Grande, CA", organization: "Arroyo Grande", email: "" }
    contacts << { first_name: "Cinde", last_name: "Cassidy", title: "Council Member", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Amanda", last_name: "Cook", title: "Planning Director", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Ben", last_name: "Harvey", title: "City Manager", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Ann", last_name: "Marshall", title: "Mayor", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Jennifer", last_name: "Monroe", title: "Parks & Recreation Director", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Denise", last_name: "Radde", title: "City Clerk/Chief Administrative Officer", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Joe", last_name: "Sampson", title: "Council Member", heal_city: "Avalon, CA", organization: "Avalon", email: "" }
    contacts << { first_name: "Edward", last_name: "Alvarez", title: "Mayor Pro Tem", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Troy", last_name: "Butzlaff", title: "City Manager", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Kurt", last_name: "Christiansen", title: "Economic & Community Development Director", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Susan", last_name: "Cole", title: "Senior Planner", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Jeffrey", last_name: "Cornejo", title: "City Clerk", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Joe", last_name: "Jacobs", title: "Director of Recreation and Family Svcs.", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Joseph", last_name: "Rocha", title: "Mayor", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Theresa", last_name: "St. Peter", title: "Interim Human Resource Dir.", heal_city: "Azusa, CA", organization: "Azusa", email: "" }
    contacts << { first_name: "Roberta", last_name: "Gafford", title: "City Clerk", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Jacqui", last_name: "Kitchen", title: "Planning Director", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Terry", last_name: "Maxwell", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Douglas", last_name: "McIssac", title: "Economic Development Director", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Chris", last_name: "Parlier", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Willie", last_name: "Rivera", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Bob", last_name: "Smith", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Ken", last_name: "Weir", title: "Council Member", heal_city: "Bakersfield, CA", organization: "Bakersfield", email: "" }
    contacts << { first_name: "Alejandra", last_name: "Avila", title: "City Clerk", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "" }
    contacts << { first_name: "Cruz", last_name: "Baca", title: "Mayor Pro Tem", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "" }
    contacts << { first_name: "Marc", last_name: "Castagnola", title: "Community Dev Manager", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "" }
    contacts << { first_name: "Shama", last_name: "Curian", title: "Human Resources Manager", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "" }
    contacts << { first_name: "Amy", last_name: "Harbin", title: "Prinicipal Planner", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "" }
    contacts << { first_name: "Shannon", last_name: "Yauchzee", title: "Chief Executive Officer", heal_city: "Baldwin Park, CA", organization: "Baldwin Park", email: "" }
    contacts << { first_name: "Zaiton", last_name: "Abu-Bakar", title: "Community Development Director", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "Marie", last_name: "Calderon", title: "City Clerk", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "Brian", last_name: "Guillot", title: "Acting Community Development Director", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "Dean", last_name: "Martin", title: "Interim City Manager", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "Ed", last_name: "Miller", title: "Council Member", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "George", last_name: "Moyer", title: "Council Member", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "Don", last_name: "Peterson", title: "Council Member", heal_city: "Banning, CA", organization: "Banning", email: "" }
    contacts << { first_name: "Merrill", last_name: "Gracey", title: "Council Member", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Rich", last_name: "Harpole", title: "Council Member", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Carmen", last_name: "Hernandez", title: "Planning Commissioner", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Michael", last_name: "Massimini", title: "City Planner", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Terri", last_name: "Peralta", title: "Parks & Recreation Director", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Ron", last_name: "Rector", title: "Community & Econ. Dev. Dir.", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Ava", last_name: "Reyes", title: "IT Manager", heal_city: "Barstow, CA", organization: "Barstow", email: "" }
    contacts << { first_name: "Rebecca", last_name: "Deming", title: "Planning Director", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Elizabeth", last_name: "Gibbs-Urtiaga", title: "Acting City Manager", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Brenda", last_name: "Knight", title: "Mayor", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Mike", last_name: "Lara", title: "Council Member", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Julio", last_name: "Martinez", title: "City Clerk", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Mark", last_name: "Orozco", title: "Council Member", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Robert", last_name: "Sherwood", title: "Parks & Recreation Director", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Lloyd", last_name: "White", title: "Council Member", heal_city: "Beaumont, CA", organization: "Beaumont", email: "" }
    contacts << { first_name: "Angela", last_name: "Bustamante", title: "Acting City Clerk", heal_city: "Bell, CA", organization: "Bell", email: "" }
    contacts << { first_name: "Fidencio Joel", last_name: "Gallardo", title: "Council Member", heal_city: "Bell, CA", organization: "Bell", email: "" }
    contacts << { first_name: "Joe ", last_name: "Perez", title: "Public Works Dir/Planning Dir.", heal_city: "Bell, CA", organization: "Bell", email: "" }
    contacts << { first_name: "Alicia", last_name: "Romero", title: "Vice Mayor", heal_city: "Bell, CA", organization: "Bell", email: "" }
    contacts << { first_name: "Pamela", last_name: "Wasserman", title: "Parks & Recreation Director", heal_city: "Bell, CA", organization: "Bell", email: "" }
    contacts << { first_name: "Chris", last_name: "Daste", title: "Recreation & Community Srvcs Dir.", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "" }
    contacts << { first_name: "Lina", last_name: "Hernandez", title: "Acting City Clerk", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "" }
    contacts << { first_name: "Jose", last_name: "Mendoza", title: "Council Member", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "" }
    contacts << { first_name: "Maria", last_name: "Pulido", title: "Council Member", heal_city: "Bell Gardens, CA", organization: "Bell Gardens", email: "" }
    contacts << { first_name: "Terri", last_name: "Cook", title: "City Clerk", heal_city: "Belmont, CA", organization: "Belmont", email: "" }
    contacts << { first_name: "Carlos", last_name: "deMelo", title: "Community Dev & Planning Director", heal_city: "Belmont, CA", organization: "Belmont", email: "" }
    contacts << { first_name: "Eric", last_name: "Reed", title: "Council Member", heal_city: "Belmont, CA", organization: "Belmont", email: "" }
    contacts << { first_name: "Charles", last_name: "Stone", title: "Council Member", heal_city: "Belmont, CA", organization: "Belmont", email: "" }
    contacts << { first_name: "Cathy", last_name: "Wright", title: "Council Member", heal_city: "Belmont, CA", organization: "Belmont", email: "" }
    contacts << { first_name: "Mike", last_name: "Dotson", title: "Parks & Community Services Dir.", heal_city: "Benicia, CA", organization: "Benicia", email: "" }
    contacts << { first_name: "Lisa", last_name: "Wolfe", title: "City Clerk", heal_city: "Benicia, CA", organization: "Benicia", email: "" }
    contacts << { first_name: "Mahdi", last_name: "Aluzri", title: "Interim City Manager", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "" }
    contacts << { first_name: "Lili", last_name: "Bosse", title: "Council Member", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "" }
    contacts << { first_name: "Susan", last_name: "Healy Keene, AICP", title: "Community Dev. Director", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "" }
    contacts << { first_name: "Shelley", last_name: "Ovrom", title: "Asst. Dir. Admin Services/Dir. HR", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "" }
    contacts << { first_name: "Byron", last_name: "Pope", title: "City Clerk", heal_city: "Beverly Hills, CA", organization: "Beverly Hills", email: "" }
    contacts << { first_name: "Patricia", last_name: "Gardner", title: "Mayor", heal_city: "Bishop, CA", organization: "Bishop", email: "" }
    contacts << { first_name: "Joe", last_name: "Pesci", title: "Council Member", heal_city: "Bishop, CA", organization: "Bishop", email: "" }
    contacts << { first_name: "Robin", last_name: "Picken", title: "Assistant City Clerk", heal_city: "Bishop, CA", organization: "Bishop", email: "" }
    contacts << { first_name: "Karen", last_name: "Schwartz", title: "Council Member", heal_city: "Bishop, CA", organization: "Bishop", email: "" }
    contacts << { first_name: "Jim", last_name: "Tatum", title: "City Administrator", heal_city: "Bishop, CA", organization: "Bishop", email: "" }
    contacts << { first_name: "Lillian", last_name: "Harris-Neal", title: "City Clerk", heal_city: "Brea, CA", organization: "Brea", email: "" }
    contacts << { first_name: "Cecilia", last_name: "Hupp", title: "Council Member", heal_city: "Brea, CA", organization: "Brea", email: "" }
    contacts << { first_name: "Christine", last_name: "Marick", title: "Council Member", heal_city: "Brea, CA", organization: "Brea", email: "" }
    contacts << { first_name: "Eric", last_name: "Nicoll", title: "Public Works Director", heal_city: "Brea, CA", organization: "Brea", email: "" }
    contacts << { first_name: "Glenn", last_name: "Parker", title: "Council Member", heal_city: "Brea, CA", organization: "Brea", email: "" }
    contacts << { first_name: "Steven", last_name: "Vargas", title: "Council Member", heal_city: "Brea, CA", organization: "Brea", email: "" }
    contacts << { first_name: "Gene", last_name: "Clare", title: "Council Member", heal_city: "Brentwood, CA", organization: "Brentwood", email: "" }
    contacts << { first_name: "Casey", last_name: "McCann", title: "Community Development Director", heal_city: "Brentwood, CA", organization: "Brentwood", email: "" }
    contacts << { first_name: "Bruce", last_name: "Mulder", title: "Director of Park & Recreation", heal_city: "Brentwood, CA", organization: "Brentwood", email: "" }
    contacts << { first_name: "Gustavo", last_name: "Vina", title: "City Manager", heal_city: "Brentwood, CA", organization: "Brentwood", email: "" }
    contacts << { first_name: "Margaret", last_name: "Wimberly", title: "City Clerk", heal_city: "Brentwood, CA", organization: "Brentwood", email: "" }
    contacts << { first_name: "Lori", last_name: "Liu", title: "Council Member", heal_city: "Brisbane, CA", organization: "Brisbane", email: "" }
    contacts << { first_name: "Raymond", last_name: "Miller", title: "Council Member", heal_city: "Brisbane, CA", organization: "Brisbane", email: "" }
    contacts << { first_name: "Sheri", last_name: "Spediacci", title: "City Clerk", heal_city: "Brisbane, CA", organization: "Brisbane", email: "" }
    contacts << { first_name: "John", last_name: "Swiecki", title: "Community Development Director", heal_city: "Brisbane, CA", organization: "Brisbane", email: "" }
    contacts << { first_name: "Michael", last_name: "Brownrigg", title: "Council Member", heal_city: "Burlingame, CA", organization: "Burlingame", email: "" }
    contacts << { first_name: "Margaret", last_name: "Glomstad", title: "Parks & Recreation Director", heal_city: "Burlingame, CA", organization: "Burlingame", email: "" }
    contacts << { first_name: "Lisa", last_name: "Goldman", title: "City Manager", heal_city: "Burlingame, CA", organization: "Burlingame", email: "" }
    contacts << { first_name: "Mary Ellen", last_name: "Kearney", title: "City Clerk", heal_city: "Burlingame, CA", organization: "Burlingame", email: "" }
    contacts << { first_name: "Ricardo", last_name: "Ortiz", title: "Council Member", heal_city: "Burlingame, CA", organization: "Burlingame", email: "" }
    contacts << { first_name: "John", last_name: "Root", title: "Council Member", heal_city: "Burlingame, CA", organization: "Burlingame", email: "" }
    contacts << { first_name: "Maricela", last_name: "Hernandez", title: "City Clerk", heal_city: "Calabasas, CA", organization: "Calabasas", email: "" }
    contacts << { first_name: "Russell", last_name: "Brady", title: "City Planner", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "" }
    contacts << { first_name: "Tim", last_name: "Brown", title: "Mayor Pro Tem", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "" }
    contacts << { first_name: "Dawn", last_name: "Haggerty", title: "Council Member", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "" }
    contacts << { first_name: "Ariel", last_name: "Hall", title: "City Clerk/Acting City Manager", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "" }
    contacts << { first_name: "Vicki", last_name: "Warren", title: "Council Member", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "" }
    contacts << { first_name: "John", last_name: "Zaitz", title: "Council Member", heal_city: "Canyon Lake, CA", organization: "Canyon Lake", email: "" }
    contacts << { first_name: "Gail", last_name: "Dixon-McMahon", title: "Director of Human Resources/Risk Management", heal_city: "Carson, CA", organization: "Carson", email: "" }
    contacts << { first_name: "Kenneth", last_name: "Farfsing", title: "City Manager", heal_city: "Carson, CA", organization: "Carson", email: "" }
    contacts << { first_name: "Cedric", last_name: "Hicks", title: "Director of Community Services", heal_city: "Carson, CA", organization: "Carson", email: "" }
    contacts << { first_name: "Jawane", last_name: "Hilton", title: "Council Member", heal_city: "Carson, CA", organization: "Carson", email: "" }
    contacts << { first_name: "Saied", last_name: "Nasseh", title: "Planning Manager", heal_city: "Carson, CA", organization: "Carson", email: "" }
    contacts << { first_name: "Albert", last_name: "Robles", title: "Mayor", heal_city: "Carson, CA", organization: "Carson", email: "" }
    contacts << { first_name: "John", last_name: "Aguilar", title: "Council Member", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Mark", last_name: "Carnevale", title: "Council Member", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Stanley", last_name: "Henry", title: "Mayor", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Gary", last_name: "Howell", title: "City Clerk", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Shelley", last_name: "Kaplan", title: "Council", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Charles", last_name: "McClendon", title: "City Manager", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Sly", last_name: "Zelnys", title: "HR Manager", heal_city: "Cathedral City, CA", organization: "Cathedral City", email: "" }
    contacts << { first_name: "Rick", last_name: "Collins", title: "Recreation Director", heal_city: "Ceres, CA", organization: "Ceres", email: "" }
    contacts << { first_name: "Lori", last_name: "Frontella", title: "Interim City Clerk", heal_city: "Ceres, CA", organization: "Ceres", email: "" }
    contacts << { first_name: "Keith", last_name: "Howes", title: "HR Manager", heal_city: "Ceres, CA", organization: "Ceres", email: "" }
    contacts << { first_name: "Linda", last_name: "Ryno", title: "Council Member", heal_city: "Ceres, CA", organization: "Ceres", email: "" }
    contacts << { first_name: "Toby", last_name: "Wells", title: "Acting City Manager/Public Works Dir.", heal_city: "Ceres, CA", organization: "Ceres", email: "" }
    contacts << { first_name: "Tom", last_name: "Westbrook", title: "Planning/Community Dev. Dir.", heal_city: "Ceres, CA", organization: "Ceres", email: "" }
    contacts << { first_name: "Andrew", last_name: "Coolidge", title: "Council Member", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Frank", last_name: "Fields", title: "Finance Director", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Reanette", last_name: "Fillmer", title: "Council Member", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Ruben", last_name: "Martinez", title: "Public Works Director", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Sean", last_name: "Morgan", title: "Vice Mayor", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Mark", last_name: "Orme", title: "City Manager", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Debbie", last_name: "Presson", title: "City Clerk", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Tami", last_name: "Ritter", title: "Council Member", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Mark", last_name: "Sorensen", title: "Mayor", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Mark", last_name: "Wolfe", title: "Community Development Director", heal_city: "Chico, CA", organization: "Chico", email: "" }
    contacts << { first_name: "Anthony", last_name: "Arroyo", title: "Dir. Of Human Resources/Risk Management", heal_city: "Chino, CA", organization: "Chino", email: "" }
    contacts << { first_name: "Matt", last_name: "Ballantyne", title: "City Manager", heal_city: "Chino, CA", organization: "Chino", email: "" }
    contacts << { first_name: "Nicholas", last_name: "Liguori", title: "Director of Community Development", heal_city: "Chino, CA", organization: "Chino", email: "" }
    contacts << { first_name: "Angela", last_name: "Robles", title: "City Clerk", heal_city: "Chino, CA", organization: "Chino", email: "" }
    contacts << { first_name: "Cheryl", last_name: "Balz", title: "City Clerk", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "" }
    contacts << { first_name: "Rad", last_name: "Bartlam", title: "City Manager", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "" }
    contacts << { first_name: "Joann", last_name: "Lombardo", title: "Community Dev. Director", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "" }
    contacts << { first_name: "Ray", last_name: "Marquez", title: "Council Member", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "" }
    contacts << { first_name: "Jonathan", last_name: "Marshall", title: "Community Services Director", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "" }
    contacts << { first_name: "Cynthia", last_name: "Moran", title: "Mayor", heal_city: "Chino Hills, CA", organization: "Chino Hills", email: "" }
    contacts << { first_name: "Kelly", last_name: "Broughton", title: "Development Srvcs Dept. Dir.", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "Gary", last_name: "Halbert", title: "City Manager", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "John", last_name: "McCann", title: "Council Member", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "Kristi", last_name: "McClure", title: "Parks & Recreation Director", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "Steve", last_name: "Miesen", title: "Council Member", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "Donna", last_name: "Norris", title: "City Clerk", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "Mary", last_name: "Salas", title: "Mayor", heal_city: "Chula Vista, CA", organization: "Chula Vista", email: "" }
    contacts << { first_name: "Sue", last_name: "Frost", title: "Mayor", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "" }
    contacts << { first_name: "Rhonda", last_name: "Sherman", title: "Community & Economic Dev. Dir.", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "" }
    contacts << { first_name: "Amy", last_name: "Van", title: "City Clerk", heal_city: "Citrus Heights, CA", organization: "Citrus Heights", email: "" }
    contacts << { first_name: "Brian", last_name: "Desatnik", title: "Community Dev. Director", heal_city: "Claremont, CA", organization: "Claremont", email: "" }
    contacts << { first_name: "Shelley", last_name: "Desautels", title: "City Clerk", heal_city: "Claremont, CA", organization: "Claremont", email: "" }
    contacts << { first_name: "Anne", last_name: "Turner", title: "Parks & Recreation Director", heal_city: "Claremont, CA", organization: "Claremont", email: "" }
    contacts << { first_name: "Robert", last_name: "Ford", title: "General Services Director", heal_city: "Clovis, CA", organization: "Clovis", email: "" }
    contacts << { first_name: "John", last_name: "Holt", title: "Assistant City Manager", heal_city: "Clovis, CA", organization: "Clovis", email: "" }
    contacts << { first_name: "Dwight", last_name: "Kroll", title: "Planning and Development Svcs. Dir.", heal_city: "Clovis, CA", organization: "Clovis", email: "" }
    contacts << { first_name: "Tina", last_name: "Sumner", title: "Community Development Dir.", heal_city: "Clovis, CA", organization: "Clovis", email: "" }
    contacts << { first_name: "Ted", last_name: "Cooper", title: "Human Resources Manager", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Richard", last_name: "DeLaRosa", title: "Mayor", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Luis", last_name: "Gonzalez", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Jay", last_name: "Jarrin", title: "Senior Planner", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Frank", last_name: "Navarro", title: "Mayor Pro Tem", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Carolina", last_name: "Padilla", title: "City Clerk", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Isaac", last_name: "Suchil", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Summer", last_name: "Zamora Jorrin", title: "Council Member", heal_city: "Colton, CA", organization: "Colton", email: "" }
    contacts << { first_name: "Richard", last_name: "Bailey", title: "Council Member", heal_city: "Coronado, CA", organization: "Coronado", email: "" }
    contacts << { first_name: "Mary", last_name: "Clifford", title: "City Clerk", heal_city: "Coronado, CA", organization: "Coronado", email: "" }
    contacts << { first_name: "Carrie", last_name: "Downey", title: "Council Member", heal_city: "Coronado, CA", organization: "Coronado", email: "" }
    contacts << { first_name: "Rachel", last_name: "Hurst", title: "Director of Community Development", heal_city: "Coronado, CA", organization: "Coronado", email: "" }
    contacts << { first_name: "Amy", last_name: "Reeve", title: "Human Resources Manager", heal_city: "Coronado, CA", organization: "Coronado", email: "" }
    contacts << { first_name: "Bill", last_name: "Sandke", title: "Council Member", heal_city: "Coronado, CA", organization: "Coronado", email: "" }
    contacts << { first_name: "Sloan", last_name: "Bailey", title: "Council Member", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "" }
    contacts << { first_name: "Mario", last_name: "Fiorentini", title: "Recreation/Leisure Svcs Dir.", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "" }
    contacts << { first_name: "Rebecca", last_name: "Vaughn", title: "Town Clerk/Assistant to the Town Manager", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "" }
    contacts << { first_name: "Adam", last_name: "Wolff", title: "Director of Planning & Building", heal_city: "Corte Madera, CA", organization: "Corte Madera", email: "" }
    contacts << { first_name: "John", last_name: "Dell'Osso", title: "Council Member", heal_city: "Cotati, CA", organization: "Cotati", email: "" }
    contacts << { first_name: "John", last_name: "Moore", title: "Vice Mayor", heal_city: "Cotati, CA", organization: "Cotati", email: "" }
    contacts << { first_name: "Damien", last_name: "O'Bid", title: "Acting City Manager", heal_city: "Cotati, CA", organization: "Cotati", email: "" }
    contacts << { first_name: "Vicki", last_name: "Parker", title: "Director of Community Development", heal_city: "Cotati, CA", organization: "Cotati", email: "" }
    contacts << { first_name: "Wendy", last_name: "Skillman", title: "Mayor", heal_city: "Cotati, CA", organization: "Cotati", email: "" }
    contacts << { first_name: "Tamara", last_name: "Taylor", title: "City Clerk", heal_city: "Cotati, CA", organization: "Cotati", email: "" }
    contacts << { first_name: "Robert", last_name: "Blackwood", title: "Interim Human Resources Director", heal_city: "Covina, CA", organization: "Covina", email: "" }
    contacts << { first_name: "Nancy", last_name: "Fong", title: "Planning/Community Development Director", heal_city: "Covina, CA", organization: "Covina", email: "" }
    contacts << { first_name: "Jorge", last_name: "Marquez", title: "Council Member", heal_city: "Covina, CA", organization: "Covina", email: "" }
    contacts << { first_name: "Andrea", last_name: "Miller", title: "City Manager", heal_city: "Covina, CA", organization: "Covina", email: "" }
    contacts << { first_name: "Mary Lou", last_name: "Walczak", title: "Elected City Clerk", heal_city: "Covina, CA", organization: "Covina", email: "" }
    contacts << { first_name: "Cathy", last_name: "Hafterson", title: "Human Resources Manager", heal_city: "Crescent CIty, CA", organization: "Crescent CIty", email: "" }
    contacts << { first_name: "Matt", last_name: "Hildebrandt", title: "Parks and Recreation Manager", heal_city: "Crescent City, CA", organization: "Crescent City", email: "" }
    contacts << { first_name: "Blake", last_name: "Inscore", title: "Council Member", heal_city: "Crescent City, CA", organization: "Crescent City", email: "" }
    contacts << { first_name: "Kymmie", last_name: "Scott", title: "Deputy (Acting) City Clerk", heal_city: "Crescent City, CA", organization: "Crescent City", email: "" }
    contacts << { first_name: "Kristina", last_name: "Alfaro", title: "Administrative Services Director", heal_city: "Cupertino, CA", organization: "Cupertino", email: "" }
    contacts << { first_name: "David", last_name: "Brandt", title: "City Manager", heal_city: "Cupertino, CA", organization: "Cupertino", email: "" }
    contacts << { first_name: "Darcy", last_name: "Paul", title: "Council Member", heal_city: "Cupertino, CA", organization: "Cupertino", email: "" }
    contacts << { first_name: "Grace", last_name: "Schmidt", title: "City Clerk", heal_city: "Cupertino, CA", organization: "Cupertino", email: "" }
    contacts << { first_name: "Savita", last_name: "Vaidhyanathan", title: "Council Member", heal_city: "Cupertino, CA", organization: "Cupertino", email: "" }
    contacts << { first_name: "Richard", last_name: "Berger", title: "Community Development Dir.", heal_city: "Daly City, CA", organization: "Daly City", email: "" }
    contacts << { first_name: "David", last_name: "Canepa", title: "Vice Mayor", heal_city: "Daly City, CA", organization: "Daly City", email: "" }
    contacts << { first_name: "Judith", last_name: "Christensen", title: "Council Member", heal_city: "Daly City, CA", organization: "Daly City", email: "" }
    contacts << { first_name: "Joseph", last_name: "Curran", title: "Acting Library & Recreation Srvcs Dir.", heal_city: "Daly City, CA", organization: "Daly City", email: "" }
    contacts << { first_name: "Annette", last_name: "Hipona", title: "City Clerk", heal_city: "Daly City, CA", organization: "Daly City", email: "" }
    contacts << { first_name: "Tatum", last_name: "Mothershead", title: "Planning Manager", heal_city: "Daly City, CA", organization: "Daly City", email: "" }
    contacts << { first_name: "Michael", last_name: "Killebrew", title: "Administrative Services Director", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "Ursula", last_name: "Luna-Reynosa", title: "Planning Director", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "Joseph", last_name: "Muller", title: "Council Member", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "Carlos", last_name: "Olvera", title: "Mayor", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "John", last_name: "Tomlinson", title: "Council Member", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "Richard", last_name: "Viczorek", title: "Council Member", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "Kathy", last_name: "Ward", title: "City Clerk", heal_city: "Dana Point, CA", organization: "Dana Point", email: "" }
    contacts << { first_name: "Kevin", last_name: "Gailey", title: "Chief Of Planning/Building Official", heal_city: "Danville, CA", organization: "Danville", email: "" }
    contacts << { first_name: "Steven", last_name: "Lake", title: "Development Services Director/City Engineer", heal_city: "Danville, CA", organization: "Danville", email: "" }
    contacts << { first_name: "Henry", last_name: "Perezalonso", title: "Parks & Recreation Manager", heal_city: "Danville, CA", organization: "Danville", email: "" }
    contacts << { first_name: "Marie", last_name: "Sunseri", title: "City Clerk", heal_city: "Danville, CA", organization: "Danville", email: "" }
    contacts << { first_name: "Dirk", last_name: "Brazil", title: "City Manager", heal_city: "Davis, CA", organization: "Davis", email: "" }
    contacts << { first_name: "Robb", last_name: "Davis", title: "Mayor Pro Tem", heal_city: "Davis, CA", organization: "Davis", email: "" }
    contacts << { first_name: "Brett", last_name: "Lee", title: "Council Member", heal_city: "Davis, CA", organization: "Davis", email: "" }
    contacts << { first_name: "Zoe", last_name: "Mirabile", title: "City Clerk", heal_city: "Davis, CA", organization: "Davis", email: "" }
    contacts << { first_name: "Yvonne", last_name: "Quiring", title: "Asst. City Manager/Admin. Srvcs Dir.", heal_city: "Davis, CA", organization: "Davis", email: "" }
    contacts << { first_name: "Mike", last_name: "Webb", title: "Community Dev. Director", heal_city: "Davis, CA", organization: "Davis", email: "" }
    contacts << { first_name: "Ruben", last_name: "Hill", title: "Council Member", heal_city: "Delano, CA", organization: "Delano", email: "" }
    contacts << { first_name: "Phyllis", last_name: "Kraft", title: "City Clerk", heal_city: "Delano, CA", organization: "Delano", email: "" }
    contacts << { first_name: "Rueben", last_name: "Pascual", title: "Mayor", heal_city: "Delano, CA", organization: "Delano", email: "" }
    contacts << { first_name: "John", last_name: "Carrillo", title: "Parks & Recreation Director", heal_city: "Dinuba, CA", organization: "Dinuba", email: "" }
    contacts << { first_name: "Luis", last_name: "Patlan", title: "City Manager", heal_city: "Dinuba, CA", organization: "Dinuba", email: "" }
    contacts << { first_name: "Maribel", last_name: "Reynosa", title: "Council Member", heal_city: "Dinuba, CA", organization: "Dinuba", email: "" }
    contacts << { first_name: "Kuldip", last_name: "Thusu", title: "Council Member", heal_city: "Dinuba, CA", organization: "Dinuba", email: "" }
    contacts << { first_name: "Dean", last_name: "Uota", title: "Engineering & Planning Director", heal_city: "Dinuba, CA", organization: "Dinuba", email: "" }
    contacts << { first_name: "Sean", last_name: "Ashton", title: "Council Member", heal_city: "Downey, CA", organization: "Downey", email: "" }
    contacts << { first_name: "William", last_name: "Davis", title: "City Planner", heal_city: "Downey, CA", organization: "Downey", email: "" }
    contacts << { first_name: "Adria", last_name: "Jimenez", title: "City Clerk", heal_city: "Downey, CA", organization: "Downey", email: "" }
    contacts << { first_name: "Alex", last_name: "Saab", title: "Mayor Pro Tem", heal_city: "Downey, CA", organization: "Downey", email: "" }
    contacts << { first_name: "Arlene", last_name: "Salazar", title: "Parks & Recreation Director", heal_city: "Downey, CA", organization: "Downey", email: "" }
    contacts << { first_name: "Aldo", last_name: "Schindler", title: "Community Dev. Director", heal_city: "Downey, CA", organization: "Downey", email: "" }
    contacts << { first_name: "Marla", last_name: "Akana", title: "City Clerk", heal_city: "Duarte, CA", organization: "Duarte", email: "" }
    contacts << { first_name: "Craig", last_name: "Hensley", title: "Director of Community Dev.", heal_city: "Duarte, CA", organization: "Duarte", email: "" }
    contacts << { first_name: "Samuel", last_name: "Kang", title: "Mayor Pro Tem", heal_city: "Duarte, CA", organization: "Duarte", email: "" }
    contacts << { first_name: "Cesar", last_name: "Monsalve", title: "Parks & Recreation Director", heal_city: "Duarte, CA", organization: "Duarte", email: "" }
    contacts << { first_name: "Brian", last_name: "Villalobos", title: "Public Safety Director", heal_city: "Duarte, CA", organization: "Duarte", email: "" }
    contacts << { first_name: "Marc", last_name: "Donohue", title: "City Clerk", heal_city: "Eastvale, CA", organization: "Eastvale", email: "" }
    contacts << { first_name: "William", last_name: "Link", title: "Council Member", heal_city: "Eastvale, CA", organization: "Eastvale", email: "" }
    contacts << { first_name: "Clint", last_name: "Lorimore", title: "Council Member", heal_city: "Eastvale, CA", organization: "Eastvale", email: "" }
    contacts << { first_name: "Michele", last_name: "Nissen", title: "City Manager", heal_city: "Eastvale, CA", organization: "Eastvale", email: "" }
    contacts << { first_name: "Eric", last_name: "Norris", title: "Community Dev. Director", heal_city: "Eastvale, CA", organization: "Eastvale", email: "" }
    contacts << { first_name: "Joseph", last_name: "Tessari", title: "Council Member", heal_city: "Eastvale, CA", organization: "Eastvale", email: "" }
    contacts << { first_name: "Diane", last_name: "Caldwell", title: "City Clerk", heal_city: "El Centro, CA", organization: "El Centro", email: "" }
    contacts << { first_name: "Alex", last_name: "Cardenas", title: "Council Member", heal_city: "El Centro, CA", organization: "El Centro", email: "" }
    contacts << { first_name: "Norma", last_name: "Villicana", title: "Director of Planning and Zoning", heal_city: "El Centro, CA", organization: "El Centro", email: "" }
    contacts << { first_name: "Mark", last_name: "Friedman", title: "Mayor", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "" }
    contacts << { first_name: "Chris", last_name: "Jones", title: "Recreation Director", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "" }
    contacts << { first_name: "Karen", last_name: "Pinkos", title: "Assistant City Manager/Interim HR Manager", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "" }
    contacts << { first_name: "Gabe", last_name: "Quinto", title: "Council Member", heal_city: "El Cerrito, CA", organization: "El Cerrito", email: "" }
    contacts << { first_name: "Veronica", last_name: "Dolleschel", title: "Community Services Director", heal_city: "El Monte, CA", organization: "El Monte", email: "" }
    contacts << { first_name: 'Juventino "J."', last_name: "Gomez", title: "Council Member", heal_city: "El Monte, CA", organization: "El Monte", email: "" }
    contacts << { first_name: "Jonathan", last_name: "Hawes", title: "City Clerk", heal_city: "El Monte, CA", organization: "El Monte", email: "" }
    contacts << { first_name: "Alexandra", last_name: "Lopez", title: "Park & Recreation Director", heal_city: "El Monte, CA", organization: "El Monte", email: "" }
    contacts << { first_name: "Bart", last_name: "Patel", title: "Mayor Pro Tem", heal_city: "El Monte, CA", organization: "El Monte", email: "" }
    contacts << { first_name: "Kev", last_name: "Tcharkhoutian", title: "Interim Community Dev. Dir.", heal_city: "El Monte, CA", organization: "El Monte", email: "" }
    contacts << { first_name: "Taro", last_name: "Echiburu", title: "Planning Director", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "" }
    contacts << { first_name: "Jacqui", last_name: "Langenberg", title: "Human Resources Manager", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "" }
    contacts << { first_name: "Jason", last_name: "Lindgren", title: "City Clerk", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "" }
    contacts << { first_name: "Steve", last_name: "Ly", title: "Council Member", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "" }
    contacts << { first_name: "Darren", last_name: "Suen", title: "Council Member", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "" }
    contacts << { first_name: "Darren", last_name: "Wilson", title: "Planning Director", heal_city: "Elk Grove, CA", organization: "Elk Grove", email: "" }
    contacts << { first_name: "Ian", last_name: "Appleyard", title: "Personnel Director", heal_city: "Emeryville, CA", organization: "Emeryville", email: "" }
    contacts << { first_name: "Charles", last_name: "Bryant", title: "Community Development Director", heal_city: "Emeryville, CA", organization: "Emeryville", email: "" }
    contacts << { first_name: "Scott", last_name: "Donahue", title: "Council Member", heal_city: "Emeryville, CA", organization: "Emeryville", email: "" }
    contacts << { first_name: "Karen", last_name: "Hemphill", title: "Assistant to the City Manager", heal_city: "Emeryville, CA", organization: "Emeryville", email: "" }
    contacts << { first_name: "Dianne", last_name: "Martinez", title: "Council Member", heal_city: "Emeryville, CA", organization: "Emeryville", email: "" }
    contacts << { first_name: "Cindy", last_name: "Montero", title: "Community Services Director", heal_city: "Emeryville, CA", organization: "Emeryville", email: "" }
    contacts << { first_name: "Karen", last_name: "Rees", title: "City Clerk", heal_city: "Fairfield, CA", organization: "Fairfield", email: "" }
    contacts << { first_name: "Chuck", last_name: "Timm", title: "Vice Mayor", heal_city: "Fairfield, CA", organization: "Fairfield", email: "" }
    contacts << { first_name: "David", last_name: "White", title: "City Manager", heal_city: "Fairfield, CA", organization: "Fairfield", email: "" }
    contacts << { first_name: "Doug", last_name: "Brower", title: "Council Member", heal_city: "Ferndale, CA", organization: "Ferndale", email: "" }
    contacts << { first_name: "Dan", last_name: "Brown", title: "Council Member", heal_city: "Ferndale, CA", organization: "Ferndale", email: "" }
    contacts << { first_name: "Jennifer", last_name: "Church", title: "City Clerk", heal_city: "Ferndale, CA", organization: "Ferndale", email: "" }
    contacts << { first_name: "Don", last_name: "Hindley", title: "Mayor", heal_city: "Ferndale, CA", organization: "Ferndale", email: "" }
    contacts << { first_name: "Michael", last_name: "Sweeney", title: "Council Member", heal_city: "Ferndale, CA", organization: "Ferndale", email: "" }
    contacts << { first_name: "Tonia", last_name: "Lewis", title: "City Clerk", heal_city: "Fontana, CA", organization: "Fontana", email: "" }
    contacts << { first_name: "Jesus", last_name: "Sandoval", title: "Council Member", heal_city: "Fontana, CA", organization: "Fontana", email: "" }
    contacts << { first_name: "Michael", last_name: "Tahan", title: "Council Member", heal_city: "Fontana, CA", organization: "Fontana", email: "" }
    contacts << { first_name: "James", last_name: "Troyer", title: "Director of Community Development", heal_city: "Fontana, CA", organization: "Fontana", email: "" }
    contacts << { first_name: "Lydia", last_name: "Wibert", title: "Council Member", heal_city: "Fontana, CA", organization: "Fontana", email: "" }
    contacts << { first_name: "Michael", last_name: "Cimolino", title: "Council Member", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "" }
    contacts << { first_name: "Marie", last_name: "Jones", title: "Community Development Director", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "" }
    contacts << { first_name: "Lindy", last_name: "Peters", title: "Vice Mayor", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "" }
    contacts << { first_name: "Cindy", last_name: "Van Wormer", title: "City Clerk", heal_city: "Fort Bragg, CA", organization: "Fort Bragg", email: "" }
    contacts << { first_name: "Curtis", last_name: "Banks", title: "Community Dev. Director", heal_city: "Foster City, CA", organization: "Foster City", email: "" }
    contacts << { first_name: "Sheila", last_name: "Canzian", title: "Park & Recreation Director", heal_city: "Foster City, CA", organization: "Foster City", email: "" }
    contacts << { first_name: "Kevin", last_name: "Miller", title: "City Manager/Parks & Recreation Director", heal_city: "Foster City, CA", organization: "Foster City", email: "" }
    contacts << { first_name: "Doris", last_name: "Palmer", title: "City Clerk", heal_city: "Foster City, CA", organization: "Foster City", email: "" }
    contacts << { first_name: "Gary", last_name: "Pollard", title: "Vice Mayor", heal_city: "Foster City, CA", organization: "Foster City", email: "" }
    contacts << { first_name: "Jeannie", last_name: "Davis", title: "City Clerk", heal_city: "Fowler, CA", organization: "Fowler", email: "" }
    contacts << { first_name: "Vinnie", last_name: "Bacon", title: "Council Member", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Susan", last_name: "Gauthier", title: "City Clerk", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Annabell", last_name: "Holland", title: "Community Services Director", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Rick", last_name: "Jones", title: "Council Member", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Lily", last_name: "Mei", title: "Council Member", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Jeff", last_name: "Schwob", title: "Community Development Director", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Suzanne", last_name: "Shenfil", title: "Human Services Director", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Brian", last_name: "Stott", title: "Deputy City Manager", heal_city: "Fremont, CA", organization: "Fremont", email: "" }
    contacts << { first_name: "Hugo", last_name: "Curiel", title: "Director of Parks & Recreation", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Jennifer", last_name: "Fitzgerald", title: "Mayor Pro Tem", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Jan", last_name: "Flory", title: "Council Member", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Karen", last_name: "Haluza", title: "Community Development Director", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Bruce", last_name: "Whitaker", title: "Council Member", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Lucinda", last_name: "Williams", title: "City Clerk", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Joan", last_name: "Wolff", title: "Planning & Development Services Manager", heal_city: "Fullerton, CA", organization: "Fullerton", email: "" }
    contacts << { first_name: "Desiree", last_name: "Gomez", title: "Planning Technician", heal_city: "Greenfield, CA", organization: "Greenfield", email: "" }
    contacts << { first_name: "Ann", last_name: "Rathbun", title: "Finance Manager/City Clerk", heal_city: "Greenfield, CA", organization: "Greenfield", email: "" }
    contacts << { first_name: "Raul", last_name: "Rodriguez", title: "Mayor Pro-Tem", heal_city: "Greenfield, CA", organization: "Greenfield", email: "" }
    contacts << { first_name: "Leah", last_name: "Santibanez", title: "Council Member", heal_city: "Greenfield, CA", organization: "Greenfield", email: "" }
    contacts << { first_name: "Mic", last_name: "Steinmann", title: "Community Development Director", heal_city: "Greenfield, CA", organization: "Greenfield", email: "" }
    contacts << { first_name: "Avelina", last_name: "Torres", title: "Council Member", heal_city: "Greenfield, CA", organization: "Greenfield", email: "" }
    contacts << { first_name: "Ray", last_name: "Borges", title: "Council Member", heal_city: "Gridley, CA", organization: "Gridley", email: "" }
    contacts << { first_name: "Bruce", last_name: "Johnson", title: "Mayor Pro Tem", heal_city: "Gridley, CA", organization: "Gridley", email: "" }
    contacts << { first_name: "Dean", last_name: "Price", title: "Interim City Manager", heal_city: "Gridley, CA", organization: "Gridley", email: "" }
    contacts << { first_name: "Bruce", last_name: "Buckingham", title: "Community Dev. Director", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "" }
    contacts << { first_name: "Jeff", last_name: "Lee", title: "Mayor Pro Tem", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "" }
    contacts << { first_name: "Donna", last_name: "McMahon", title: "City Clerk", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "" }
    contacts << { first_name: "Barbara", last_name: "Nicolls", title: "Council Member", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "" }
    contacts << { first_name: "Mariam", last_name: "Shah", title: "Council Member", heal_city: "Grover Beach, CA", organization: "Grover Beach", email: "" }
    contacts << { first_name: "Julie", last_name: "Anderson", title: "Council Member", heal_city: "Gustine, CA", organization: "Gustine", email: "" }
    contacts << { first_name: "Dennis", last_name: "Brazil", title: "Mayor", heal_city: "Gustine, CA", organization: "Gustine", email: "" }
    contacts << { first_name: "Melanie", last_name: "Correa", title: "Deputy City Clerk/Administrative Services", heal_city: "Gustine, CA", organization: "Gustine", email: "" }
    contacts << { first_name: "Ellen", last_name: "Hasness", title: "Council Member", heal_city: "Gustine, CA", organization: "Gustine", email: "" }
    contacts << { first_name: "Jake", last_name: "Raper", title: "Planning Director", heal_city: "Gustine, CA", organization: "Gustine", email: "" }
    contacts << { first_name: "Sean", last_name: "Scully", title: "City Manager", heal_city: "Gustine, CA", organization: "Gustine", email: "" }
    contacts << { first_name: "Chris", last_name: "Brown", title: "Mayor", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "" }
    contacts << { first_name: "Mark", last_name: "Hardison", title: "Asst. Director of Recreation & Community Services", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "" }
    contacts << { first_name: "Norbert", last_name: "Huber", title: "City Clerk", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "" }
    contacts << { first_name: "Gregg", last_name: "McClain", title: "Planning & Community Dev. Director", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "" }
    contacts << { first_name: "David", last_name: "Roberts", title: "Asst. City Manager/Director of Human Resources", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "" }
    contacts << { first_name: "Arnold", last_name: "Shadbehr", title: "Interim City Manager/Director of Public Works", heal_city: "Hawthorne, CA", organization: "Hawthorne", email: "" }
    contacts << { first_name: "Sara", last_name: "Lamnin", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "" }
    contacts << { first_name: "Miriam", last_name: "Lens", title: "City Clerk", heal_city: "Hayward, CA", organization: "Hayward", email: "" }
    contacts << { first_name: "Elisa", last_name: "Marquez", title: "Council Member", heal_city: "Hayward, CA", organization: "Hayward", email: "" }
    contacts << { first_name: "Nina", last_name: "Morris Collins", title: "Human Resources/Personnel Director", heal_city: "Hayward, CA", organization: "Hayward", email: "" }
    contacts << { first_name: "David", last_name: "Rizk", title: "Development Services Director", heal_city: "Hayward, CA", organization: "Hayward", email: "" }
    contacts << { first_name: "Maria", last_name: "Curiel", title: "City Clerk", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "" }
    contacts << { first_name: "Jone", last_name: "Hayes", title: "Finance Director", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "" }
    contacts << { first_name: "Brigette", last_name: "Mansell", title: "Council Member", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "" }
    contacts << { first_name: "Barbara", last_name: "Nelson", title: "Planning Director", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "" }
    contacts << { first_name: "Mark", last_name: "Themig", title: "Community Services Director", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "" }
    contacts << { first_name: "Eric", last_name: "Ziedrich", title: "Council Member", heal_city: "Healdsburg, CA", organization: "Healdsburg", email: "" }
    contacts << { first_name: "Shaun", last_name: "McCaffery", title: "Mayor", heal_city: "Healsburg, CA", organization: "Healsburg", email: "" }
    contacts << { first_name: "Margaret", last_name: "Roberts", title: "Administrative Services Director", heal_city: "Hercules, CA", organization: "Hercules", email: "" }
    contacts << { first_name: "Nanette", last_name: "Barragan", title: "Council Member", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "" }
    contacts << { first_name: "Elaine", last_name: "Doerfling", title: "City Clerk", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "" }
    contacts << { first_name: "Hany", last_name: "Fangary", title: "Council Member", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "" }
    contacts << { first_name: "Carolyn", last_name: "Petty", title: "Mayor Pro Tem", heal_city: "Hermosa Beach, CA", organization: "Hermosa Beach", email: "" }
    contacts << { first_name: "Scott", last_name: "Priester", title: "Community Dev. Director", heal_city: "Hesperia, CA", organization: "Hesperia", email: "" }
    contacts << { first_name: "Dave", last_name: "Reno", title: "Principal Planner", heal_city: "Hesperia, CA", organization: "Hesperia", email: "" }
    contacts << { first_name: "Paul", last_name: "Russ", title: "Council Member", heal_city: "Hesperia, CA", organization: "Hesperia", email: "" }
    contacts << { first_name: "Melinda", last_name: "Sayre-Castro", title: "Assistant City Clerk", heal_city: "Hesperia, CA", organization: "Hesperia", email: "" }
    contacts << { first_name: "Eric", last_name: "Schmidt", title: "Mayor", heal_city: "Hesperia, CA", organization: "Hesperia", email: "" }
    contacts << { first_name: "Denise", last_name: "Garcia", title: "Interim City Clerk/Personnel", heal_city: "Holtville, CA", organization: "Holtville", email: "" }
    contacts << { first_name: "James", last_name: "Predmore", title: "Council Member", heal_city: "Holtville, CA", organization: "Holtville", email: "" }
    contacts << { first_name: "Nick", last_name: "Wells", title: "City Manager", heal_city: "Holtville, CA", organization: "Holtville", email: "" }
    contacts << { first_name: "Matthew", last_name: "Beekman", title: "Mayor", heal_city: "Hughson, CA", organization: "Hughson", email: "" }
    contacts << { first_name: "Jaylen", last_name: "French", title: "Community Development Director", heal_city: "Hughson, CA", organization: "Hughson", email: "" }
    contacts << { first_name: "Raul", last_name: "Mendez", title: "City Manager", heal_city: "Hughson, CA", organization: "Hughson", email: "" }
    contacts << { first_name: "Dominique", last_name: "Spinale", title: "Assistant to the City Manager/City Clerk", heal_city: "Hughson, CA", organization: "Hughson", email: "" }
    contacts << { first_name: "Barbara", last_name: "Delgleize", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Joan", last_name: "Flynn", title: "CMC, City Clerk", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Scott", last_name: "Hess", title: "Building and Planning Director", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Jim", last_name: "Katapodis", title: "Mayor Pro Tem", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Billy", last_name: "O'Connell", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Eric", last_name: "Peterson", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Mike", last_name: "Posey", title: "Council Member", heal_city: "Huntington Beach, CA", organization: "Huntington Beach", email: "" }
    contacts << { first_name: "Martha", last_name: "Castillo", title: "Human Resources Supervisor", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Karina", last_name: "Macias", title: "Mayor", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "John", last_name: "Ornelas", title: "Interim City Manager", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Graciela", last_name: "Ortiz", title: "Vice Mayor", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Valentin", last_name: "Palos Amezquita", title: "Council Member", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Jhonny", last_name: "Pineda", title: "Council Member", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Marilyn", last_name: "Sanabria", title: "Council Member", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Donna", last_name: "Schwartz", title: "City Clerk", heal_city: "Huntington Park, CA", organization: "Huntington Park", email: "" }
    contacts << { first_name: "Jack", last_name: "Castro", title: "Acting City Manager", heal_city: "Huron, CA", organization: "Huron", email: "" }
    contacts << { first_name: "Sylvia", last_name: "Chavez", title: "Mayor", heal_city: "Huron, CA", organization: "Huron", email: "" }
    contacts << { first_name: "Roberto", last_name: "Pimentel", title: "Council Member", heal_city: "Huron, CA", organization: "Huron", email: "" }
    contacts << { first_name: "Jorge", last_name: "Solorio", title: "Council Member", heal_city: "Huron, CA", organization: "Huron", email: "" }
    contacts << { first_name: "Daniel", last_name: "Tamayo", title: "Council Member", heal_city: "Huron, CA", organization: "Huron", email: "" }
    contacts << { first_name: "Juanita", last_name: "Veliz", title: "Administrative Assistant", heal_city: "Huron, CA", organization: "Huron", email: "" }
    contacts << { first_name: "Sabrina", last_name: "Barnes", title: "Parks & Recreation Director", heal_city: "Inglewood, CA", organization: "Inglewood", email: "" }
    contacts << { first_name: "Jose", last_name: "Cortez", title: "Human Resources/Personnel Director", heal_city: "Inglewood, CA", organization: "Inglewood", email: "" }
    contacts << { first_name: "George", last_name: "Dotson", title: "Council Member", heal_city: "Inglewood, CA", organization: "Inglewood", email: "" }
    contacts << { first_name: "Yvonne", last_name: "Horton", title: "City Clerk", heal_city: "Inglewood, CA", organization: "Inglewood", email: "" }
    contacts << { first_name: "Alex", last_name: "Padilla", title: "Council Member", heal_city: "Inglewood, CA", organization: "Inglewood", email: "" }
    contacts << { first_name: "Linda", last_name: "Tatum", title: "Economic & Community Development Director", heal_city: "Inglewood, CA", organization: "Inglewood", email: "" }
    contacts << { first_name: "Molly", last_name: "McLaughlin", title: "City Clerk", heal_city: "Irvine, CA", organization: "Irvine", email: "" }
    contacts << { first_name: "Lynn", last_name: "Schott", title: "Council Member", heal_city: "Irvine, CA", organization: "Irvine", email: "" }
    contacts << { first_name: "Eric", last_name: "Tolles", title: "Community Dev. Director", heal_city: "Irvine, CA", organization: "Irvine", email: "" }
    contacts << { first_name: "Jan", last_name: "Walden", title: "Manager of Human Resources", heal_city: "Irvine, CA", organization: "Irvine", email: "" }
    contacts << { first_name: "Bill", last_name: "Baber", title: "Council Member", heal_city: "La Mesa, CA", organization: "La Mesa", email: "" }
    contacts << { first_name: "Bill", last_name: "Chopyk", title: "Director of Community Development", heal_city: "La Mesa, CA", organization: "La Mesa", email: "" }
    contacts << { first_name: "Rida", last_name: "Freeman", title: "Human Resources Manager", heal_city: "La Mesa, CA", organization: "La Mesa", email: "" }
    contacts << { first_name: "Mary", last_name: "Kennedy", title: "City Clerk", heal_city: "La Mesa, CA", organization: "La Mesa", email: "" }
    contacts << { first_name: "Guy", last_name: "McWhirter", title: "Council Member", heal_city: "La Mesa, CA", organization: "La Mesa", email: "" }
    contacts << { first_name: "David", last_name: "Carmany", title: "City Manager/City Clerk", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "John", last_name: "DiMario", title: "Development Services Director", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "Dan", last_name: "Holloway", title: "Mayor", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "Charlie ", last_name: "Klinakis", title: "Council Member", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "Roxanne", last_name: "Lerma", title: "Parks & Recreation Manager", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "Violeta", last_name: "Lewis", title: "Council Member", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "Valerie", last_name: "Munoz", title: "Mayor Pro Tem", heal_city: "La Puente, CA", organization: "La Puente", email: "" }
    contacts << { first_name: "Susan", last_name: "Maysels", title: "City Clerk", heal_city: "La Quinta, CA", organization: "La Quinta", email: "" }
    contacts << { first_name: "John", last_name: "Pena", title: "Council Member", heal_city: "La Quinta, CA", organization: "La Quinta", email: "" }
    contacts << { first_name: "Robert", last_name: "Radi", title: "Council Member", heal_city: "La Quinta, CA", organization: "La Quinta", email: "" }
    contacts << { first_name: "Jeannette", last_name: "Vagnozzi", title: "City Clerk/City Treasurer", heal_city: "La Verne, CA", organization: "La Verne", email: "" }
    contacts << { first_name: "Ann", last_name: "Meredith", title: "Community Development Director", heal_city: "Lafayette, CA", organization: "Lafayette", email: "" }
    contacts << { first_name: "Mark", last_name: "Mitchell", title: "Council Member", heal_city: "Lafayette, CA", organization: "Lafayette", email: "" }
    contacts << { first_name: "Traci", last_name: "Reilly", title: "Vice Mayor", heal_city: "Lafayette, CA", organization: "Lafayette", email: "" }
    contacts << { first_name: "Joanne", last_name: "Robbins", title: "City Clerk/ Mun. Info. Officer", heal_city: "Lafayette, CA", organization: "Lafayette", email: "" }
    contacts << { first_name: "Jennifer", last_name: "Russell", title: "Parks, Trails & Recreation Director", heal_city: "Lafayette, CA", organization: "Lafayette", email: "" }
    contacts << { first_name: "Niroop", last_name: "Srivatsa", title: "Planning Director", heal_city: "Lafayette, CA", organization: "Lafayette", email: "" }
    contacts << { first_name: "Virginia", last_name: "Bloom", title: "City Clerk", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Daryl", last_name: "Hickman", title: "Council Member", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Natasha", last_name: "Johnson", title: "Council Member", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Robert", last_name: "Magee", title: "Council Member", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Steve", last_name: "Manos", title: "Mayor", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Jonathan", last_name: "Skinner", title: "Parks & Recreation Director", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Grant", last_name: "Taylor", title: "Community Dev. Director", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Grant", last_name: "Yates", title: "City Manager", heal_city: "Lake Elsinore, CA", organization: "Lake Elsinore", email: "" }
    contacts << { first_name: "Britt", last_name: "Avrit", title: "City Clerk", heal_city: "Lancaster, CA", organization: "Lancaster", email: "" }
    contacts << { first_name: "Brian", last_name: "Ludicke", title: "Community Dev. Director", heal_city: "Lancaster, CA", organization: "Lancaster", email: "" }
    contacts << { first_name: "Ronda", last_name: "Perez", title: "Parks, Recreation & Arts Dir.", heal_city: "Lancaster, CA", organization: "Lancaster", email: "" }
    contacts << { first_name: "Pamela", last_name: "Giamario", title: "Assistant City Clerk", heal_city: "Lawndale, CA", organization: "Lawndale", email: "" }
    contacts << { first_name: "Joe", last_name: "Perez", title: "Community Development Director", heal_city: "Lawndale, CA", organization: "Lawndale", email: "" }
    contacts << { first_name: "Daniel", last_name: "Reid", title: "Council Member", heal_city: "Lawndale, CA", organization: "Lawndale", email: "" }
    contacts << { first_name: "Steve", last_name: "Kiefer", title: "Community & Economic Dev. Director", heal_city: "Livermore, CA", organization: "Livermore", email: "" }
    contacts << { first_name: "Susan", last_name: "Neer", title: "City Clerk", heal_city: "Livermore, CA", organization: "Livermore", email: "" }
    contacts << { first_name: "Steven", last_name: "Spedowfski", title: "Council Member", heal_city: "Livermore, CA", organization: "Livermore", email: "" }
    contacts << { first_name: "Jacquelyn", last_name: "Benoit", title: "Recreation Superintendent", heal_city: "Livingston, CA", organization: "Livingston", email: "" }
    contacts << { first_name: "Donna", last_name: "Kenney", title: "Community Dev. Director/Planning Dir.", heal_city: "Livingston, CA", organization: "Livingston", email: "" }
    contacts << { first_name: "Arturo", last_name: "Sicairos", title: "Council Member", heal_city: "Livingston, CA", organization: "Livingston", email: "" }
    contacts << { first_name: "Antonio", last_name: "Silva", title: "City Clerk", heal_city: "Livingston, CA", organization: "Livingston", email: "" }
    contacts << { first_name: "Jim", last_name: "Soria", title: "Council Member", heal_city: "Livingston, CA", organization: "Livingston", email: "" }
    contacts << { first_name: "Mark", last_name: "Chandler", title: "Mayor Pro Tempore", heal_city: "Lodi, CA", organization: "Lodi", email: "" }
    contacts << { first_name: "Jeff", last_name: "Hood", title: "Parks, Recreation & Cultural Services Director", heal_city: "Lodi, CA", organization: "Lodi", email: "" }
    contacts << { first_name: "Doug", last_name: "Kuehne", title: "Council Member", heal_city: "Lodi, CA", organization: "Lodi", email: "" }
    contacts << { first_name: "Adele", last_name: "Post", title: "Human Resources Manager", heal_city: "Lodi, CA", organization: "Lodi", email: "" }
    contacts << { first_name: "Jennifer", last_name: "Robison", title: "City Clerk", heal_city: "Lodi, CA", organization: "Lodi", email: "" }
    contacts << { first_name: "Stacey", last_name: "Alvarez", title: "City Clerk", heal_city: "Lompoc, CA", organization: "Lompoc", email: "" }
    contacts << { first_name: "Gabriel", last_name: "Garcia", title: "HR Manager", heal_city: "Lompoc, CA", organization: "Lompoc", email: "" }
    contacts << { first_name: "Jim", last_name: "Mosby", title: "Council Member", heal_city: "Lompoc, CA", organization: "Lompoc", email: "" }
    contacts << { first_name: "Victor", last_name: "Vega", title: "Council Member", heal_city: "Lompoc, CA", organization: "Lompoc", email: "" }
    contacts << { first_name: "Patrick", last_name: "Wiemiller", title: "City Administrator", heal_city: "Lompoc, CA", organization: "Lompoc", email: "" }
    contacts << { first_name: "Amy", last_name: "Bodek", title: "Director of Development Services", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Poonam", last_name: "Davis", title: "City Clerk", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Lena", last_name: "Gonzalez", title: "Council Member- District 1", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Stacy", last_name: "Mungo", title: "Council Member-District 5", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Suzie", last_name: "Price", title: "Council Member- District 3", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Rex", last_name: "Richardson", title: "Council Member- District 9", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Stephen", last_name: "Scott", title: "Interim Director, Parks, Recreation & Marine", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Daryl", last_name: "Supernaw", title: "Council Member- 4th District", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Roberto", last_name: "Uranga", title: "Council Member- District 7", heal_city: "Long Beach, CA", organization: "Long Beach", email: "" }
    contacts << { first_name: "Robert", last_name: "Black", title: "Council Member", heal_city: "Loomis, CA", organization: "Loomis", email: "" }
    contacts << { first_name: "J. Arnoldo", last_name: "Beltran", title: "City Manager", heal_city: "Lynwood, CA", organization: "Lynwood", email: "" }
    contacts << { first_name: "Mark", last_name: "Flores", title: "Interim Director of Rec & Community Services", heal_city: "Lynwood, CA", organization: "Lynwood", email: "" }
    contacts << { first_name: "Edwin", last_name: "Hernandez", title: "Council Member", heal_city: "Lynwood, CA", organization: "Lynwood", email: "" }
    contacts << { first_name: "Maria", last_name: "Quinonez", title: "City Clerk", heal_city: "Lynwood, CA", organization: "Lynwood", email: "" }
    contacts << { first_name: "Haydee", last_name: "Sainz", title: "Personnel Director", heal_city: "Lynwood, CA", organization: "Lynwood", email: "" }
    contacts << { first_name: "Jose Luis", last_name: "Solache", title: "Mayor", heal_city: "Lynwood, CA", organization: "Lynwood", email: "" }
    contacts << { first_name: "Mark", last_name: "Burton", title: "Mayor Pro Tem", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "" }
    contacts << { first_name: "Mark", last_name: "Danaj", title: "City Manager", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "" }
    contacts << { first_name: "Tony", last_name: "D'Errico", title: "Council Member", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "" }
    contacts << { first_name: "Mark", last_name: "Leyman", title: "Parks & Recreation Driector", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "" }
    contacts << { first_name: "Marisa", last_name: "Lundstedt", title: "Director of Community Development", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "" }
    contacts << { first_name: "Liza", last_name: "Tamura", title: "City Clerk", heal_city: "Manhattan Beach, CA", organization: "Manhattan Beach", email: "" }
    contacts << { first_name: "Virgil", last_name: "Bell", title: "Mayor", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "John", last_name: "Crump", title: "Council Member", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "Dianna", last_name: "Emfinger", title: "City Clerk", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "John", last_name: "Horn", title: "Council Member", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "Cynthia", last_name: "Tonkin", title: "Council Member", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "John", last_name: "Wilke", title: "Mayor Pro Tem", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "Eric", last_name: "Ziegler", title: "City Manager", heal_city: "Maricopa, CA", organization: "Maricopa", email: "" }
    contacts << { first_name: "Rob", last_name: "Braulik", title: "City Manager", heal_city: "Martinez, CA", organization: "Martinez", email: "" }
    contacts << { first_name: "Richard", last_name: "Hernandez", title: "City Clerk", heal_city: "Martinez, CA", organization: "Martinez", email: "" }
    contacts << { first_name: "Karen", last_name: "Majors", title: "Community Dev. Director", heal_city: "Martinez, CA", organization: "Martinez", email: "" }
    contacts << { first_name: "Debbi", last_name: "McKillop", title: "Council Member", heal_city: "Martinez, CA", organization: "Martinez", email: "" }
    contacts << { first_name: "Chris", last_name: "Pedigo", title: "Council Member", heal_city: "Maryville, CA", organization: "Maryville", email: "" }
    contacts << { first_name: "Sergio", last_name: "Calderon", title: "City Clerk", heal_city: "Maywood, CA", organization: "Maywood", email: "" }
    contacts << { first_name: "Eddie", last_name: "De La Riva", title: "Mayor", heal_city: "Maywood, CA", organization: "Maywood", email: "" }
    contacts << { first_name: "Aldo", last_name: "Perez", title: "Community Services Manager", heal_city: "Maywood, CA", organization: "Maywood", email: "" }
    contacts << { first_name: "Ricardo", last_name: "Villarreal", title: "Council Member", heal_city: "Maywood, CA", organization: "Maywood", email: "" }
    contacts << { first_name: "Pamela", last_name: "Aguilar", title: "City Clerk", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "" }
    contacts << { first_name: "Arlinda", last_name: "Heineck", title: "Community Dev. Director", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "" }
    contacts << { first_name: "Raymond", last_name: "Mueller", title: "Council Member", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "" }
    contacts << { first_name: "Peter", last_name: "Ohtaki", title: "Council Member", heal_city: "Menlo Park, CA", organization: "Menlo Park", email: "" }
    contacts << { first_name: "Michael", last_name: "Belluomini", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "" }
    contacts << { first_name: "Kevin", last_name: "Blake", title: "Council Member", heal_city: "Merced, CA", organization: "Merced", email: "" }
    contacts << { first_name: "Mike", last_name: "Conway", title: "Acting Parks & Rec Dir./PIO", heal_city: "Merced, CA", organization: "Merced", email: "" }
    contacts << { first_name: "Dave", last_name: "Gonzalves", title: "Director of Development Services", heal_city: "Merced, CA", organization: "Merced", email: "" }
    contacts << { first_name: "Steve", last_name: "Bell", title: "Community Services Manager", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Wendy", last_name: "Bucknum", title: "Council Member", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Karen", last_name: "Hamman", title: "City Clerk/Community Relations Dir.", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Elaine", last_name: "Lister", title: "Director of Community Development", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Mark", last_name: "Nix", title: "Recreation & Community Services Director", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Greg", last_name: "Raths", title: "Mayor Pro Tem", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Ed", last_name: "Sachs", title: "Council Member", heal_city: "Mission Viejo, CA", organization: "Mission Viejo", email: "" }
    contacts << { first_name: "Jim", last_name: "Holgersson", title: "City Manager", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Andy", last_name: "Johnson", title: "Acting Manager- Parks, Recreation & Neighborhoods", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Jenny", last_name: "Kenoyer", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Dave", last_name: "Lopez", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Joe", last_name: "Lopez", title: "Administrative Services Director- HR/IT", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Stephanie", last_name: "Lopez", title: "City Clerk", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Tony", last_name: "Madrigal", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Brent", last_name: "Sinclair", title: "Community & Economic Dev. Director", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Bill", last_name: "Zoslocki", title: "Council Member", heal_city: "Modesto, CA", organization: "Modesto", email: "" }
    contacts << { first_name: "Maureen", last_name: "Benson", title: "City Clerk", heal_city: "Moorpark, CA", organization: "Moorpark", email: "" }
    contacts << { first_name: "David", last_name: "Bobardt", title: "Community Dev. Director", heal_city: "Moorpark, CA", organization: "Moorpark", email: "" }
    contacts << { first_name: "Jeremy", last_name: "Laurentowski", title: "Parks & Recreation Director", heal_city: "Moorpark, CA", organization: "Moorpark", email: "" }
    contacts << { first_name: "Michael", last_name: "Dalla", title: "City Clerk", heal_city: "National City, CA", organization: "National City", email: "" }
    contacts << { first_name: "Ashley", last_name: "Denham", title: "Community Services Director", heal_city: "National City, CA", organization: "National City", email: "" }
    contacts << { first_name: "Albert", last_name: "Mendivil", title: "Council Member", heal_city: "National City, CA", organization: "National City", email: "" }
    contacts << { first_name: "Mike", last_name: "Bucci", title: "Council Member", heal_city: "Newark, CA", organization: "Newark", email: "" }
    contacts << { first_name: "Terrence", last_name: "Grindall", title: "Assistant City Manager", heal_city: "Newark, CA", organization: "Newark", email: "" }
    contacts << { first_name: "Mike", last_name: "Hannon", title: "Council Member", heal_city: "Newark, CA", organization: "Newark", email: "" }
    contacts << { first_name: "Sheila", last_name: "Harrington", title: "City Clerk", heal_city: "Newark, CA", organization: "Newark", email: "" }
    contacts << { first_name: "Casey", last_name: "Graham", title: "Council Member", heal_city: "Newman, CA", organization: "Newman", email: "" }
    contacts << { first_name: "Stephanie", last_name: "House", title: "Recreation Coordinator", heal_city: "Newman, CA", organization: "Newman", email: "" }
    contacts << { first_name: "Mike", last_name: "Maier", title: "City Clerk", heal_city: "Newman, CA", organization: "Newman", email: "" }
    contacts << { first_name: "Stephanie", last_name: "Ocasio", title: "City Planner", heal_city: "Newman, CA", organization: "Newman", email: "" }
    contacts << { first_name: "Kimberly", last_name: "Brandt", title: "Community Dev. Director", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Leilani", last_name: "Brown", title: "City Clerk", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Laura", last_name: "Detweiler", title: "Recreation & Community Srvcs Dir.", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Diane", last_name: "Dixon", title: "Mayor Pro Tem", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Duffy", last_name: "Duffield", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Mark", last_name: "Harmon", title: "General Services Director", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Kevin", last_name: "Muldoon", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Scott", last_name: "Peotter", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Tony", last_name: "Petros", title: "Council Member", heal_city: "Newport Beach, CA", organization: "Newport Beach", email: "" }
    contacts << { first_name: "Robert", last_name: "Brown", title: "Community Dev. Director", heal_city: "Novato, CA", organization: "Novato", email: "" }
    contacts << { first_name: "Sheri", last_name: "Hartz", title: "City Clerk", heal_city: "Novato, CA", organization: "Novato", email: "" }
    contacts << { first_name: "Cherilyn", last_name: "Bairos", title: "Council Member", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "J.R.", last_name: "McCarty", title: "Council Member", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "Richard", last_name: "Murdoch", title: "Council Member", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "George", last_name: "Osner", title: "Planning Consultant", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "Pat", last_name: "Paul", title: "Mayor", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "Danelle", last_name: "Stylos", title: "Community Development Director", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "Kathy", last_name: "Teixeira", title: "City Clerk", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "Bryan", last_name: "Whitemyer", title: "City Manager", heal_city: "Oakdale, CA", organization: "Oakdale", email: "" }
    contacts << { first_name: "Paul Vincent", last_name: "Avila", title: "Council Member", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Al", last_name: "Boling", title: "City Manager", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Mark", last_name: "Chase", title: "Community & Public Services Dir.", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Otto", last_name: "Kroutil", title: "Development Director", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Angela", last_name: "Lopez", title: "Personnel Director", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Scott", last_name: "Murphy", title: "Planning Director", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Mary", last_name: "Wirtes", title: "City Clerk", heal_city: "Ontario, CA", organization: "Ontario", email: "" }
    contacts << { first_name: "Josie", last_name: "Cervantes", title: "Council Member", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "" }
    contacts << { first_name: "Manuel", last_name: "Ferreira", title: "Park & Rec Director", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "" }
    contacts << { first_name: "Gilbert", last_name: "Garcia", title: "Council Member", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "" }
    contacts << { first_name: "Diana", last_name: "Guerra", title: "Mayor Pro Tem", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "" }
    contacts << { first_name: "Minerva", last_name: "Pineda", title: "Council Member", heal_city: "Orange Cove, CA", organization: "Orange Cove", email: "" }
    contacts << { first_name: "Angela", last_name: "Crook", title: "Assistant City Manager/City Clerk", heal_city: "Orland, CA", organization: "Orland", email: "" }
    contacts << { first_name: "Salina", last_name: "Edwards", title: "Vice Mayor", heal_city: "Orland, CA", organization: "Orland", email: "" }
    contacts << { first_name: "Joe", last_name: "Fenske", title: "Recreation Director", heal_city: "Orland, CA", organization: "Orland", email: "" }
    contacts << { first_name: "Scott", last_name: "Friend", title: "City Planner", heal_city: "Orland, CA", organization: "Orland", email: "" }
    contacts << { first_name: "Scott", last_name: "Friend", title: "City Planner", heal_city: "Orland, CA", organization: "Orland", email: "" }
    contacts << { first_name: "Flinn", last_name: "Fagg", title: "Planning Director", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "" }
    contacts << { first_name: "Chris", last_name: "Mills", title: "Council Member", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "" }
    contacts << { first_name: "John", last_name: "Raymond", title: "Community & Economic Dev. Director", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "" }
    contacts << { first_name: "James", last_name: "Thompson", title: "Chief of Staff/City Clerk", heal_city: "Palm Springs, CA", organization: "Palm Springs", email: "" }
    contacts << { first_name: "Lana", last_name: "Chikami", title: "City Clerk", heal_city: "Paramount, CA", organization: "Paramount", email: "" }
    contacts << { first_name: "David", last_name: "Johnson", title: "Community Services & Recreation Director", heal_city: "Paramount, CA", organization: "Paramount", email: "" }
    contacts << { first_name: "Vincent", last_name: "Bertoni", title: "Director of Planning", heal_city: "Pasadena, CA", organization: "Pasadena", email: "" }
    contacts << { first_name: "Tyrone", last_name: "Hampton", title: "Council Member- District 1", heal_city: "Pasadena, CA", organization: "Pasadena", email: "" }
    contacts << { first_name: "Mark", last_name: "Jomsky", title: "City Clerk", heal_city: "Pasadena, CA", organization: "Pasadena", email: "" }
    contacts << { first_name: "John", last_name: "Kennedy", title: "Council Member - District 3", heal_city: "Pasadena, CA", organization: "Pasadena", email: "" }
    contacts << { first_name: "Mercy", last_name: "Santoro", title: "Parks & Recreation Director", heal_city: "Pasadena, CA", organization: "Pasadena", email: "" }
    contacts << { first_name: "Andy", last_name: "Wilson", title: "Council Member", heal_city: "Pasadena, CA", organization: "Pasadena", email: "" }
    contacts << { first_name: "Joel", last_name: "Andrews", title: "City Planner", heal_city: "Patterson, CA", organization: "Patterson", email: "" }
    contacts << { first_name: "Julienne", last_name: "Flanders", title: "Recreation & Community Services Dir.", heal_city: "Patterson, CA", organization: "Patterson", email: "" }
    contacts << { first_name: "Ken", last_name: "Irwin", title: "City Manager", heal_city: "Patterson, CA", organization: "Patterson", email: "" }
    contacts << { first_name: "Dennis", last_name: "McCord", title: "Council Member", heal_city: "Patterson, CA", organization: "Patterson", email: "" }
    contacts << { first_name: "Danielle", last_name: "Tucci", title: "Human Resources Manager", heal_city: "Patterson, CA", organization: "Patterson", email: "" }
    contacts << { first_name: "Maricela", last_name: "Vela", title: "City Clerk", heal_city: "Patterson, CA", organization: "Patterson", email: "" }
    contacts << { first_name: "Tonya", last_name: "Burke", title: "Council Member", heal_city: "Perris, CA", organization: "Perris", email: "" }
    contacts << { first_name: "Sabrina", last_name: "Chavez", title: "Parks & Recreation Director", heal_city: "Perris, CA", organization: "Perris", email: "" }
    contacts << { first_name: "Clara", last_name: "Miramontes", title: "Interim Planning Director", heal_city: "Perris, CA", organization: "Perris", email: "" }
    contacts << { first_name: "David", last_name: "Rabb", title: "Council Member", heal_city: "Perris, CA", organization: "Perris", email: "" }
    contacts << { first_name: "Nancy", last_name: "Salazar", title: "City Clerk", heal_city: "Perris, CA", organization: "Perris", email: "" }
    contacts << { first_name: "Chris", last_name: "Albertson", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Claire", last_name: "Cooper", title: "City Clerk", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Dianne", last_name: "Dinsmore", title: "Dir. Of Human Resources", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Heather", last_name: "Hines", title: "Community Development/Planning Manager", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Gabe", last_name: "Kearney", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Dave", last_name: "King", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Jan", last_name: "Mandrell", title: "Parks & Recreation Dir.", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "Kathy", last_name: "Miller", title: "Council Member", heal_city: "Petaluma, CA", organization: "Petaluma", email: "" }
    contacts << { first_name: "RenÈ", last_name: "Bobadilla", title: "City Manager", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "" }
    contacts << { first_name: "Sandra", last_name: "Gonzalez", title: "Parks & Recreation Dir.", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "" }
    contacts << { first_name: "Anna", last_name: "Jerome", title: "City Clerk", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "" }
    contacts << { first_name: "Ben", last_name: "Martinez", title: "Director of Community & Economic Development", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "" }
    contacts << { first_name: "Maurice", last_name: "Sebastian", title: "Senior Manager", heal_city: "Pico Rivera, CA", organization: "Pico Rivera", email: "" }
    contacts << { first_name: "Sheila", last_name: "Cobian", title: "City Clerk/PIO", heal_city: "Poway, CA", organization: "Poway", email: "" }
    contacts << { first_name: "Barry", last_name: "Leonard", title: "Council Member", heal_city: "Poway, CA", organization: "Poway", email: "" }
    contacts << { first_name: "Bob", last_name: "Manis", title: "Development Svcs. Director", heal_city: "Poway, CA", organization: "Poway", email: "" }
    contacts << { first_name: "Lisa", last_name: "Torres", title: "Human Resources Manager", heal_city: "Poway, CA", organization: "Poway", email: "" }
    contacts << { first_name: "Cyrus", last_name: "Abhar", title: "Interim City Mgr./Public Works Dir/City Engr", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "" }
    contacts << { first_name: "Mindy", last_name: "Cuppy", title: "City Clerk", heal_city: "Rancho Cordova, CA", organization: "Rancho Cordova", email: "" }
    contacts << { first_name: "Candyce", last_name: "Burnett", title: "Planning Director", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "" }
    contacts << { first_name: "Lynne", last_name: "Kennedy", title: "Council Member", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "" }
    contacts << { first_name: "Nettie", last_name: "Nielsen", title: "Community Services Director", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "" }
    contacts << { first_name: "Janice", last_name: "Reynolds", title: "City Clerk", heal_city: "Rancho Cucamonga, CA", organization: "Rancho Cucamonga", email: "" }
    contacts << { first_name: "Bruce", last_name: "Henz", title: "Public Works Director/City Engineer", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "" }
    contacts << { first_name: "JoAnna", last_name: "Lopez", title: "City Clerk", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "" }
    contacts << { first_name: "Clay", last_name: "Parker", title: "Mayor", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "" }
    contacts << { first_name: "Suren", last_name: "Patel", title: "Council Member", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "" }
    contacts << { first_name: "Scot", last_name: "Timboe", title: "Planning Director", heal_city: "Red Bluff, CA", organization: "Red Bluff", email: "" }
    contacts << { first_name: "Gary", last_name: "Cadd", title: "Council Member", heal_city: "Redding, CA", organization: "Redding", email: "" }
    contacts << { first_name: "Bill", last_name: "Nagel", title: "Development Services Director", heal_city: "Redding, CA", organization: "Redding", email: "" }
    contacts << { first_name: "Kristen", last_name: "Schreder", title: "Council Member", heal_city: "Redding, CA", organization: "Redding", email: "" }
    contacts << { first_name: "Brent", last_name: "Weaver", title: "Mayor Pro Tempore", heal_city: "Redding, CA", organization: "Redding", email: "" }
    contacts << { first_name: "Paul", last_name: "Barich", title: "Council Member", heal_city: "Redlands, CA", organization: "Redlands", email: "" }
    contacts << { first_name: "Paul", last_name: "Foster", title: "Mayor", heal_city: "Redlands, CA", organization: "Redlands", email: "" }
    contacts << { first_name: "Sam", last_name: "Irwin", title: "City Clerk", heal_city: "Redlands, CA", organization: "Redlands", email: "" }
    contacts << { first_name: "John", last_name: "James", title: "Council Member", heal_city: "Redlands, CA", organization: "Redlands", email: "" }
    contacts << { first_name: "Amy", last_name: "Martin", title: "Personnel Director", heal_city: "Redlands, CA", organization: "Redlands", email: "" }
    contacts << { first_name: "Oscar", last_name: "Orci", title: "Community Development Director", heal_city: "Redlands, CA", organization: "Redlands", email: "" }
    contacts << { first_name: "Bill", last_name: "Brand", title: "Mayor Pro Tem- District 2", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Laura", last_name: "Emdee", title: "Council Member", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Jeff", last_name: "Ginsburg", title: "Council Member- District 1", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Eleanor", last_name: "Manzano", title: "City Clerk", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Stephen", last_name: "Sammarco", title: "Council Member- District 4", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Dan", last_name: "Smith", title: "Interim Community Services Director", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Diane", last_name: "Strickfaden", title: "Human Resources Director", heal_city: "Redondo Beach, CA", organization: "Redondo Beach", email: "" }
    contacts << { first_name: "Kevin", last_name: "Fabino", title: "Community Dev. Director", heal_city: "Reedley, CA", organization: "Reedley", email: "" }
    contacts << { first_name: "Sylvia", last_name: "Plata", title: "City Clerk", heal_city: "Reedley, CA", organization: "Reedley", email: "" }
    contacts << { first_name: "George", last_name: "Harris", title: "Admin. & Community Services Dir.", heal_city: "Rialto, CA", organization: "Rialto", email: "" }
    contacts << { first_name: "Barbara", last_name: "McGee", title: "City Clerk", heal_city: "Rialto, CA", organization: "Rialto", email: "" }
    contacts << { first_name: "Ed", last_name: "Scott", title: "Council Member", heal_city: "Rialto, CA", organization: "Rialto", email: "" }
    contacts << { first_name: "Robb", last_name: "Steel", title: "Development Services Director", heal_city: "Rialto, CA", organization: "Rialto", email: "" }
    contacts << { first_name: "Annabelle", last_name: "Aguilar", title: "City Clerk", heal_city: "Riverbank, CA", organization: "Riverbank", email: "" }
    contacts << { first_name: "Darlene", last_name: "Barber-Martinez", title: "Vice Mayor", heal_city: "Riverbank, CA", organization: "Riverbank", email: "" }
    contacts << { first_name: "Cal", last_name: "Campbell", title: "Council Member", heal_city: "Riverbank, CA", organization: "Riverbank", email: "" }
    contacts << { first_name: "Sue", last_name: "Fitzpatrick", title: "Parks & Recreation Dircetor", heal_city: "Riverbank, CA", organization: "Riverbank", email: "" }
    contacts << { first_name: "Leanne", last_name: "Jones Cruz", title: "Council Member", heal_city: "Riverbank, CA", organization: "Riverbank", email: "" }
    contacts << { first_name: "John", last_name: "Burnard", title: "Council Member- Ward 7", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "Adolfo", last_name: "Cruz", title: "Park, Recreation & Community Svcs Director", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "Brenda", last_name: "Diederichs", title: "Human Resources Director", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "Colleen", last_name: "Nicol", title: "City Clerk", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "Jim", last_name: "Perry", title: "Council Member- Ward 6", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "John", last_name: "Russo", title: "City Manager", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "Mike", last_name: "Soubirous", title: "Council Member- Ward 3", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "Al", last_name: "Zelinka", title: "Community Dev. Director", heal_city: "Riverside, CA", organization: "Riverside", email: "" }
    contacts << { first_name: "JoAnne", last_name: "Buergler", title: "City Clerk", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "" }
    contacts << { first_name: "Darrin", last_name: "Jenkins", title: "City Manager", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "" }
    contacts << { first_name: "Victoria", last_name: "Perrault", title: "Human Resources Director", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "" }
    contacts << { first_name: "Marilyn", last_name: "Ponton", title: "Director of Development Services", heal_city: "Rohnert Park, CA", organization: "Rohnert Park", email: "" }
    contacts << { first_name: "Dominick", last_name: "Casey", title: "Assistant City Manager", heal_city: "Roseville, CA", organization: "Roseville", email: "" }
    contacts << { first_name: "Rob", last_name: "Jensen", title: "Acting City Manager", heal_city: "Roseville, CA", organization: "Roseville", email: "" }
    contacts << { first_name: "Sonia", last_name: "Orozco", title: "City Clerk", heal_city: "Roseville, CA", organization: "Roseville", email: "" }
    contacts << { first_name: "Kevin", last_name: "Payne", title: "Development Services Director", heal_city: "Roseville, CA", organization: "Roseville", email: "" }
    contacts << { first_name: "Gayle", last_name: "Satchwell", title: "Personnel Director", heal_city: "Roseville, CA", organization: "Roseville", email: "" }
    contacts << { first_name: "John", last_name: "Sprague", title: "Asst. City Manager/Community Dev. Dir.", heal_city: "Roseville, CA", organization: "Roseville", email: "" }
    contacts << { first_name: "Larry", last_name: "Carr", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "James", last_name: "Combs", title: "Parks & Recreation Director", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Shirley", last_name: "Concolino", title: "City Clerk", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Ryan", last_name: "DeVore", title: "Interim Community Development Director", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Eric", last_name: "Guerra", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Jeff", last_name: "Harris", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Rick", last_name: "Jennings", title: "Council Member", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Kevin", last_name: "Johnson", title: "Mayor", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Tim", last_name: "Raney", title: "Planning Director", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Jody", last_name: "Ulich", title: "Convention & Cultural Services", heal_city: "Sacramento, CA", organization: "Sacramento", email: "" }
    contacts << { first_name: "Joanne", last_name: "Baade", title: "City Clerk", heal_city: "San Clemente, CA", organization: "San Clemente", email: "" }
    contacts << { first_name: "Chris", last_name: "Hamm", title: "Mayor", heal_city: "San Clemente, CA", organization: "San Clemente", email: "" }
    contacts << { first_name: "Sharon", last_name: "Heider", title: "Dir of Parks, Rec & Facilities", heal_city: "San Clemente, CA", organization: "San Clemente", email: "" }
    contacts << { first_name: "Jim", last_name: "Holloway", title: "Community Development Director", heal_city: "San Clemente, CA", organization: "San Clemente", email: "" }
    contacts << { first_name: "Jim", last_name: "Pechous", title: "City Planner", heal_city: "San Clemente, CA", organization: "San Clemente", email: "" }
    contacts << { first_name: "Kathleen", last_name: "Ward", title: "Council Member", heal_city: "San Clemente, CA", organization: "San Clemente", email: "" }
    contacts << { first_name: "Jesse", last_name: "Avila", title: "Council Member", heal_city: "San Fernando, CA", organization: "San Fernando", email: "" }
    contacts << { first_name: "Elena", last_name: "Chavez", title: "City Clerk", heal_city: "San Fernando, CA", organization: "San Fernando", email: "" }
    contacts << { first_name: "Joel", last_name: "Fajardo", title: "Mayor", heal_city: "San Fernando, CA", organization: "San Fernando", email: "" }
    contacts << { first_name: "Robert", last_name: "Gonzales", title: "Council Member", heal_city: "San Fernando, CA", organization: "San Fernando", email: "" }
    contacts << { first_name: "Brian", last_name: "Saeki", title: "City Manager", heal_city: "San Fernando, CA", organization: "San Fernando", email: "" }
    contacts << { first_name: "Chad", last_name: "McMullen", title: "City Manager", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "" }
    contacts << { first_name: "Jose", last_name: "Ornelas", title: "Council Member", heal_city: "San Joaquin, CA", organization: "San Joaquin", email: "" }
    contacts << { first_name: "Sally", last_name: "Barros", title: "Principal Planner", heal_city: "San Leandro, CA", organization: "San Leandro", email: "" }
    contacts << { first_name: "Cynthia", last_name: "Battenberg", title: "Community Development Director", heal_city: "San Leandro, CA", organization: "San Leandro", email: "" }
    contacts << { first_name: "Deborah", last_name: "Cox", title: "Council Member, District 1", heal_city: "San Leandro, CA", organization: "San Leandro", email: "" }
    contacts << { first_name: "Tamika", last_name: "Greenwood", title: "City Clerk", heal_city: "San Leandro, CA", organization: "San Leandro", email: "" }
    contacts << { first_name: "Corina", last_name: "Lopez", title: "Council Member, District 5", heal_city: "San Leandro, CA", organization: "San Leandro", email: "" }
    contacts << { first_name: "Lee", last_name: "Thomas", title: "Council Member, District 3", heal_city: "San Leandro, CA", organization: "San Leandro", email: "" }
    contacts << { first_name: "Carlyn", last_name: "Christianson", title: "Council Member", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "" }
    contacts << { first_name: "Anthony", last_name: "Mejia", title: "City Clerk", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "" }
    contacts << { first_name: "Dan", last_name: "Rivoire", title: "Council Member", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "" }
    contacts << { first_name: "Shelly", last_name: "Stanwyck", title: "Park & Recreation Director", heal_city: "San Luis Obispo, CA", organization: "San Luis Obispo", email: "" }
    contacts << { first_name: "Kathy", last_name: "Chao Rothberg", title: "Mayor", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Ted", last_name: "Denney", title: "City Clerk", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Greg", last_name: "Dwyer", title: "Community Services Manager", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Tina", last_name: "Gallegos", title: "Assistant to the City Manager/Personnel", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Mike", last_name: "Heller", title: "Recreation Division Manager", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Richard", last_name: "Kinney", title: "Vice Mayor", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Michele", last_name: "Rodriguez", title: "Development Services Manager", heal_city: "San Pablo, CA", organization: "San Pablo", email: "" }
    contacts << { first_name: "Raul", last_name: "Cantu", title: "Mayor Pro Tem- District 1", heal_city: "Sanger, CA", organization: "Sanger", email: "" }
    contacts << { first_name: "Humberto", last_name: "Garza", title: "Council Member- District 2", heal_city: "Sanger, CA", organization: "Sanger", email: "" }
    contacts << { first_name: "Rebeca", last_name: "Hernandez", title: "City Clerk", heal_city: "Sanger, CA", organization: "Sanger", email: "" }
    contacts << { first_name: "John", last_name: "Mulligan", title: "Interim Public Works Dir.", heal_city: "Sanger, CA", organization: "Sanger", email: "" }
    contacts << { first_name: "Tony", last_name: "Pacheco", title: "Council Member- District 3", heal_city: "Sanger, CA", organization: "Sanger", email: "" }
    contacts << { first_name: "Dayle", last_name: "Keller", title: "Interim City Manager", heal_city: "Sanger, CA", organization: "Sanger", email: "" }
    contacts << { first_name: "Angelica", last_name: "Amezcua", title: "Council Member", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "" }
    contacts << { first_name: "David", last_name: "Cavazos", title: "City Manager", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "" }
    contacts << { first_name: "Maria", last_name: "Huizar", title: "City Clerk", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "" }
    contacts << { first_name: "Ed", last_name: "Raya", title: "Human Resources/Personnel Director", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "" }
    contacts << { first_name: "Roman", last_name: "Reyna", title: "Council Member", heal_city: "Santa Ana, CA", organization: "Santa Ana", email: "" }
    contacts << { first_name: "Paul", last_name: "Casey", title: "Acting City Administrator/Clerk/Treasurer", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "" }
    contacts << { first_name: "Gregg", last_name: "Hart", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "" }
    contacts << { first_name: "Frank", last_name: "Hotchkiss", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "" }
    contacts << { first_name: "Gwen", last_name: "Peirce", title: "City Clerk", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "" }
    contacts << { first_name: "Nancy", last_name: "Rapp", title: "Parks & Recreation Director", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "" }
    contacts << { first_name: "Harwood", last_name: "White", title: "Council Member", heal_city: "Santa Barbara, CA", organization: "Santa Barbara", email: "" }
    contacts << { first_name: "Dante", last_name: "Acosta", title: "Council Member", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "" }
    contacts << { first_name: "Thomas B.", last_name: "Cole", title: "Community Development Director", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "" }
    contacts << { first_name: "Kristi", last_name: "Hobrecker", title: "Interim Human Resources Manager", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "" }
    contacts << { first_name: "Jeff", last_name: "Hogan", title: "Planning Manager", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "" }
    contacts << { first_name: "Kevin", last_name: "Tonoian", title: "City Clerk", heal_city: "Santa Clarita, CA", organization: "Santa Clarita", email: "" }
    contacts << { first_name: "Rick", last_name: "Cole", title: "City Manager", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "Eileen", last_name: "Fogarty", title: "Community Dev. Director", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "Sarah", last_name: "Gorman", title: "City Clerk", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "Sue", last_name: "Himmelrich", title: "Council Member", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "David", last_name: "Martin", title: "Planning Director", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "Tony", last_name: "Vazquez", title: "Mayor Pro Tem", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "Ted", last_name: "Winterer", title: "Council Member", heal_city: "Santa Monica, CA", organization: "Santa Monica", email: "" }
    contacts << { first_name: "Kristin", last_name: "Ard", title: "Recreation Division Manager", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "" }
    contacts << { first_name: "Dene", last_name: "Bustichi", title: "Mayor", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "" }
    contacts << { first_name: "Tracy", last_name: "Ferrara", title: "City Clerk", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "" }
    contacts << { first_name: "Corrie", last_name: "Kates", title: "Community Dev Dir./Deputy CM", heal_city: "Scotts Valley, CA", organization: "Scotts Valley", email: "" }
    contacts << { first_name: "Jason", last_name: "Campbell", title: "Council Member", heal_city: "Seaside, CA", organization: "Seaside", email: "" }
    contacts << { first_name: "Roberta", last_name: "Greathouse", title: "Human Resources Manager", heal_city: "Seaside, CA", organization: "Seaside", email: "" }
    contacts << { first_name: "Lesley", last_name: "Milton", title: "City Clerk", heal_city: "Seaside, CA", organization: "Seaside", email: "" }
    contacts << { first_name: "Ralph", last_name: "Rubio", title: "Mayor", heal_city: "Seaside, CA", organization: "Seaside", email: "" }
    contacts << { first_name: "Nancy", last_name: "Towne", title: "Parks & Rec Services Manager", heal_city: "Seaside, CA", organization: "Seaside", email: "" }
    contacts << { first_name: "John", last_name: "Eder", title: "Council Member", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "" }
    contacts << { first_name: "Una", last_name: "Glass", title: "Council Member", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "" }
    contacts << { first_name: "Mary", last_name: "Gourley", title: "City Clerk", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "" }
    contacts << { first_name: "Robert", last_name: "Jacob", title: "Council Member", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "" }
    contacts << { first_name: "Kenyon", last_name: "Webster", title: "Planning Director", heal_city: "Sebastopol, CA", organization: "Sebastopol", email: "" }
    contacts << { first_name: "Angela", last_name: "Ivey", title: "City Clerk", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "" }
    contacts << { first_name: "Ginger", last_name: "Marshall", title: "Council Member", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "" }
    contacts << { first_name: "Greg", last_name: "Wade", title: "City Manager", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "" }
    contacts << { first_name: "Peter", last_name: "Zahn", title: "Council Member", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "" }
    contacts << { first_name: "David", last_name: "Zito", title: "Deputy Mayor", heal_city: "Solana Beach, CA", organization: "Solana Beach", email: "" }
    contacts << { first_name: "Rose", last_name: "Juarez", title: "City Clerk", heal_city: "South El Monte, CA", organization: "South El Monte", email: "" }
    contacts << { first_name: "Paul", last_name: "Adams", title: "Parks and Recreation Director", heal_city: "South Gate, CA", organization: "South Gate", email: "" }
    contacts << { first_name: "Carmen", last_name: "Avalos", title: "City Clerk", heal_city: "South Gate, CA", organization: "South Gate", email: "" }
    contacts << { first_name: "Alvie", last_name: "Betancourt", title: "Senior Planner", heal_city: "South Gate, CA", organization: "South Gate", email: "" }
    contacts << { first_name: "Nellie", last_name: "Cobos", title: "Admin Services Deputy Dir./Personnel", heal_city: "South Gate, CA", organization: "South Gate", email: "" }
    contacts << { first_name: "Michael", last_name: "Flad", title: "City Manager", heal_city: "South Gate, CA", organization: "South Gate", email: "" }
    contacts << { first_name: "Mike", last_name: "Futrell", title: "City Manager", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "" }
    contacts << { first_name: "Pradeep", last_name: "Gupta", title: "Council Member", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "" }
    contacts << { first_name: "Susy", last_name: "Kalkin", title: "Chief Planner", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "" }
    contacts << { first_name: "Krista", last_name: "Martinelli", title: "City Clerk", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "" }
    contacts << { first_name: "Liza", last_name: "Normandy", title: "Council Member", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "" }
    contacts << { first_name: "Sharon", last_name: "Ranals", title: "Recreation & Community Services Director", heal_city: "South San Francisco, CA", organization: "South San Francisco", email: "" }
    contacts << { first_name: "John", last_name: "Alita", title: "Community Services Director", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Christina", last_name: "Fugazi", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Bonnie", last_name: "Paige", title: "City Clerk", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Anthony", last_name: "Silva", title: "Mayor", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Kurt", last_name: "Wilson", title: "City Manager", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Dan", last_name: "Wright", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Teresia", last_name: "Zadroga-Haase", title: "Human Resources Director", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Moses", last_name: "Zapien", title: "Council Member", heal_city: "Stockton, CA", organization: "Stockton", email: "" }
    contacts << { first_name: "Linda", last_name: "Hobson", title: "City Clerk", heal_city: "Suisun City, CA", organization: "Suisun City", email: "" }
    contacts << { first_name: "Mick", last_name: "Jessop", title: "Recreation/Community Services Dir", heal_city: "Suisun City, CA", organization: "Suisun City", email: "" }
    contacts << { first_name: "Lori", last_name: "Wilson", title: "Mayor Pro Tem", heal_city: "Suisun City, CA", organization: "Suisun City", email: "" }
    contacts << { first_name: "Heidi Ann", last_name: "Ashcraft", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "" }
    contacts << { first_name: "Tim", last_name: "Goodrich", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "" }
    contacts << { first_name: "Mike", last_name: "Griffiths", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "" }
    contacts << { first_name: "Rebecca", last_name: "Poirier", title: "City Clerk", heal_city: "Torrance, CA", organization: "Torrance", email: "" }
    contacts << { first_name: "Geoff", last_name: "Rizzo", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "" }
    contacts << { first_name: "Kurt", last_name: "Weideman", title: "Council Member", heal_city: "Torrance, CA", organization: "Torrance", email: "" }
    contacts << { first_name: "Amy", last_name: "Bublak", title: "Council Member", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Matthew", last_name: "Jacob", title: "Council Member", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Mike", last_name: "Pitcock", title: "Development Svc Director/City Engineer", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Gary", last_name: "Soiseth", title: "Mayor", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Allison", last_name: "Van Guilder", title: "Parks, Recreation & Public Facilities Director", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Kellie", last_name: "Weaver", title: "City Clerk", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Debbie", last_name: "Whitmore", title: "Planning Manager", heal_city: "Turlock, CA", organization: "Turlock", email: "" }
    contacts << { first_name: "Antonio ", last_name: "Acosta", title: "City Manager", heal_city: "Union City, CA", organization: "Union City", email: "" }
    contacts << { first_name: "Anna", last_name: "Brown", title: "City Clerk", heal_city: "Union City, CA", organization: "Union City", email: "" }
    contacts << { first_name: "David", last_name: "Glasser", title: "Administrative Services Director", heal_city: "Union City, CA", organization: "Union City", email: "" }
    contacts << { first_name: "Joan", last_name: "Malloy", title: "Director, Economic & Community Development", heal_city: "Union City, CA", organization: "Union City", email: "" }
    contacts << { first_name: "Jill", last_name: "Stavosky", title: "Leisure Services Director", heal_city: "Union City, CA", organization: "Union City", email: "" }
    contacts << { first_name: "Dawn", last_name: "Abrahamson", title: "City Clerk", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Osby", last_name: "Davis", title: "Mayor", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Pippin", last_name: "Dew-Costa", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Jess", last_name: "Malgapo", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Katy", last_name: "Miessner", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Andrea", last_name: "Ouse", title: "Planning Manager", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Rozzana", last_name: "Verder-Aliga", title: "Council Member", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Kay", last_name: "Winer", title: "Interim Personnel Director", heal_city: "Vallejo, CA", organization: "Vallejo", email: "" }
    contacts << { first_name: "Jennifer", last_name: "Curtis", title: "Human Resources Director", heal_city: "Ventura, CA", organization: "Ventura", email: "" }
    contacts << { first_name: "Jeffrey", last_name: "Lambert", title: "Community Development Director", heal_city: "Ventura, CA", organization: "Ventura", email: "" }
    contacts << { first_name: "Erik", last_name: "Nasarenko", title: "Deputy Mayor", heal_city: "Ventura, CA", organization: "Ventura", email: "" }
    contacts << { first_name: "Cynthia", last_name: "Rodriguez", title: "City Clerk", heal_city: "Ventura, CA", organization: "Ventura", email: "" }
    contacts << { first_name: "Mark", last_name: "Watkins", title: "City Manager", heal_city: "Ventura, CA", organization: "Ventura", email: "" }
    contacts << { first_name: "Carolee", last_name: "Bates", title: "City Clerk", heal_city: "Victorville, CA", organization: "Victorville", email: "" }
    contacts << { first_name: "Chris", last_name: "Borchert", title: "Planner Director", heal_city: "Victorville, CA", organization: "Victorville", email: "" }
    contacts << { first_name: "Christian", last_name: "Guntert", title: "Community Services Director", heal_city: "Victorville, CA", organization: "Victorville", email: "" }
    contacts << { first_name: "Eric", last_name: "Negrete", title: "Council Member", heal_city: "Victorville, CA", organization: "Victorville", email: "" }
    contacts << { first_name: "Lori", last_name: "Martin", title: "City Clerk", heal_city: "Waterford, CA", organization: "Waterford", email: "" }
    contacts << { first_name: "Mark", last_name: "Niskanen", title: "Planning Director", heal_city: "Waterford, CA", organization: "Waterford", email: "" }
    contacts << { first_name: "Michael", last_name: "Van Winkle", title: "Mayor", heal_city: "Waterford, CA", organization: "Waterford", email: "" }
    contacts << { first_name: "Joshua", last_name: "Whitfield", title: "Council Member", heal_city: "Waterford, CA", organization: "Waterford", email: "" }
    contacts << { first_name: "Karina", last_name: "Cervantez", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "" }
    contacts << { first_name: "Jimmy", last_name: "Dutra", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "" }
    contacts << { first_name: "Ana", last_name: "Espinoza", title: "Parks and Community Svcs. Director", heal_city: "Watsonville, CA", organization: "Watsonville", email: "" }
    contacts << { first_name: "Rebecca", last_name: "Garcia", title: "Council Member", heal_city: "Watsonville, CA", organization: "Watsonville", email: "" }
    contacts << { first_name: "Marcela", last_name: "Tavantzis", title: "Interim City Manager", heal_city: "Watsonville, CA", organization: "Watsonville", email: "" }
    contacts << { first_name: "Beatriz", last_name: "Vazquez Flores", title: "City Clerk", heal_city: "Watsonville, CA", organization: "Watsonville", email: "" }
    contacts << { first_name: "LuNita", last_name: "Bock", title: "Personnel Director", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "" }
    contacts << { first_name: "John", last_name: "D'Amico", title: "Council Member", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "" }
    contacts << { first_name: "Stephanie", last_name: "DeWolfe", title: "Community Dev. Director", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "" }
    contacts << { first_name: "Lauren", last_name: "Meister", title: "Mayor Pro Tem", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "" }
    contacts << { first_name: "Yvonne", last_name: "Quarker", title: "City Clerk", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "" }
    contacts << { first_name: "Elizabeth", last_name: "Savage", title: "Parks & Recreation Director", heal_city: "West Hollywood, CA", organization: "West Hollywood", email: "" }
    contacts << { first_name: "Bob", last_name: "Johnston", title: "Park & Recreation Director", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "" }
    contacts << { first_name: "Kryss", last_name: "Rankin", title: "City Clerk", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "" }
    contacts << { first_name: "Beverly", last_name: "Sandeen", title: "Council Member", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "" }
    contacts << { first_name: "Martin", last_name: "Tuttle", title: "City Manager", heal_city: "West Sacramento, CA", organization: "West Sacramento", email: "" }
    contacts << { first_name: "Art", last_name: "Bashmakian", title: "Planning Director", heal_city: "Westminster, CA", organization: "Westminster", email: "" }
    contacts << { first_name: "Diana", last_name: "Carey", title: "Council Member", heal_city: "Westminster, CA", organization: "Westminster", email: "" }
    contacts << { first_name: "Tyler", last_name: "Diep", title: "Council Member", heal_city: "Westminster, CA", organization: "Westminster", email: "" }
    contacts << { first_name: "Diana", last_name: "Dobbert", title: "Director of Community Services", heal_city: "Westminster, CA", organization: "Westminster", email: "" }
    contacts << { first_name: "Cyndie", last_name: "Marshal", title: "Human Resources & Risk Officer", heal_city: "Westminster, CA", organization: "Westminster", email: "" }
    contacts << { first_name: "Maria", last_name: "De La O", title: "Town Clerk", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "Dominic", last_name: "Foppoli", title: "Council Member", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "Linda", last_name: "Kelly", title: "Town Manager", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "James", last_name: "Leon", title: "Human Resources Manager", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "Mark", last_name: "Millan", title: "Vice Mayor", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "Bruce", last_name: "Okrepkie", title: "Mayor", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "Ned", last_name: "Thomas", title: "Community Development Director", heal_city: "Windsor, CA", organization: "Windsor", email: "" }
    contacts << { first_name: "Pierre", last_name: "Neu", title: "Council Member", heal_city: "Winters, CA", organization: "Winters", email: "" }
    contacts << { first_name: "Angel", last_name: "Barajas", title: "Council Member", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Sean", last_name: "Denny", title: "Council Member", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Christine", last_name: "Engel", title: "Community Services Director", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Ana", last_name: "Gonzalez", title: "City Clerk", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Jim", last_name: "Hilliard", title: "Council Member", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Sheila", last_name: "McShane", title: "Human Resources Manager", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Tom", last_name: "Stallard", title: "Mayor", heal_city: "Woodland, CA", organization: "Woodland", email: "" }
    contacts << { first_name: "Michelle", last_name: "Dahme", title: "Town Clerk", heal_city: "Yountville, CA", organization: "Yountville", email: "" }
    contacts << { first_name: "Samantha", last_name: "Holland", title: "Parks and Recreation Director", heal_city: "Yountville, CA", organization: "Yountville", email: "" }
    contacts << { first_name: "Sandra", last_name: "Smith", title: "Planning Director", heal_city: "Yountville, CA", organization: "Yountville", email: "" }
    contacts << { first_name: "Debra", last_name: "Breidenbach-Sterling", title: "Human Resources Director", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "Lesley", last_name: "Copeland", title: "Town Clerk", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "Rick", last_name: "Denison", title: "Council Member", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "George", last_name: "Huntington", title: "Mayor", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "Robert", last_name: "Leone", title: "Mayor Pro Tem", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "Robert", last_name: "Lombardo", title: "Council Member", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "Shane", last_name: "Stueckle", title: "Deputy Town Manager/Community Development Director", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }
    contacts << { first_name: "Curtis", last_name: "Yakimow", title: "Town Manager", heal_city: "Yucca Valley, CA", organization: "Yucca Valley", email: "" }

    upload_new(contacts, args[:ignore_existing] == 'true')   #argument gets passed in as string
  end

  private

  def set_to_inactive(contacts)
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    contacts_updated = 0
    contacts_updated_errors = 0
    contact_errors = 0
    error_messages = []
    saved_contacts = []

    contacts.each do |contact|
      matches = dbi_ccpha.contacts.where(first_name: contact[:first_name], last_name: contact[:last_name], organization_name: contact[:organization])
      if matches.count == 0
        contact_errors += 1
        error_messages << "Error: no contact matches #{contact[:first_name]} #{contact[:last_name]} at #{contact[:organization]}."
      elsif matches.count > 1
        contact_errors += 1
        error_messages << "Error: more than one contact matches #{contact[:first_name]}, #{contact[:last_name]} at #{contact[:organization]}."
      else
        existing_contact = matches[0]
        if existing_contact.active == true
          existing_contact.active = false #set to inactive
          if existing_contact.save
            contacts_updated += 1
          else
            contacts_updated_errors += 1
            error_messages << existing_contact.errors.inspect
            break
          end
        end
      end
    end

    puts error_messages
    status_string = "Errors: #{contact_errors}, Save Errors: #{contacts_updated_errors}, Updated: #{contacts_updated}."
    puts status_string

    return status_string

  end

  def upload_new(contacts, ignore_existing)
    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    contacts_added = 0
    contact_cities_added = 0
    contact_cities_errors = 0
    save_errors = 0
    error_messages = []
    existing_contacts = 0

    contacts.each do |contact|
      existing_contact = dbi_ccpha.contacts.find_by(first_name: contact[:first_name], last_name: contact[:last_name], organization_name: contact[:organization])
      if existing_contact.present?
        existing_contacts += 1
        error_messages << "Error: the contact #{contact[:first_name]} #{contact[:last_name]} (#{contact[:title]} at #{contact[:organization]}) already exists."
      end
    end

    if existing_contacts == 0 or ignore_existing
      contacts.each do |contact|
        saved_contact = dbi_ccpha.contacts.find_by(first_name: contact[:first_name], last_name: contact[:last_name], organization_name: contact[:organization])
        if saved_contact.nil?
          saved_contact = Heal::Contact.new
          saved_contact.database_instance = dbi_ccpha
          saved_contact.first_name = contact[:first_name]
          saved_contact.last_name = contact[:last_name]
          saved_contact.organization_name = contact[:organization]

          saved_contact.title = contact[:title] if contact[:title].present?
          saved_contact.email = contact[:email] if contact[:email].present?

          if contact[:heal_city].present?
            cities_array = contact[:heal_city].split(",")
            Range.new(0, cities_array.length - 1).step(2) do |index|
              city_name = cities_array[index].strip
              state_name = cities_array[index+1].strip
              matches = dbi_ccpha.cities.where(name: city_name, state: state_name)
              if matches.count > 1
                contact_cities_errors += 1
                error_messages << "Error: more than one city matches #{city_name}, #{state_name}."
                break
              elsif matches.count == 0
                contact_cities_errors += 1
                error_messages << "Error: no city matches #{city_name}, #{state_name}."
                break
              else
                saved_city = matches.first
                saved_contact.cities << saved_city #associate this city with this contact.
                contact_cities_added += 1
              end
            end
          end

          if saved_contact.save
            contacts_added += 1
          else
            save_errors += 1
            error_messages << saved_contact.errors.inspect
            break
          end

        end

      end
    end

    puts error_messages
    puts "ignore_existing = #{ignore_existing}"
    status_string = "Contacts added: #{contacts_added} / save errors: #{save_errors} / existing contacts: #{existing_contacts}."
    puts status_string

    return status_string

  end
end