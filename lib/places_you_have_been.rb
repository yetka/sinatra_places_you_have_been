class Place
  @@list = []
  attr_accessor :city
  attr_accessor :country
  attr_accessor :year
  attr_accessor :notes

  def initialize(city,county,year,notes)
    @city = city
    @country = country
    @year = year
    @notes = notes
  end

  def self.all()
    @@list
  end

end
