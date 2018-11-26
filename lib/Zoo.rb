class Zoo
  attr_reader :name, :location

  @@all = []

  def initialize(zoo_name, location)
    @zoo_name = zoo_name
    @location = location

    @@all << self
  end

  def self.find_by_location(location)
    Zoo.all.select do |zoo|
      zoo.location == location
      #binding.pry
    end
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    (self.animals.collect do |animal|
      animal.species
    end).uniq
  end

  def find_by_species(species)
    self.animals.select do |animal|
      animal.species == species
    end
  end

  def animal_nicknames
    self.animals.collect do |animal|
      animal.nickname
    end
  end

end
