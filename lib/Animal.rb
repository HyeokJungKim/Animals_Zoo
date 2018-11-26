class Animal
  attr_accessor :weight
  attr_reader :species, :nickname, :zoo

@@animals = []

def initialize (species, weight, nickname,zoo)
  @species = species
  @weight = weight
  @nickname = nickname
  @@animals << self
  @zoo = zoo
end


def self.all
  @@animals
end


def self.find_by_species(species)
  self.all.map do |animal|
if  species == animal.species
      animal.nickname
end
end.compact
end
end
##^^Try solving this method without using ".compact"
