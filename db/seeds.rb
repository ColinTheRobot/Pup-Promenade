# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Boro.delete_all
Neighborhood.delete_all
Sex.delete_all
Size.delete_all
Breed.delete_all
User.delete_all
Walker.delete_all
WalkerProfile.delete_all


queens = Boro.create({name: "Queens"})
bronx = Boro.create({name: "Bronx"})
staten_island = Boro.create({name: "Staten Island"})
brooklyn = Boro.create({name: "Brooklyn"})
manhattan = Boro.create({name: "Manhattan"})

queens_id = Boro.find_by(name: "Queens").id
bronx_id = Boro.find_by(name: "Bronx").id
si_id = Boro.find_by(name: "Staten Island").id
brooklyn_id = Boro.find_by(name: "Brooklyn").id
manhattan_id = Boro.find_by(name: "Manhattan").id

# Northwestern Queens
# http://en.wikipedia.org/wiki/List_of_Queens_neighborhoods
astoria = Neighborhood.create({boro_id: queens_id, name: "Astoria"})
corona = Neighborhood.create({boro_id: queens_id, name: "Corona"})
east_elmhurst = Neighborhood.create({boro_id: queens_id, name: "East Elmhurst"})
elmhurst = Neighborhood.create({boro_id: queens_id, name: "Elmhurst"})
forest_hills = Neighborhood.create({boro_id: queens_id, name: "Forest Hills"})
fresh_pond = Neighborhood.create({boro_id: queens_id, name: "Fresh Pond"})
glendale = Neighborhood.create({boro_id: queens_id, name: "Glendale"})
hunters_point = Neighborhood.create({boro_id: queens_id, name: "Hunters Point"})
jackson_heights = Neighborhood.create({boro_id: queens_id, name: "Jackson Heights"})
lic = Neighborhood.create({boro_id: queens_id, name: "Long Island City"})
maspeth = Neighborhood.create({boro_id: queens_id, name: "Maspeth"})
middle_village = Neighborhood.create({boro_id: queens_id, name: "Middle Village"})
rego_park = Neighborhood.create({boro_id: queens_id, name: "Rego Park"})
ridgewood = Neighborhood.create({boro_id: queens_id, name: "Ridgewood"})
sunnyside = Neighborhood.create({boro_id: queens_id, name: "Sunnyside"})
woodside = Neighborhood.create({boro_id: queens_id, name: "Woodside"})

# Northwest Bronx
# http://en.wikipedia.org/wiki/List_of_Bronx_neighborhoods
riverdale = Neighborhood.create({boro_id: bronx_id, name: "Riverdale"})
kingsbridge = Neighborhood.create({boro_id: bronx_id, name: "Kingsbridge"})
marble_hill = Neighborhood.create({boro_id: bronx_id, name: "Marble Hill"})
norwood = Neighborhood.create({boro_id: bronx_id, name: "Norwood"})
bedford_park = Neighborhood.create({boro_id: bronx_id, name: "Bedford Park"})
fordham = Neighborhood.create({boro_id: bronx_id, name: "Fordham"})
belmont = Neighborhood.create({boro_id: bronx_id, name: "Belmont"})
univ_heights = Neighborhood.create({boro_id: bronx_id, name: "University Heights"})

# Some Staten Island Neighborhoods
# http://en.wikipedia.org/wiki/List_of_Staten_Island_neighborhoods
annadale = Neighborhood.create({boro_id: si_id, name: "Annadale"})
arden_heights = Neighborhood.create({boro_id: si_id, name: "Arden Heights"})
arlington = Neighborhood.create({boro_id: si_id, name: "Arlington"})
arrochar = Neighborhood.create({boro_id: si_id, name: "Arrochar"})
bay_terrace = Neighborhood.create({boro_id: si_id, name: "Bay Terrace"})
bloomfield = Neighborhood.create({boro_id: si_id, name: "Bloomfield"})

