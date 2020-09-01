class Magazine
  #covers Magazine#name and Magazine#category
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
  #@ = instance variable
    @name = name
    @category = category
    @@all << self
  end

  def self.all
  #returns an array of all Mag instances
    @@all
  end


end
