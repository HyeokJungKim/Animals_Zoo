class Zoo
attr_accessor :name, :location
@@all = []

def initialize(name,location)
  @name = name
  @location = location
  @@all << self
end

def self.all
@@all
end

def animals
Animal.all.select {|animal| animal.zoo == self}
end
#instance variable all for the zoo on creation of animal gets pushed into Zoo


def animal_species
self.animals.map {|animal| animals.species}.uniq

  #transform array of instances into an array of strings.
  #then only keep uniqu animal species
end


def find_by_species(species)
  self.animals.select {|animal| animal.species == species}
end

def animal_nicknames
  self.animals.map {|animal| animal.nickname}
end
#
def self.find_by_location(location)
self.all.select {|zoo| zoo.location == location}
end
end
#self inside class method = Class
# self inside instance method = instance in this case being Zoo
