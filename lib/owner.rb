require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets, :mood
  attr_reader :species

  @@owners = []

  def initialize(species)
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    return 'I am a ' + self.species + '.'
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].last.mood = 'happy'
  end

  def play_with_cats
    @pets[:cats].last.mood = 'happy'
  end

  def feed_fish
    @pets[:fishes].last.mood = 'happy'
  end

  def sell_pets
    self.pets.each do |p|
      p.mood = "nervous"
    end

    if pets.empty? == false
      pets.clear
    end

  end

  def list_pets
    return 'I have ' + @pets[:fishes].count.to_s + ' fish, ' + @pets[:dogs].count.to_s + ' dog(s), ' + 'and ' + @pets[:cats].count.to_s + ' cat(s).'
  end

end