# Northwestern Brooklyn
# http://en.wikipedia.org/wiki/List_of_Brooklyn_neighborhoods
brooklyn_heights = Neighborhood.create({boro_id: brooklyn_id, name: "Brooklyn Heights"})
navy_yard = Neighborhood.create({boro_id: brooklyn_id, name: "Brooklyn Navy Yard"})
cadman_plaza = Neighborhood.create({boro_id: brooklyn_id, name: "Cadman Plaza"})
clinton_hill = Neighborhood.create({boro_id: brooklyn_id, name: "Clinton Hill"})
downtown = Neighborhood.create({boro_id: brooklyn_id, name: "Downtown Brooklyn"})
dumbo = Neighborhood.create({boro_id: brooklyn_id, name: "DUMBO"})
fort_greene = Neighborhood.create({boro_id: brooklyn_id, name: "Fort Greene"})
fulton_ferry = Neighborhood.create({boro_id: brooklyn_id, name: "Fulton Ferry"})
prospect_heights = Neighborhood.create({boro_id: brooklyn_id, name: "Prospect Heights"})
vinegar_hill = Neighborhood.create({boro_id: brooklyn_id, name: "Vinegar Hill"})

# Between Midtown and Downtown
# http://en.wikipedia.org/wiki/List_of_Manhattan_neighborhoods
flower_district = Neighborhood.create({boro_id: manhattan_id, name: "Flower District"})
brookdale = Neighborhood.create({boro_id: manhattan_id, name: "Brookdale"})
kips_bay = Neighborhood.create({boro_id: manhattan_id, name: "Kips Bay"})
rose_hill = Neighborhood.create({boro_id: manhattan_id, name: "Rose Hill"})
no_mad = Neighborhood.create({boro_id: manhattan_id, name: "NoMad"})
peter_cooper_village = Neighborhood.create({boro_id: manhattan_id, name: "Peter Cooper Village"})
chelsea = Neighborhood.create({boro_id: manhattan_id, name: "Chelsea"})
flatiron_district = Neighborhood.create({boro_id: manhattan_id, name: "Flatiron District"})
gramercy_park = Neighborhood.create({boro_id: manhattan_id, name: "Gramercy Park"})
stuyv_square = Neighborhood.create({boro_id: manhattan_id, name: "Stuyvesant Square"})
union_square = Neighborhood.create({boro_id: manhattan_id, name: "Union Square"})
stuyv_town = Neighborhood.create({boro_id: manhattan_id, name: "Stuyvesant Town"})
meatpacking_dist = Neighborhood.create({boro_id: manhattan_id, name: "Meatpacking District"})
waterside_plaza = Neighborhood.create({boro_id: manhattan_id, name: "Waterside Plaza"})

# Here are the sex (not gender, Cat(the person, not the pet)!)
female = Sex.create({sex: "Female"})
male = Sex.create({sex: "Male"})

# Here are the dog sizes
small = Size.create({name: "Small"})
medium = Size.create({name: "Medium"})
large = Size.create({name: "Large"})

# Here are the dog breeds
# http://en.wikipedia.org/wiki/List_of_dog_breeds
affenpinscher = Breed.create({name: "Affenpinscher"})
afghan_hound = Breed.create({name: "Afghan Hound"})
afghan_shepherd = Breed.create({name: "Afghan Shepherd"})
aidi = Breed.create({name: "Aidi"})
airedale_terrier = Breed.create({name: "Airedale Terrier"})
akbash = Breed.create({name: "Akbash"})
akita_inu = Breed.create({name: "Akita Inu"})

# Here's an admin account
# TODO delete admin account from file before pushing to github
admin = User.create({first_name: "Admin", email: "admin@admin.com",
                     password: "hello1234", password_confirmation: "hello1234",
                     admin: true})



test_walker = Walker.create({first_name: "Test", last_name: "Walker", email: "walker@test.com",
  password: "hello1234", password_confirmation: "hello1234", boro_id: 1})
walk_profile = WalkerProfile.new(walker_id: test_walker.id)
walk_profile.update(neighborhood_ids: [1, 3])
walk_profile.save

second_walker = Walker.create({first_name: "Second", last_name: "Walker", email: "second@test.com",
  password: "hello1234", password_confirmation: "hello1234", boro_id: 1})
  second_profile = WalkerProfile.new(walker_id: second_walker.id)
  second_profile.update(neighborhood_ids: [1, 2])
  second_profile.save

