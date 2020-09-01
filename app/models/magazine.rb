class Magazine
  attr_accessor :name, :category

  # class variable
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Articles.all.select{|author| author.magazine == self}
  end

  # come back to
  def self.find_by_name(name)
    self.all.find(name)
  end

  # instance method article titles should return array of strings of the titles for all articles

  
  # instance method contributing authors returns array of authors who wrote more than 2x 

end
