require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places_you_have_been')

get('/') do
  @list = Place.all()
  erb(:list)
end

post('/') do
  city = params["city"]
  country = params["country"]
  year = params["year"]
  notes = params["notes"]
  place = Place.new(city,country,year,notes)
  place.save()
  @list = Place.all()
  erb(:list)
end

get('/places_you_have_been/:id') do
  @place = Place.find(params[:id])
  erb(:place)
end
