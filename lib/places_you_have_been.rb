class Place
  @@list = []
  attr_accessor :city
  attr_accessor :country
  attr_accessor :year
  attr_accessor :notes
  attr_reader :id

  def initialize(city,country,year,notes)
    @city = city
    @country = country
    @year = year
    @notes = notes
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(id)
    place_id = id.to_i()
    @@list.each do |place|
      if place.id == place_id
        return place
      end
    end
  end

end
