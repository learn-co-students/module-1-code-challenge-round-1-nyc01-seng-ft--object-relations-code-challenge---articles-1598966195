class Magazine
  attr_accessor :name, :category

  # class variable
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  # contributors should return array of author instances who wrote for this magazine

  # class method find by name should return the FIRST magazine object that matches

  # instance method article titles should return array of strings of the titles for all articles

  # instance method contributing authors returns array of authors who wrote more than 2x 

end
