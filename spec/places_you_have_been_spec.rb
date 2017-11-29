require('rspec')
require('places_you_have_been')

describe("Place") do
  before() do
    Place.clear()
  end

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

  describe(".clear") do
    it("clears all places from the list") do
      place = Place.new("Barcelona","Spain",2016,"visit Magdalena")
      place.save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new place is added") do
      place1 = Place.new("Barcelona","Spain",2016,"visit Magdalena")
      place1.save()
      place2 = Place.new("London","England",2011,"visit Ana")
      place2.save()
      expect(place1.id()).to(eq(1))
      expect(place2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds a place based on its id") do
      place1 = Place.new("Barcelona","Spain",2016,"visit Magdalena")
      place1.save()
      place2 = Place.new("London","England",2011,"visit Ana")
      place2.save()
      expect(Place.find(1)).to(eq(place1))
      expect(Place.find(2)).to(eq(place2))
    end
  end
end
