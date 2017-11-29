require('rspec')
require('places_you_have_been')

describe("Place") do
  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a place to the list of places") do
      place = Place.new("Barcelona","Spain",2016,"visit Magdalena")
      place.save()
      expect(Place.all()).to(eq([place]))
    end
  end
end
